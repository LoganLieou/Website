---
title: "Advent of Code Day 2"
date: 2021-12-04T21:03:16-06:00
draft: false
---

Advent of code day 2 was actually easier than the first
day in my opinion as the first day required you to use
brain for more advanced array based approach on day 2 
it was simply just a stack machine.

## Part 1

So all you have to do is read in the inputs and parse them
based on the criteria that is presented in the prompt. step
1 is to read in the file contents and pase all the funny
instructions and numbers. First I write a parse lines function
which splits the lines into instructions and values like so:

```julia
parse_line(x) = let fields = split(x, " ")
	Symbol(fields[1]), parse(Int, fields[2])
end
```

next after we have written this function we can return to creating
the program. All this program actually needs to do is take sequential
inputs and update a value based on that input so it's as simple as:

```julia
function pt1(input::Union{Symbol, Int})::Int
	# sentinal values
	pos::Int = 0; dep::Int = 0

	for (cmd, x) in input
	if cmd == :forward
			pos += x
		elseif cmd == :up
			dep -= x
		elseif cmd == :down
			dep += x
		else
			error("bad input")
		end
	end
	return pos * dep
end
```

the code here I belive to be very easy to understand so I'm not gonna really go too
in depth on it.

## Part 2


