import express from "express";
import ejs from "ejs";
const port = 3000;
const app = express();

app.get("/", (req, res) => {
    const date = new Date();
    var day = date.getDay();
    //console.log(day);
    var day_sel = "a weekday";
    var action = "work hard";
    if(day === 0 || day === 6){
        day_sel = "the weekend";
        action = "have fun";     
    }
    res.render("index.ejs", {day_sel: day_sel, action: action});
  });

app.listen(port, () => {
    console.log(`Listening on port ${port}`);
  });