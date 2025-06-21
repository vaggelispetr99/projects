import express from "express";

const app = express();
const port = 3000;

app.use((req, res, next) => {
  console.log("Request Method: " + req.method);
  next();
});

app.use(urlDisplay);

app.get("/", (req, res) => {
  res.send("Hello");
});

app.listen(port, () => {
  console.log(`Listening on port ${port}`);
});

function urlDisplay(req, res, next) {
  console.log("URL: " + req.url);
  next();
}