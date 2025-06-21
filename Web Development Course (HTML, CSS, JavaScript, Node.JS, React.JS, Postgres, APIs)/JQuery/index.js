$("h1").css("color", "red");
//jQuery("h1").css("color", "red");

//$(document).ready(function(){
//    $("h1").css("color", "red");    
//})
// when the script tags are placed inside the head section
var print_screen = $("h1").css("color");
console.log(print_screen);
$("h1").addClass("big-title margin-50");
//$("h1").removeClass("big-title");
var print_screen_2 = $("h1").hasClass("margin-50");
console.log(print_screen_2);
$("h1").text("I am Vagg");
$("button").html("<em>who are you?</em>");
console.log($("a").attr("href"));
$("a").attr("href", "https://www.wordreference.com/engr");
$("h1").click(function(){
    $("h1").css("color", "purple");
});
$("button").click(function(){
    $("h1").css("color", "yellow");
});
$("input").keypress(function(event){
    console.log(event.key);
});

$(document).keypress(function(event){
    $("h1").text(event.key);
})

//alternative
//$("body").keypress(function(event){
//    $("h1").text(event.key);
//})

$("h1").on("mouseover", function(){
    $("h1").css("color", "green");
});
$("h1").before("<button>New</button>");
$("h1").after("<button>New</button>");
$("h1").prepend("<button>New</button>");
$("h1").append("<button>New</button>");
$("#special").remove();
$("#new").text("Hello");
$(document).keypress(function(event){
    if(event.key === "a"){
        //$("#new").hide();
        //$("#new").show();
        $("#new").toggle();
    } else if(event.key === "s"){
        //$("h2").fadeOut();
        //$("h2").fadeIn();
        $("h2").fadeToggle();
    } else if(event.key === "d"){
        //$("h3").slideUp();
        //$("h3").slideDown();
        $("h3").slideToggle();   
    }       
});
$("h1").animate({opacity: 0.5}); //only attributes what it has as value numbers
$("a").on("mouseover", function(){
    $("a").slideUp().slideDown().animate({opacity: 0.5});
})