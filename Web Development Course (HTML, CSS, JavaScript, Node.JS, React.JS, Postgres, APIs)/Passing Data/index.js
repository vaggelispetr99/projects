import express from "express";
import bodyParser from "body-parser";

const app = express();
const port = 3000;

app.use(bodyParser.urlencoded({ extended: true }));

app.get("/", (req, res) => {
  var h1Tag = "<h1>Type your Name and Surname and Click ok</h1>";
  res.render("index.ejs", {h1Tag: h1Tag});
});

app.post("/submit", (req, res) => {
  var temp = "hello";
  var lettersNum = req.body["fName"] + req.body["lName"];
  var h1TagNew = `<h1>The number of chars in you name is ${lettersNum.length}</h1>`;
  console.log(".............");
  console.log(res.locals);
  console.log(".............");
  res.render("index.ejs", {h1Tag: h1TagNew});
});

app.listen(port, () => {
  console.log(`Server running on port ${port}`);
});
