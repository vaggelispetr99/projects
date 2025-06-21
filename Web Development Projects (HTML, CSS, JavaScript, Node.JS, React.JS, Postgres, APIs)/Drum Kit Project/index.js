
var buttons = document.querySelectorAll(".drum");
for(var i=0; i<buttons.length; i++){
    buttons[i].addEventListener("click", function(){
        var innerText = this.innerHTML;
        sounds(innerText);
        btnPress(innerText);

    })

}

/*document.addEventListener("keypress", eventHandle);

function eventHandle(event){
    var evt = event.key;
    sounds(evt);
    btnPress(evt);
}*/ 
//alternative way

document.addEventListener("keypress", function(event){
    var evt = event.key;
    sounds(evt);
    btnPress(evt);    
});



function sounds(key){
    switch (key) {
        case "w":
            var tom1 = new Audio("./sounds/tom-1.mp3");
            tom1.play();
            break;
        case "a":
            var tom2 = new Audio("./sounds/tom-2.mp3");
            tom2.play();
            break;                
        case "s":
            var tom3 = new Audio("./sounds/tom-3.mp3");
            tom3.play();
            break;
        case "d":
            var tom4 = new Audio("./sounds/tom-4.mp3");
            tom4.play();
            break;
        case "j":
            var crash = new Audio("./sounds/crash.mp3");
            crash.play();
            break;   
        case "k":
            var kick_bass = new Audio("./sounds/kick-bass.mp3");
            kick_bass.play();
            break;
        case "l":
            var snare = new Audio("./sounds/snare.mp3");
            snare.play();
            break;          
        default:
            break;
    }
}

function btnPress(key){
    switch (key) {
        case "w":
            var classBtn = "." + key;
            var btnSelect = document.querySelector(classBtn);
            btnSelect.classList.add("pressed");
            setTimeout(function(){
                btnSelect.classList.remove("pressed")
            }, 100)
            break;
        case "a":
            var classBtn = "." + key;
            var btnSelect = document.querySelector(classBtn);
            btnSelect.classList.add("pressed");
            setTimeout(function(){
                btnSelect.classList.remove("pressed")
            }, 100)
            break;                
        case "s":
            var classBtn = "." + key;
            var btnSelect = document.querySelector(classBtn);
            btnSelect.classList.add("pressed");
            setTimeout(function(){
                btnSelect.classList.remove("pressed")
            }, 100)
            break;
        case "d":
            var classBtn = "." + key;
            var btnSelect = document.querySelector(classBtn);
            btnSelect.classList.add("pressed");
            setTimeout(function(){
                btnSelect.classList.remove("pressed")
            }, 100)
            break;
        case "j":
            var classBtn = "." + key;
            var btnSelect = document.querySelector(classBtn);
            btnSelect.classList.add("pressed");
            setTimeout(function(){
                btnSelect.classList.remove("pressed")
            }, 100)
            break;   
        case "k":
            var classBtn = "." + key;
            var btnSelect = document.querySelector(classBtn);
            btnSelect.classList.add("pressed");
            setTimeout(function(){
                btnSelect.classList.remove("pressed")
            }, 100)
            break;
        case "l":
            var classBtn = "." + key;
            var btnSelect = document.querySelector(classBtn);
            btnSelect.classList.add("pressed");
            setTimeout(function(){
                btnSelect.classList.remove("pressed")
            }, 100)
            break;          
        default:
            break;
    }    
}