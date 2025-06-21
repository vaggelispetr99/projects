import express from "express";
import bodyParser from "body-parser";
import pg from "pg";

const db = new pg.Client({
  user: "postgres",
  host: "localhost",
  database: "permalist",
  password: "password",
  port: 5432,  
}
);

db.connect();

async function getItems() {
  const result = await db.query("SELECT * FROM items ORDER BY title ASC");
  return result.rows;
  
}

const app = express();
const port = 3000;

app.use(bodyParser.urlencoded({ extended: true }));
app.use(express.static("public"));

// let items = [
//   { id: 1, title: "Buy milk" },
//   { id: 2, title: "Finish homework" },
// ];

let items = await getItems();
console.log(items);

app.get("/", (req, res) => {
  res.render("index.ejs", {
    listTitle: "Today",
    listItems: items,
  });
});

app.post("/add", async (req, res) => {
  const item = req.body.newItem;
  try {
    const result = await db.query("INSERT INTO items (title) VALUES ($1)",[item]);
    items = await getItems();
    res.redirect("/");
  } catch (error) {
    console.log(error);
    res.redirect("/");
  }
  
});

app.post("/edit", async (req, res) => {
  const itemUpdateTiltle = req.body.updatedItemTitle;
  const itemUpdateId = req.body.updatedItemId;
  try {
    console.log(req.body);
    const result = await db.query("UPDATE items SET title=$1 WHERE id=$2",[itemUpdateTiltle, itemUpdateId]);
    items = await getItems();
    res.redirect("/");
  } catch (error) {
    console.log(error);
    res.redirect("/");
  }
  
});

app.post("/delete", async (req, res) => {
  const itemDelete = req.body.deleteItemId;
  try {
    const result = await db.query("DELETE FROM items WHERE id=$1",[itemDelete]);
    items = await getItems();
    res.redirect("/");
  } catch (error) {
    console.log(error);
    res.redirect("/");
  }
  
});

app.listen(port, () => {
  console.log(`Server running on port ${port}`);
});
