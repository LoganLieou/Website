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
f = open("input.txt", "r"); lines = readlines(f); close(f)
```

### Sliding Window
The first problem part 1

```julia
fsol(input::Vector{Int})::Int =
	map((a, b) -> a < b, input, @view(input[2:end])) |> count
```

write cool explaination on how cool this code is
