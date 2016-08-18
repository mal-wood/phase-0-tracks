var paragraph = document.createElement("p");
var Ready = document.createTextNode(" You're ready to go!");
paragraph.style.fontSize = "25px";

function addBorder (event) {
	event.target.style.border = "5px dotted black";
}

function textSuprise(event) {
		paragraph.appendChild(Ready);
		document.body.appendChild(paragraph);
}

var Bootcamp = document.getElementById("Boot");
Bootcamp.addEventListener("click",addBorder);

var Food = document.getElementById("Food");
Food.addEventListener("mouseover", textSuprise);