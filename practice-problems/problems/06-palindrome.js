// # Write a method that takes a string and returns true if it is a
// # palindrome. A palindrome is a string that is the same whether written
// # backward or forward. Assume that there are no spaces; only lowercase
// # letters will be given.
// #
// # Difficulty: easy.

function palindrome(string){
	
	if(string.length <= 1){
		return true;
	}
	else{
		var i = 0;
		var flag = false;
		while(i < string.length){
			if(string[i] == string[(string.length) - 1 - i]){
				flag = true;
			}
			else{
				return flag;
			}

			i++
		}
	}
	return flag;
}


console.log('palindrome("abc") == false: ' + (palindrome('abc') == false));
console.log('palindrome("abcba") == true: ' + (palindrome('abcba') == true));
console.log('palindrome("z") == true: ' + (palindrome('z') == true));
