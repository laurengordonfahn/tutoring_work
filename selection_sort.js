function switch_up(array, index){
	var i = 0;
	var new_array = new Array();
	while (i < array.length){
		if (i == index[0]){
			var element1 = index[1];
			new_array.push(array[element1]);
		}
		else if (i == index[1]){
			var element2 = index[0]
			new_array.push(array[element2]);
		}
		else {
			var element3 = array[i]
			new_array.push(element3);
		}
		i++	
	}

	// why is this undefined?
	console.log(new_array.class);
	return new_array;
}

// var new_array = [11, 2, 10, 1]
// console.log(new_array[0]);
console.log(switch_up([11, 3, 10, 1], [0,1]));

function selection_sort(array){
	var no_switch = 0;

	while (no_switch < (array.length -1)){
		var i = 0;
		var j = 1;
		while (j < array.length){
	
			if (array[i] > array[j]){
				array = switch_up(array, [i, j]);
			}
			else{
				no_switch = no_switch + 1;
			}
			
		
			i ++
			j ++
		}

		if (no_switch < ((array.length)-1)){
			no_switch = 0;
		}
	}
	return array;
}

console.log(selection_sort([11, 1, 17, 3]));




