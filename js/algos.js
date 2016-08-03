// take array of words
// calculate length of each word in the array 
// return the word that is the longest

var longestWord = function(array){
for (var i = 0; i < array.length; i++) {
		var winner = 0;
		var longest_word;
		if (array[i].length > winner){
			var winner = array[i].length
			var longest_word = array[i]
			console.log(longest_word)
		}
		
	}   
}

longestWord(["bird","hat","pennsylvania"]) //