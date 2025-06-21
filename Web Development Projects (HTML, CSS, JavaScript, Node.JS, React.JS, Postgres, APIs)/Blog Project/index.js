import express from "express";
import { dirname } from "path";
import { fileURLToPath } from "url";
import bodyParser  from "body-parser";

const __dirname = dirname(fileURLToPath(import.meta.url));


const app = express();
const port = 3000;
var contentList = [];
var titleList = [];
app.use('/public', express.static('./public', {
  setHeaders: (res, path, stat) => {
      if (path.endsWith('.js')) {
          res.set('Content-Type', 'application/javascript');
      }
  }
}));
app.use(bodyParser.urlencoded({extended: true}));

app.get("/", (req, res) => {
  res.render("index.ejs", {titleList, contentList});
});

app.get("/create", (req, res) => {
  res.render("create.ejs");    
});

app.get("/about", (req, res) => {
  res.render("about.ejs");    
});

app.post("/newpost", (req, res) => {
  titleList.push(req.body["title"]);
  contentList.push(req.body["content"]);
  console.log(titleList);
  console.log(contentList);
  res.redirect("/"); 
});

app.post("/deletepost", (req, res) => {
  var keys = Object.keys(req.body);
  console.log(keys[0]);
  var lastChar = keys[0].charAt(keys[0].length - 1);
  // Convert the last character to a number
  var idsel = parseInt(lastChar, 10);
  console.log(idsel);
  titleList.splice(idsel, 1); // Removes one element at the specified index
  contentList.splice(idsel, 1); // Removes one element at the specified index
  res.redirect("/"); 
});

app.post("/updatepost", (req, res) => {
  var keys = Object.keys(req.body);
  console.log(keys[0]);
  var lastChar = keys[0].charAt(keys[0].length - 1);
  // Convert the last character to a number
  var idsel = parseInt(lastChar, 10);
  console.log(idsel);
  titleList[idsel] = req.body[keys[0]];
  contentList[idsel] = req.body[keys[1]];
  res.redirect("/"); 
});

app.post("/cancel", (req, res) => {
  res.redirect("/"); 
});

app.listen(port, () => {
  console.log(`Listening on port ${port}`);
});

export { titleList, contentList };