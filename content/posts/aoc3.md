---
title: "Advent of Code Day 3"
date: 2021-12-04T22:16:08-06:00
draft: false
---

On the third day of advent of code, the problems got
more difficult, and this is where we get into problems
that may not be just purely easy, the last two days
were fairly stright forward as day one was just an array
question and day 2 was a stack question, now day 3
is somewhat of an array question but if you can find an
optimal solution or not is another thing entirely.

## Part 1

Part one is fairly easy as all you really have to do
is find the most common bit and least common bit for
each bit in the string, last you convert the most common
strong and the least common string to base 10 and multiply them
base 10 conversion in julia is very simple as all you have to
do is this:

```julia
parse(Int, value; base = 2)
```

the implementations for most common and least common bit are as
as follows

```julia
function most_common(array::Matrix{Int}, col::Int)::Int
	rows = size(arr, 1)
	num_ones = sum(arr[:, col])
	num_zeros = rows - num_ones
	return num_ones >= num_zeros ? 1 : 0
end
```

and the least common bit take the xor of the most common bit
string and 1.

```julia
least_common(arr::Matrix{Int}, col::Int)::Int
	= (xor(most_common(arr, col), 1))
```
