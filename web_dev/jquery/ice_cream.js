
$(document).ready(function() {

	// Add animation for when page initially loads
	$("#first_flavor").hide(1000).show(1000)
	$("#third_flavor").hide(1000).show(1000)
	$("#fifth_flavor").hide(1000).show(1000)
	$("#seventh_flavor").hide(1000).show(1000)
	$("#ninth_flavor").hide(1000).show(1000)

	$("h1").hover(function(){
    $("h1").css("font-size", "60px");
	});


	// Add hover functionality for flavors
////

	$("#first_flavor").hover(function(){
		$("#first_flavor").css("background-color", "pink");
	},
		function(){
			$("#first_flavor").css("background-color", "#334D5C");
	}
	);

////

	$("#second_flavor").hover(function(){
		$("#second_flavor").css("background-color", "pink");
	},
		function(){
			$("#second_flavor").css("background-color", "#45B29D");
	}
	);

////
	
	$("#third_flavor").hover(function(){
		$("#third_flavor").css("background-color", "pink");
	},
		function(){
			$("#third_flavor").css("background-color", "#EFC94C");
	}
	);

////
	
	$("#fourth_flavor").hover(function(){
		$("#fourth_flavor").css("background-color", "pink");
	},
		function(){
			$("#fourth_flavor").css("background-color", "#E27A3F");
	}
	);

////
	
	$("#fifth_flavor").hover(function(){
		$("#fifth_flavor").css("background-color", "pink");
	},
		function(){
			$("#fifth_flavor").css("background-color", "#DF5A49");
	}
	);

////

	$("#sixth_flavor").hover(function(){
		$("#sixth_flavor").css("background-color", "pink");
	},
		function(){
			$("#sixth_flavor").css("background-color", "#ACEBAE");
	}
	);

////

	$("#seventh_flavor").hover(function(){
		$("#seventh_flavor").css("background-color", "pink");
	},
		function(){
			$("#seventh_flavor").css("background-color", "#FFFF9D");
	}
	);

////
	
	$("#eigth_flavor").hover(function(){
		$("#eigth_flavor").css("background-color", "pink");
	},
		function(){
			$("#eigth_flavor").css("background-color", "#C9DE55");
	}
	);

////
	
	$("#ninth_flavor").hover(function(){
		$("#ninth_flavor").css("background-color", "pink");
	},
		function(){
			$("#ninth_flavor").css("background-color", "#677E52");
	}
	);

});