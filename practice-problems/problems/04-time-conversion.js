// # Write a method that will take in a number of minutes, and returns a
// # string that formats the number into `hours:minutes`.
// #
// # Difficulty: easy.

function time_conversion(min){
	var time = null;
	if(min < 60){
		time = String("0:"+ min);
		return time;
	}
	else{
		var hour = 0;
		flag = 0
		while(min >=60){
			min = min - 60;
			hour = hour + 1;

		}
		if(min < 10){
			min = "0" + String(min);

		}
		return String(hour + ":" + min);
	
	}
		
	
}


console.log('time_conversion(15) == "0:15": ' + (time_conversion(15) == '0:15'));
console.log('time_conversion(150) == "2:30": ' + (time_conversion(150) == '2:30'));
console.log('time_conversion(360) == "6:00": ' + (time_conversion(360) == '6:00'));
