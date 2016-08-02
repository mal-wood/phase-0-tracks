// Split the phrase that is entered
// Reverse that array of letters
// Join the phrase back together 

function reverse(string) {
	return string.split('').reverse().join('');
}

var reverse_result = reverse("hello")

if (5 > 4){
	console.log(reverse_result);
}

console.log(reverse("september"))