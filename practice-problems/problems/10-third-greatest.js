// # Write a method that takes an array of numbers in. Your method should
// # return the third greatest number in the array. You may assume that
// # the array has at least three numbers in it.
// #
// # Difficulty: medium

function third_greatest(nums){
	var big1 = nums[0];
	var big1index = 0;
	for (i=0; i < 2; i ++){
		for (k=0; i <1; i++){
			for (j=0; j < nums.length; i++){
				if(nums[j] > big1){
					big1 = nums[j];
					big1index = j
				}
			}
		nums.splice(big1index);
		}
	return big1
	}
}

// # # These are tests to check that your code is working. After writing
// # # your solution, they should all print true.

puts(
  'third_greatest([5, 3, 7]) == 3: ' +
  (third_greatest([5, 3, 7]) == 3).to_s
)
puts(
  'third_greatest([5, 3, 7, 4]) == 4: ' +
  (third_greatest([5, 3, 7, 4]) == 4).to_s
)
puts(
  'third_greatest([2, 3, 7, 4]) == 3: ' +
  (third_greatest([2, 3, 7, 4]) == 3).to_s
)
