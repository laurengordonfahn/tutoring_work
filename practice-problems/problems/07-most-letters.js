// # Write a method that takes a string in and returns true if the letter
// # "z" appears within three letters **after** an "a". You may assume
// # that the string contains only lowercase letters.
// #
// # Difficulty: medium.

function nearby_az(string){
	string = string.toLowerCase();
	var i = 0;
	flag = true;
	while(i < string.length){
		if(string[i] == "a"){ 
			if (((i + 3) < string.length) && (string[i+3] == "z")){
				console.log(i)
				return true
			}
			else if(((i + 2) < string.length) && (string[i +2] == "z")){
				console.log(i)
				return true;
			}
		
			else if(((i + 1) < string.length) && (string[i +1] == "z")){
				console.log(i)
				return true;
			}
			else{
				flag = false;
			}
		}
		else{
			flag = false;
		}
		
		i ++
	}
	
	return flag;
	
	
}


console.log('nearby_az("baz") == true: ' + (nearby_az('baz') == true));
console.log('nearby_az("abz") == true: ' + (nearby_az('abz') == true));
console.log('nearby_az("abcz") == true: ' + (nearby_az('abcz') == true));
console.log('nearby_az("a") == false: ' + (nearby_az('a') == false));
console.log('nearby_az("z") == false: ' + (nearby_az('z') == false));
console.log('nearby_az("za") == false: ' + (nearby_az('za') == false));
