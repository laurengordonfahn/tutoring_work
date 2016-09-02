// # Write a method that takes an array of numbers. If a pair of numbers
// # in the array sums to zero, return the positions of those two numbers.
// # If no pair of numbers sums to zero, return `nil`.
// #
// # Difficulty: medium.

function two_sum(array){
	var new_array =[];
	for(i = 0; i < array.length; i++){
		

		for(j = 1; j < array.length; j++){
		
			if((array[i] + array[j]) == 0){
				new_array.push(i);
				new_array.push(j);
				
				console.log(new_array);
				return new_array;
			}
			
		}
	}
	
	return null;

}



console.log(
  'two_sum([1, 3, 5, -3]) == [1, 3]: ' + (two_sum([1, 3, 5, -3]) == [1, 3])
);
console.log(
  'two_sum([1, 3, 5]) == null: ' + (two_sum([1, 3, 5]) == null)
);
