document.querySelector("input").click();
document.querySelector("ul").lastElementChild.innerHTML = "Vagg";
document.querySelector("li a").style.color = "purple";
document.getElementsByClassName("list")[1].style.color = "blue";
document.getElementsByTagName("li")[2].style.color = "green";
document.getElementById("temp").style.fontSize = "10rem";
document.querySelector("button").style.backgroundColor = "yellow";
document.querySelector("button").classList.add("bigFont");
document.querySelector("button").classList.remove("bigFont");
document.querySelector("button").classList.toggle("bigFont");
//document.querySelector("button").classList.toggle("bigFont");
document.getElementById("temp").innerHTML = "Hello There";
document.getElementsByClassName("list")[1].innerHTML = "<i>Emphasis</i>";
document.querySelector("button").textContent = "Click Me Now";
document.querySelector("a").attributes;
document.querySelector("a").getAttribute("href");
document.querySelector("a").setAttribute("href","https://chat.openai.com/");