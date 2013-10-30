Prime Time
==

Huh?
--

Write a program that calculates and prints out a multiplication table of the
first 10 calculated prime numbers.
Detail: The program must run from the command line and print to screen 1
table.
Across the top and down the left side should be the 10 primes, and the body
of the table should contain the product of multiplying these numbers.

Please include tests.

Think about cases where the code doesn't know the upper limit (maybe it's 30
and not 10 primes?)
Think about code complexity.
Don't use the Ruby prime method.

Running
--

You can run the code right out of `./bin/primetime` or build and install the gem. The app works as per:

```bash
$(master) primetime --help
Usage: lodestone [options]
    -p, --primes [PRIMES]            Primes to use in our grid
```

Default is a grid of 10 numbers.

Gems? Rakes?
--

```bash
$(master) rake -T
rake build  # Build gem
rake test   # Run tests
```
