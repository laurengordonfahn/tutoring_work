// Write a method that takes a string and returns the number of vowels
// # in the string. You may assume that all the letters are lower cased.
// # You can treat "y" as a consonant.

// # Difficulty: easy.
function count_vowels(string){

	string = string.toLowerCase();
	
	var vowels = ["a", "e", "i", "o", "u"];
	count = 0;

	for(i = 0; i < string.length; i ++){
		for(j = 0; j <vowels.length; j ++){
			if(string[i] == vowels[j]){
				count = count + 1

			}
		}
	}
	

	return count
}




console.log('count_vowels("abcd") == 1: ' + (count_vowels('abcd') == 1));
console.log('count_vowels("color") == 2: ' + (count_vowels('color') == 2));
console.log('count_vowels("colour") == 3: ' + (count_vowels('colour') == 3));
console.log('count_vowels("cecilia") == 4: ' + (count_vowels('cecilia') == 4));
