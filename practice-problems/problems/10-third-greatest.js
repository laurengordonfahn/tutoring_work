// # Write a method that takes an array of numbers in. Your method should
// # return the third greatest number in the array. You may assume that
// # the array has at least three numbers in it.
// #
// # Difficulty: medium


function get_nums(){
	var num1 = window.prompt("Give me a number");
	var num2 = window.prompt("Give me a second number");
	var num3 = window.prompt("Give me a third number");

	var nums = new Array(num1, num2, num3);

	return nums
}

function delete_biggest(nums){
	var big1 = nums[0];
	var big1index = 0;

	for(i = 0; i < nums.length; i++){
		if(nums[i] > big1){
			big1 = nums [i];
			big1index = 0;
		}
	}
	nums.splice(big1index);

	return nums
}

function third_greatest(){
	var nums = get_nums();
	var nums = delete_biggest(nums);
	var nums = delete_biggest(nums);

	var big1 = nums[0];
	for(i = 0; i < nums.length; i++){
		if(nums[i] > big1){
			big1 = nums [i];
			big1index = 0;
		}
	}
	return big1;

}

console.log(third_greatest());

// I WANT TO TALK ABOUT HOW TO SET THIS UP SO IT DOESN"T GET STUCK INSIDE
// function third_greatest(nums){
// 	var big1 = nums[0];
// 	var big1index = 0;
// 	for (i=0; i < 2; i ++){
// 		for (k=0; k < 1; k++){
// 			for (j=0; j < nums.length; j++){
// 				if(nums[j] > big1){
// 					big1 = nums[j];
// 					big1index = j
// 				}
// 			}
// 		nums.splice(big1index);
// 		}
// 	return big1
// 	}
// }

// # # These are tests to check that your code is working. After writing
// # # your solution, they should all print true.


// HOW WOULD I MAKE THESE RUN? 
// console.log(
//   'third_greatest([5, 3, 7]) == 3: ' +
//   str(third_greatest([5, 3, 7]) == 3)
// );
// console.log(
//   'third_greatest([5, 3, 7, 4]) == 4: ' +
//   str(third_greatest([5, 3, 7, 4]) == 4)
// );
// console.log(
//   'third_greatest([2, 3, 7, 4]) == 3: ' +
//   str(third_greatest([2, 3, 7, 4]) == 3)
// );
