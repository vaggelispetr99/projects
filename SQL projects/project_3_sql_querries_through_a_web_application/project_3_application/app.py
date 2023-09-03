#   SXDB_PROJECT_3
#      
#   MELH OMADAS:
#
#   1. CHRISTOFOROS VASILAKIS - 7110 1321 00201
#   2. EVAGGELOS PETROPOYLOS  - 7110 1321 00213
#   3. GEORGIOS LEOUSIS       - 7110 1321 00208  

import settings as setMod
import sys,os
sys.path.append(os.path.join(os.path.split(os.path.abspath(__file__))[0], 'lib'))
import pymysql as db

def connection():
    ''' Use this function to create your connections '''
    con = db.connect (

        host = setMod.mysql_host, 
        user = setMod.mysql_user, 
        password = setMod.mysql_passwd, 
        database = setMod.mysql_schema
    )

    return con

def findAirlinebyAge(x, y):

    con=connection()
    cur=con.cursor()
    query = """
        select
	        rln.name,
	        count(distinct p.id),
	        count(distinct(rha.airplanes_id))
        from
	        airlines rln,
            airplanes rpl,
            airlines_has_airplanes rha,
            flights fl,
            passengers p,
            flights_has_passengers fhp
        where
	        rln.id = rha.airlines_id and
            rha.airplanes_id = rpl.id and
            rpl.id = fl.airplanes_id and
            fl.id = fhp.flights_id and
            fhp.passengers_id = p.id and
            (2022 - p.year_of_birth) < """ + str(x) + """ and
            (2022 - p.year_of_birth) > """ + str(y) + """
        group by rln.id
        order by count(distinct p.id) desc
        ;
    """
    cur.execute(query)
    result = cur.fetchall()
    
    con.close()
    
    return [("airline_name","num_of_passengers", "num_of_aircrafts"), result[0]]

def findAirportVisitors(x, a, b):
    
    con=connection()
    cur=con.cursor()
    
    query = """
        select distinct rpt.name, count(distinct fhp.passengers_id)
        from
	        flights fl,
            flights_has_passengers fhp,
            routes rt,
            airlines rln,
            airports rpt
        where
            fhp.flights_id = fl.id and
            fl.routes_id = rt.id and
            #(rt.source_id = rpt.id or
            rt.destination_id = rpt.id and
            rt.airlines_id = rln.id and
            fl.date >= """ + "'" + a + "'" + """ and
            fl.date <= """ + "'" + b + "'" + """ and
            rln.name = """ + "'" + x + "'" + """
        group by rpt.id
        order by count(distinct fhp.passengers_id) desc
        ;
    """
    cur.execute(query)
    result = cur.fetchall()
    
    con.close()
    
    return [("aiport_name", "number_of_visitors"), *result]

def findFlights(x, a, b):

    con=connection()
    cur=con.cursor()
    
    query = """
        select
            distinct fl.id,
            rln.alias,
            rpt2.name,
            rpl.model
        from
	        flights fl,
            routes rt,
            airports rpt1, airports rpt2,
            airlines rln,
            airlines_has_airplanes rhr,
            airplanes rpl
        where
	        fl.routes_id = rt.id and
            rt.source_id = rpt1.id and
            rt.destination_id = rpt2.id and
            rt.airlines_id = rln.id and
            rln.id = rhr.airlines_id and
            rhr.airplanes_id = rpl.id and
            rln.active = 'Y' and
            rpt1.city = """ + "'" + a + "'" + """ and
            rpt2.city = """ + "'" + b + "'" + """ and
            fl.date =   """ + "'" + x + "'" + """
        ;
    """
    
    cur.execute(query)
    result = cur.fetchall()
    
    con.close()
    
    return [("flight_id", "alt_name", "dest_name", "aircraft_model"), *result]
    

def findLargestAirlines(N):

    con=connection()
    cur=con.cursor()
    
    query = """
        select
	        rln.name,
	        rln.id,
            count(distinct rhr.airplanes_id),
            count(distinct fl.id)
        from
	        airlines rln,
            flights fl,
	        airlines_has_airplanes rhr,
	        routes rt
            #airplanes rpl
        where
            rln.id = rhr.airlines_id and
            rt.airlines_id = rln.id and
            fl.routes_id = rt.id
            #rhr.airplanes_id = rpl.id and
            #fl.airplanes_id = rpl.id
        group by rln.id
        order by count(distinct fl.id) desc
        ;
    """
    
    cur.execute(query)
    result = cur.fetchall()
    sortResult = result[:int(N)]
    
    con.close()
    
    return [("name", "id", "num_of_aircrafts", "num_of_flights"), *sortResult]
    
def insertNewRoute(x, y):

    con=connection()
    cur=con.cursor()
    
    destQuery = """
    
        select rpt.id
        from airports rpt
        where rpt.id not in (

	        select rpt1.id
            from
		        airlines rln,
		        routes rt,
		        airports rpt1,
		        airports rpt2
            where
		        rln.alias = """ + "'" + x + "'" + """ and
		        rln.id = rt.airlines_id and
		        rt.source_id = rpt2.id and
		        rpt2.name = """ + "'" + y + "'" + """ and
		        rpt1.id = rt.destination_id
        )
        ;
    """
    cur.execute(destQuery)
    destRpt = cur.fetchall()

    sourceIDQuery = """
    
        select rpt.id
        from airports rpt
        where rpt.name = """ + "'" + y + "'" + """
        ;    
    """
    cur.execute(sourceIDQuery)
    sourceID = cur.fetchall()
    
    rlnIDQuery = """

        select rln.id
        from airlines rln
        where rln.alias = """ + "'" + x + "'" + """
        ;
    """
    cur.execute(rlnIDQuery)
    rlnID = cur.fetchall()
    
    inTuple = ("1289", rlnID[0][0], sourceID[0][0], destRpt[0][0])
    
    if destRpt:
        insertionQuery = """
            insert into routes
            values """ + str(inTuple) + """
            ;
        """
        cur.execute(insertionQuery)
        con.commit()

        outTuple = (*inTuple, "OK")
        
        con.close()
        print("OK")
        return [("Route ID", "Airline ID", "Source Airport ID", "Destination Airport ID", "Status"), outTuple]

    else:
        con.close()
        print("Airline Capacity Full!")
        return([("Status: ", "Airline Capacity Full!")])


