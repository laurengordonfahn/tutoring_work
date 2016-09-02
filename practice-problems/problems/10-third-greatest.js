subl// # Write a method that takes an array of numbers in. Your method should
// # return the third greatest number in the array. You may assume that
// # the array has at least three numbers in it.
// #
// # Difficulty: medium


function get_nums(){
	var num1 = prompt("Give me a number");
	var num2 = window.prompt("Give me a second number");
	var num3 = window.prompt("Give me a third number");
	console.log(num1)
	var nums = new Array(num1, num2, num3);

	return nums
}

function delete_biggest(nums){
	var big1 = nums[0];
	var big1index = 0;

	for(i = 0; i < nums.length; i++){
		if(nums[i] > big1){
			big1 = nums[i];
			big1index = i;
		}
	}
		console.log(big1);
		console.log(big1index);
		console.log(nums);
		nums.splice(big1index, 1);

	console.log("this is delete_biggest nums " + nums);

	return nums
}

function third_greatest(nums){
	// var nums = get_nums();
	var nums = delete_biggest(nums);
	var nums = delete_biggest(nums);

	var big1 = nums[0];
	for(i = 0; i < nums.length; i++){
		if(nums[i] > big1){
			big1 = nums[i];
			big1index = 0;
		}
	}
	console.log("this is the thrid largest number" + big1);
	return big1;

}

console.log(third_greatest([2, 5, 1]));

