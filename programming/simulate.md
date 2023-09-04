# Simulation Problems

Many problems will have you simulate the problem statement, i.e. implementing
what's stated these are really easy problems and are more of a test to see if
you are able to code. The most popular example is probably FizzBuzz the
statement is as follows: "write a program that prints numbers 1 to n but for
multiples of 3 print 'Fizz' and for multiples of 5 print 'Buzz' for numbers
which are multiples of both 3 and 5 print 'FizzBuzz' otherwise just print the
number' in C++ we can solve the problem as follows:

```c++
void fizzBuzz(int n) {
	for (int i = 1; i <= n; ++i) {
		if (i % 3 == 0)
			cout << "Fizz" << endl;
		else if (i % 5 == 0)
			cout << "Buzz" << endl;
		else if (i % 5 == 0 && i % 3 == 0)
			cout << "FizzBuzz" << endl;
		else
			cout << i << endl;
	}
}
```

