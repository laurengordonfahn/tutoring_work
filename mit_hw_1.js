
// this should offer us the thousandth prime number starting at n = 2
var n = 3;
var i = 1;


var prime_array = new Array();
prime_array.push(2)

while (prime_array.length < 1000)
{

	if (n%2 !== 0)
	{
		for (i = 2; i < Math.sqrt(n); i ++)
		{
			if (n%i === 0)
			{
				break;
				
			}

		}
		prime_array = prime_array.push(n);
		n ++;
	}
}

console.log(prime_array);
//console.log("this is the array of the first 1000 prime numbers" + prime_array)
