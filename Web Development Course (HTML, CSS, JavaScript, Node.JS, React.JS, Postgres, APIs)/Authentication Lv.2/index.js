import express from "express";
import bodyParser from "body-parser";
import pg from "pg";
import bcrypt from "bcrypt";

const db = new pg.Client({
  user: "postgres",
  host: "localhost",
  database: "secrets",
  password: "password",
  port: 5432,  
}
);

db.connect();

const app = express();
const port = 3000;
const saltRounds = 10;

app.use(bodyParser.urlencoded({ extended: true }));
app.use(express.static("public"));

app.get("/", (req, res) => {
  res.render("./home.ejs");
});

app.get("/login", (req, res) => {
  res.render("./login.ejs");
});

app.get("/register", (req, res) => {
  res.render("./register.ejs");
});

app.post("/register", async (req, res) => {
  console.log("called");
  const email = req.body.username;
  const password = req.body.password;
  
    bcrypt.hash(password, saltRounds, async (err, hash)=>{
      if (err) {
        console.log(err);
      } else {
        try {
          const result = await db.query("INSERT INTO users (email, password) VALUES ($1, $2)",[email, hash]);
          res.render("./secrets.ejs");
        } catch (error) {
          console.log(error);
          // res.redirect("/register");
          res.send('<script>alert("Email already exists! Try logging in!"); window.location.href = "/register"; </script>');
        }
      }
    });
});

app.post("/login", async (req, res) => {
  const email = req.body.username;
  const password = req.body.password;
  try {
    const result = await db.query("SELECT * FROM users WHERE email=$1",[email]);
    if (result.rows.length !== 0) {
      const user =  result.rows[0];
      bcrypt.compare(password, user.password, (err, result) => {
        if (err) {
          console.log(err);
        } else {
          if (result){
            res.render("./secrets.ejs");
          } else {
            res.send('<script>alert("Invalid password!"); window.location.href = "/login"; </script>');
          }
        }
      }); 
    } else {
      res.send('<script>alert("User not found!"); window.location.href = "/login"; </script>');
      // res.redirect("/login");
    }   
  } catch (error) {
    console.log(error);
    res.redirect("/login");
  }
});

app.listen(port, () => {
  console.log(`Server running on port ${port}`);
});
