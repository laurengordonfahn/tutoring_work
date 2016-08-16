// # Write a method that takes in a number and returns a string, placing
// # a single dash before and after each odd digit. There is one
// # exception: don't start or end the string with a dash.
// #
// # You may wish to use the `%` modulo operation; you can see if a number
// # is even if it has zero remainder when divided by two.
// #
// # Difficulty: medium.

function is_odd(num){
	if(num%2 !== 0){
		num = "-" + num + "-";
	}
	return num;
}

// console.log(is_odd(2));
// console.log(is_odd(3));


function remove_end_dashs(new_string){

	if(new_string[0] === "-"){
		new_string = new_string.substring(1, new_string.length);
	}

	var last = (new_string.length -1)
	if(new_string[last] === "-"){
		new_string = new_string.substring(0, (new_string.length -1));
	}
	return new_string;

}


// console.log(remove_end_dashs("-hello-"));


// HOW DO I FIX THIS?
function remove_repeat_dashs(new_string){
	var i = 0;
	var array_delete = [];
	

	while((i+1) < new_string.length){
		if (new_string[i] === "-"){
			if(new_string[i+1] === "-"){
				array_delete.push(i)
			}
		}
		i++
	}
	console.log(array_delete.length);
	console.log(new_string.length);
	
	
	
	for(j=0; j < array_delete.length; j++){
		console.log(array_delete[j]);
		
		console.log(new_string);	
		
	}

	return new_string;
}

console.log(remove_repeat_dashs("h--e--y"));


// function dasherize_number(num){
// 	num = num.toString();
// 	num = num.split("");
// 	var i = 0;
// 	var new_string = "";
// 	while( i < num.length){
// 		is_odd(num[i]);
// 		new_string = new_string + num[i];
// 	}

// 	new_string = remove_end_dashs(new_string);

// 	return remove_repeat_dashs(new_string);

// }











// // # These are tests to check that your code is working. After writing
// // # your solution, they should all print true.

// console.log('dasherize_number(203) == "20-3": ' +
//  (dasherize_number(203) == '20-3').toString()
// );
// puts(
//   'dasherize_number(303) == "3-0-3": ' +
//   (dasherize_number(303) == '3-0-3').to_s
// )
// puts(
//   'dasherize_number(333) == "3-3-3": ' +
//   (dasherize_number(333) == '3-3-3').to_s
// )
// puts(
//   'dasherize_number(3223) == "3-22-3": ' +
//   (dasherize_number(3223) == '3-22-3').to_s
// )
