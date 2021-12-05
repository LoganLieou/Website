---
title: "Advent of Code Day 1"
date: 2021-12-04T05:04:08-06:00
draft: false
---

Yes I will start to write about this and explain my reasoning and code that I wrote
for this year's advent of code right now the website just existing because I would
like my website to respawn thank you very much.

### Reading in Files
The first step and the first step to almost every AoC challenge is to read in the
contents of a file to do this in julia simply:

```julia
lines = readlines("input.txt")
```

### Part 1
Part 1 solution takes in the input vector which is just our
lines in this case well first we actually have to parse out
lines such that it matches the type `Vector{Int}` because at
the moment the lines is a `Vector{String}` so we parse each
line using julia's beautiful dot notation first:
```julia
lines = parse.(Int, lines)
```

Then we compare a set of each pair `[a, b]` to another pair `[b, c]`
and compare those pairs finally `|> count` get the count of the number
of times `[a, b] < [b, c]` indicating the number of times values
increaced in our input.

```julia
fsol(input::Vector{Int})::Int =
	map((a, b) -> a < b, input, @view(input[2:end])) |> count
```

### Part 2
The solution to part 2 is very similar to the solution to part 1
but instead of comparing to a view of `2:end` we compare to a
view that is `4:end` we do this for the entire array and this
creates n views which can be compared to n subarrays coresponding
to the size of our sliding window in this case.

```julia
fsol(input::Vector{Int})::Int =
	map((a, b) -> a < b, input, @view(input[4:end])) |> count
```
