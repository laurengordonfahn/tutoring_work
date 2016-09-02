function neighbor_sum(array){
	var i = 0;
	var new_array = [];
	var sum = 0;
	console.log(array);
	while(i<array.length){
		if(i == 0){
			sum = array[i+1];
		}
		else if(i == (array.length -1)){
			sum = array[i-1];
		}
		else{
			sum = array[i-1] + array[i+1];
		}
		new_array.push(sum);
		i +=1;

	}
	return new_array;
}

console.log(neighbor_sum([1,2,3,4,5]));