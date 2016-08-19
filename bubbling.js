function switch_up(array, index){
	var new_array = new Array();
	
	for(i = 0; i < array.length; i++){
		if (i == index[0]){
			new_array.push(array[index[1]]);
			
		}
		else if (i == index[1]){
			new_array.push(array[index[0]]);
			
		}
		else {
			new_array.push(array[i]);
			
		}

	}
	return new_array;
}

// console.log(switch_up([4, 3, 5, 6], [0,1]));



function bubbling(array){
	var no_switch = 0;
	while (no_switch < ((array.length)- 1)){
		var i = 0;
		var j = 1;
		while(j < array.length){
			if(array[i] > array[j]){
				array = switch_up(array,[i, j]);
			}
			else{
				no_switch = no_switch + 1;
			}
			i++
			j++
		}
		if(no_switch!= ((array.length) - 1)){
			no_switch = 0; 
		}
	}
	return array;
}

console.log(bubbling([11, 1, 4, 2]));