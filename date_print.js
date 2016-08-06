// print the full date in the formate mm-dd-yyyy us getmonth, getdate,getfullyear

// getmonth gives number 0-11
//getdate gives 1-31
// getFullyear gies 4 digits

//QUESTION: I had the right stuff but I needed to call it on the class Date? Can we go over lines 9-12 please on Monday. 

var today = new Date();
var day = today.getDate();
var month = today.getMonth()+1;
var year = today.getFullYear();


// var month =(getMonth() + 1);

if (month < 10)
{
		month = ("0" + month);
}


// var day = getDate();

if (day < 10)
{
		day = ("0" + day);
}



console.log(month + "-" + day + "-" + year);


console.log("----------------")

// print current day and time in the formate:
// Today is: Firday. Current time is : 4 PM: 50:22

day_array = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"]


day = day_array[getDay()]
var hour = 0;
if (getHour > 12)
	{hour = (getHours()-12)/2)) + "PM";}
elsif (getHour === 12)
	{hour = console.log ("The time is 12 PM")}
else 
	{hour = console.log("The time is" + gethours() + "AM")}


var minutes = (getMinutes())
if(getMinutes() < 10)
	{minutes = ("0" + minutes);}

var seconds =  (getSeconds())
if(getSeconds() < 10)
	{ seconds = ("0" + seconds);}



console.log("Today is" + day + "."+ "Current time is: " + hour + ":" + minutes  + ":" + seconds);




