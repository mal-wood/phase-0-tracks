// // take array of words
// // calculate length of each word in the array 
// // return the word that is the longest

// var longestWord = function(array){
// 	var winner_length = 0;
// 	var winner
// 		for (var i = 0; i < array.length; i++) {
// 			if (array[i].length > winner_length){
// 				winner_length = array[i].length;
// 				winner = array[i];
// 			}
// 		}   
// 	console.log(winner)
// }

// // driver code to test longestWord function 

// longestWord(["bird", "house", "hat", "platypus","fish"])
// longestWord(["everybody", "clap", "your", "hands"])
// longestWord(["where", "is", "the", "longest", "word"])

/////////////////////////////////////////////////////////////

// // write method that accepts two hashes
// // if a key value pair in one object mathches a key value pair in another, return true 
// // if a key value pair in one object does not match any in the other, return false

var keyvalueMatch = function(hash_one, hash_two){
	for (var label in hash_one){
		for (var label_two in hash_two) {
			if (hash_one[label] === hash_two[label_two]){
				return true}
				
		}
	}
}

var person_one = {name: "John", age: 33, hometown: "Austin", favfood: "Italian"};
var person_two = {name: "Maya", age: 20, hometown: "Austin", favfood: "Italian"};

keyvalueMatch(person_one, person_two)

/////////////////////////////////////////////////////////////


// write a function that takes an integer
// generate an array that contains that many strings of random words
// words should have min of 1 characters and max of 10 

// var randomData = function(integer) {
//     var array_random = [];
//     var possible = "abcdefghijklmnopqrstuvwxyz";
//     	for(var x = 0; x < integer; x++){
//     		var text = "";
//     		var word_length = Math.floor(Math.random() * 10) + 1 
//     			for(var i = 0; i < word_length; i++) {
//     	 		text += possible.charAt(Math.random() * possible.length)
//     		}
//     	 array_random[x]=text
//     }
//     console.log(array_random)
// }

// for(x = 0; x < 10; x++) {	
// 	var result = randomData(3)
// 	longestWord(result)
// }