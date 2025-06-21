// HINTS:
// 1. Import express and axios
import express from "express";
import bodyParser from "body-parser";
import axios from "axios";

// 2. Create an express app and set the port number.
const app = express();
const port = 3000;
const API_URL = "https://www.thecocktaildb.com/api/json/v1/1/random.php";
// 3. Use the public folder for static files.
app.use(bodyParser.urlencoded({ extended: true }));
app.use(express.static("./public"));
// 4. When the user goes to the home page it should render the index.ejs file.
app.get("/", async (req, res)=>{
// 5. Use axios to get a random secret and pass it to index.ejs to display the
// secret and the username of the secret.
    // res.render("index.ejs");
    try {
        const response = await axios.get(API_URL + "/random.php");
        var result = response.data;
        var drink = result.drinks[0].strDrink;
        var image = result.drinks[0].strDrinkThumb + "/preview";
        var instructions = result.drinks[0].strInstructions;
        var arrayIngredient = [];
        for (var i=1; i<16; i++){
            var ingr = result.drinks[0]["strIngredient" + i];
            if(ingr != null){
                arrayIngredient.push(ingr);
            }
            
        }
        // res.render("index.ejs", {secret: secret, user: user});
        res.render("index.ejs", {drink: drink, image: image, instructions: instructions, arrayIngredient: arrayIngredient});
    } catch (error) {
        console.log(error.response.data);
        res.status(500);
    }
})

app.get("/random", async (req, res)=>{
    // 5. Use axios to get a random secret and pass it to index.ejs to display the
    // secret and the username of the secret.
        // res.render("index.ejs");
        try {
            const response = await axios.get(API_URL + "/random.php");
            var result = response.data;
            var drink = result.drinks[0].strDrink;
            var image = result.drinks[0].strDrinkThumb + "/preview";
            var instructions = result.drinks[0].strInstructions;
            var arrayIngredient = [];
            for (var i=1; i<16; i++){
                var ingr = result.drinks[0]["strIngredient" + i];
                if(ingr != null){
                    arrayIngredient.push(ingr);
                }
                
            }
            
            // res.render("index.ejs", {secret: secret, user: user});
            res.render("index.ejs", {drink: drink, image: image, instructions: instructions, arrayIngredient: arrayIngredient});
        } catch (error) {
            console.log(error.response.data);
            res.status(500);
        }
    })

    app.get("/about", async (req, res)=>{
        res.render("./about.ejs");
    })

// 6. Listen on your predefined port and start the server.
app.listen(port, () => {
    console.log(`Server is running on port ${port}`);
  });