// # Write a method that takes in an integer `num` and returns the sum of
// # all integers between zero and num, up to and including `num`.
// #
// # Difficulty: easy.

function sum_nums(num){
	sum = 0
	for(i = 0; i <= num; i++){
		sum = sum + i;
	}
	return sum;
} 


console.log('sum_nums(1) == 1: ' + (sum_nums(1) == 1));
console.log('sum_nums(2) == 3: ' + (sum_nums(2) == 3));
console.log('sum_nums(3) == 6: ' + (sum_nums(3) == 6));
console.log('sum_nums(4) == 10: ' + (sum_nums(4) == 10));
console.log('sum_nums(5) == 15: ' + (sum_nums(5) == 15));
