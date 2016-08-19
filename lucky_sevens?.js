function lucky_sevens?(array){
	var i = 0;
	var j = 1;
	var k = 2;
	var flag = false;

	while(k < array.length){
		// if(array[0] + array[1] + array[-1] === 7){
		// 	flag = true;
		// }
		// if(array[0] + array[-1] + array[-2] === 7){
		// 	flag = true;
		// }

		if(((array[i] + array[j] + array[k]) === 7)){
			flag = true;
		}
		else{
			flag = false;
		}


		i++
		j++
		k++
	}
	return flag;
}

console.log(lucky_sevens?([2, 1, 5, 1, 0]));
console.log(lucky_sevens?([0, -2, 1, 8]));
console.log(lucky_sevens?([7, 7, 7,  7]));
console.log(lucky_sevens?([3, 4, 3, 4]));