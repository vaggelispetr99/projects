var buttonColours = ["red", "blue", "green", "yellow"];
var gamePattern = [];
var userClickedPattern = [];
var level = 0;

$(".btn").click(function(){
    var userChosenColour = $(this).attr("id");
    userClickedPattern.push(userChosenColour);
    playSound(userChosenColour);
    animatePress(userChosenColour);
    checkAnswer(userClickedPattern.length-1);
});

$(document).keypress(function(){
    if(level === 0){
        $("#level-title").text("Level " + level);
        nextSequence();    
    }   
});

function startOver(){
    level = 0;
    gamePattern = [];
}

function checkAnswer(currentLevel){
        if(userClickedPattern[currentLevel] === gamePattern[currentLevel]){
            console.log("success");
        } else {
            console.log("wrong");
            playSound("wrong");
            $("body").addClass("game-over");
            setTimeout(function(){
                $("body").removeClass("game-over");
            },200);
            $("#level-title").text("Game Over, Press Any Key to Restart");
            startOver();
        }
        if(level === currentLevel+1){
            setTimeout(function(){
                nextSequence();
            },1000);
        }
}

function nextSequence(){
    userClickedPattern = [];
    level++;
    $("#level-title").text("Level " + level);
    var randomNumber = Math.floor(Math.random()*4);
    var randomChosenColour = buttonColours[randomNumber];
    var randomChosenId = "#" + randomChosenColour;
    $(randomChosenId).fadeIn(100).fadeOut(100).fadeIn(100);
    playSound(randomChosenColour);
    gamePattern.push(randomChosenColour);
}

function playSound(colour){
    var soundPath = "./sounds/" + colour + ".mp3";
    var sound = new Audio(soundPath);
    sound.play();
}

function animatePress(currentColour){
    $("#" + currentColour).addClass("pressed");
    setTimeout(function(){
        $("#" + currentColour).removeClass("pressed");
    },100); 
}

