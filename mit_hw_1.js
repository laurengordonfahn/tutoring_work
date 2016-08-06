
// this should offer us the thousandth prime number starting at n = 2
var n = 2


var prime_array = []

until (prime_array.length === 1000)
{

	if (n/2 !== 0)
		{
			for (i = 1, i < Math.sqrt(n); i ++);
			{if (n%i === 0)
				{prime_array = prime_array + n;
			}
			else
				{prime_array = prime_array;
			}
		}
	}
	elsif(n === 2)
		{prime_array = prime_array + n;
	}	
	else
		{prime_array = prime_array;
	}

	n++1;
}

console.log("This is the 1000ths prime number" + prime_array[1000] + ".")
console.log("this is the array of the first 1000 prime numbers" + prime_array)
