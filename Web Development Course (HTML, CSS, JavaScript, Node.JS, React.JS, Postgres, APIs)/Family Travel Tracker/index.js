import express from "express";
import bodyParser from "body-parser";
import pg from "pg";

const app = express();
const port = 3000;

const db = new pg.Client({
  user: "postgres",
  host: "localhost",
  database: "world",
  password: "password",
  port: 5432,
});
db.connect();

app.use(bodyParser.urlencoded({ extended: true }));
app.use(express.static("public"));

let currentUserId = 1;

let users = await db.query("SELECT * FROM users");

async function checkVisisted() {
  const result = await db.query("SELECT country_code, users.id, users.color FROM visited_countries_new JOIN users ON visited_countries_new.user_id = users.id");
  let countries = [];
  result.rows.forEach((country) => {
    if (country.id === currentUserId) {
      countries.push(country.country_code);
    }
  });
  return countries;
}
app.get("/", async (req, res) => {
  const countries = await checkVisisted();
  let user = await db.query("SELECT color FROM users WHERE id = $1",[currentUserId]);
  res.render("index.ejs", {
    countries: countries,
    total: countries.length,
    users: users.rows,
    color: user.rows[0].color,
  });
});
app.post("/add", async (req, res) => {
  const input = req.body["country"];

  try {
    const result = await db.query(
      "SELECT country_code FROM countries WHERE LOWER(country_name) LIKE '%' || $1 || '%';",
      [input.toLowerCase()]
    );

    const data = result.rows[0];
    const countryCode = data.country_code;
    try {
      await db.query(
        "INSERT INTO visited_countries_new (country_code, user_id) VALUES ($1, $2)",
        [countryCode, currentUserId]
      );
      res.redirect("/");
    } catch (err) {
      console.log(err);
      let user = await db.query("SELECT color FROM users WHERE id = $1",[currentUserId]);
      const countries = await checkVisisted();
      res.render("index.ejs", { countries: countries, total: countries.length, users: users.rows, color: user.rows[0].color, error: "Country has already been added, try again."});
    }
  } catch (err) {
    console.log(err);
    let user = await db.query("SELECT color FROM users WHERE id = $1",[currentUserId]);
      const countries = await checkVisisted();
      res.render("index.ejs", { countries: countries, total: countries.length, users: users.rows, color: user.rows[0].color, error: "Country name does not exist, try again."});
  }
});
app.post("/user", async (req, res) => {
  if (req.body.user) {
    currentUserId = parseInt(req.body["user"]);
    res.redirect("/");  
  } else {
    res.render("new.ejs");
  }
  
});

app.post("/new", async (req, res) => {
  let newName = req.body["name"];
  let newColor = req.body["color"];
  try {
    let newID = await db.query(
      "INSERT INTO users (name, color) VALUES ($1, $2) RETURNING id",
      [newName, newColor]
    );
    currentUserId = newID.rows[0].id;
    users = await db.query("SELECT * FROM users");
    res.redirect("/");
  } catch (err) {
    console.log(err);
  }
  //Hint: The RETURNING keyword can return the data that was inserted.
  //https://www.postgresql.org/docs/current/dml-returning.html
});

app.listen(port, () => {
  console.log(`Server running on http://localhost:${port}`);
});
