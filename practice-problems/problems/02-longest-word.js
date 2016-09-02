// # Write a method that takes in a string. Return the longest word in
// # the string. You may assume that the string contains only letters and
// # spaces.
// #
// # You may use the String `split` method to aid you in your quest.
// #
// # Difficulty: easy.


function longest_word(string){
	var split_string = string.split(" ");
	var longest_word = ""
	for(i = 0; i < split_string.length; i ++){
		if(longest_word.length < split_string[i].length){
			longest_word = split_string[i];	
		}
	}
	
	return longest_word;
}


console.log(
  'longest_word("short longest") == "longest": ' +
  (longest_word('short longest') == 'longest')
);
console.log(
  'longest_word("one") == "one": ' +
  (longest_word('one') == 'one')
);
console.log(
  'longest_word("abc def abcde") == "abcde": ' +
  (longest_word('abc def abcde') == 'abcde')
);
