// find the area of a triangle with sides 5, 6, 7
// area = square root of (p(p-a)(p-b)(p-c))
// where p = (a+b+c)/2

var a = 5;
var b = 6;
var c = 7;
var p = (a + b + c)/2;

var area = Math.sqrt(p(p-a)(p-b)(p-c));

console.log("The area of the triangle with sides" + a + b + c + "is" + area);


// convert temperture from celsius to fahrenheit
// convertion c/5 = (f-32)/9
// test drive 60 celsius is 140 fahrenheit, 45 fahrenheit is 7.222222222222222 celsius

var c = 60;
var f = nil;

if (c ===60);
	{
		f = (((c/5)/9) + 32);
	 	console.log(f);
	}
elsif (f === 45);
	{
		c = (((f-32)/9)/5);
		console.log(c);
	}

