import express from "express";
import bodyParser from "body-parser";
import axios from "axios";
import pg from "pg";

const db = new pg.Client({
  user: "postgres",
  host: "localhost",
  database: "books",
  password: "password",
  port: 5432,  
}
);

db.connect();

async function getItems() {
  const result = await db.query("SELECT * FROM books ORDER BY title ASC");
  return result.rows;
}

const app = express();
const port = 3000;

app.use(express.static("public"));

app.use(bodyParser.urlencoded({ extended: true }));
app.use(bodyParser.json());

// Route to render the main page
app.get("/", async (req, res) => {
  try {
    let items = await getItems();
    res.render("index.ejs", { books: items });
  } catch (error) {
    res.status(500).json({ message: "Error fetching books" });
  }
});

// Route to render the edit page
app.get("/new", (req, res) => {
  res.render("modify.ejs", { heading: "New Book", submit: "Create Book" });
});

app.get("/edit/:id", async (req, res) => {
  try {
    const result = await db.query("SELECT * FROM books WHERE id=$1",[req.params.id]);
    res.render("modify.ejs", {
           heading: "Edit Book",
           submit: "Update Book",
           book: result.rows[0],
         });
  } catch (error) {
    console.log(error);
    res.redirect("/");
  }
});

// Create a new book
app.post("/create", async (req, res) => {
  const title = req.body.title;
  const isbn = req.body.isbn;
  const date = req.body.date;
  const recommend = req.body.recommend;
  const preview = req.body.preview;
  const notes = req.body.notes;
  try {
    const result = await db.query("INSERT INTO books (title, isbn, date, recommend, preview, notes) VALUES ($1, $2, $3, $4, $5, $6)",[title, isbn, date, recommend, preview, notes]);
    res.redirect("/");
  } catch (error) {
    console.log(error);
    res.redirect("/");
  }
});

// Partially update a book
app.post("/update/:id", async (req, res) => {
  console.log("called");
  const title = req.body.title;
  const isbn = req.body.isbn;
  const date = req.body.date;
  const recommend = req.body.recommend;
  const preview = req.body.preview;
  const notes = req.body.notes;
  try {
    const result = await db.query("UPDATE books SET title=$1, isbn=$2, date=$3, recommend=$4, preview=$5, notes=$6 WHERE id=$7",[title, isbn, date, recommend, preview, notes, req.params.id]);
    res.redirect("/");
  } catch (error) {
    console.log(error);
    res.redirect("/");
  }
});

// Delete a book
app.get("/delete/:id", async (req, res) => {
  try {
    const result = await db.query("DELETE FROM books WHERE id=$1",[req.params.id]);
    res.redirect("/");
  } catch (error) {
    console.log(error);
    res.redirect("/");
  }
});

app.listen(port, () => {
  console.log(`Backend server is running on http://localhost:${port}`);
});
