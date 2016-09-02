// # Write a method that will take a string as input, and return a new
// # string with the same letters in reverse order.
// #
// # Don't use String's reverse method; that would be too simple.
// #
// # Difficulty: easy.

function reverse(string){
	new_string = "";
	
	for(i= (string.length -1); i >= 0 ; i--){
		new_string = new_string + string[i]
	}
	return new_string

}

console.log(
  'reverse("abc") == "cba": ' + (reverse("abc") == "cba")
)
console.log(
  'reverse("a") == "a": ' + (reverse("a") == "a")
)
console.log(
  'reverse("") == "": ' + (reverse("") == "")
)
