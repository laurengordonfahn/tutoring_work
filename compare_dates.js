// function date_compare(x, y)
// {
// 	if (x === y)
// 		{console.log("date is the same");}
// 	elsif (x < y)
// 		{console.log("date" + x + "came before date" + y);}
// 	else 
// 		{console.log("date" + y + "came before date" + x);}

// }

// date_compare(3, 4);
//the above function doesn't run HELP

// x and y will be dates that have the string formate 11/14/2013 00:00
/* first: find a way to break the string date up into each character element
   second: find a way to compare the string date element of x and y in order when one is greater it is the larger number
   thrid: it doesn't matter if you compare / or spaces as they will be the equivalent and so ignored */

function date_compare(x, y)
{
	var array_x = x.split('');
	var array_y = y.split('');
	var i = 0;
	var outcome = undefined; 
	while (i < array_x.length)
	{
		if (array_x[i] !== array_y[i])
		{
			
			if (array_x[i] < array_y[i])
				{outcome = ("date" + x + "came before date" + y);}
			else 
				{outcome = ("date" + y + "came before date" + x);}

		}
		else
			{ outcome = ("date" + x + "date " + y + "are equal");}

		i++
	}
	return console.log outcome;
}

date_compare("11/14/2013 00:00", "11/14/2013 01:00")

// once this runs I can change it slightly to take an array of dates no matter how many and for each to be checked. 

// as for the circle I think I have a lon way to go http://stackoverflow.com/questions/9212902/how-to-generate-circle-using-javascript lets talk about this!