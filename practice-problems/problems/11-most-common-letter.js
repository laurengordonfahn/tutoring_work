function split_string(string){
	var array_string = string.split("");
	return array_string; 
}

function count_letter(array){
	var alph = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n","o", "p", "q", "r", "s", "t","u", "v", "w", "x", "y", "z"];
	
	var hash = {"a":0, "b":0, "c":0, "d":0, "e":0, "f":0, "g":0, "h":0, "i":0, "j"=>0, "k"=>0, "l"=>0, "m"=>0, "n"=>0,"o"=>0, "p"=>0, "q"=>0, "r"=>0, "s"=>0, "t"=>0,"u"=>0, "v"=>0, "w"=>0, "x"=>0, "y"=>0, "z"=>0};

	for(i = 0; i < array.length; i++){
		for(j = 0; i < alph.length; j++){
			if(array[i] == alph[j]){
				var hash_value = hash[array[i]];
				hash_value = hash_value + 1;
				hash[array[i]] = hash_value;
			}

		}	
	}
	return hash
}

function popular_letter(hash){
	var most_common_letter = null;
	var alph = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n","o", "p", "q", "r", "s", "t","u", "v", "w", "x", "y", "z"];

	for(i = 0; i < alph.length; i ++){
		for(j=1; j < (alph.length -1); j++){
			if (hash[i] > hash[j]){
				most_common_letter = i;
			}
			else{

				most_common_letter = j;
			}
		}
	}
	var result = [most_common_letter, hash[most_common_letter]];
	return result;

}
function most_common_letter(string){
	var array = split_string(string);
	var hash = count_letter(array);
	return popular_letter(hash);

}

console.log(
  'most_common_letter("abca") == ["a", 2]: ' +
  (most_common_letter('abca') == ['a', 2])
);
console.log(
  'most_common_letter("abbab") == ["b", 3]: ' +
  (most_common_letter('abbab') == ['b', 3])
);