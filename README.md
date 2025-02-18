# Lua pairs() Iteration Order Bug

This repository demonstrates a subtle bug related to the unpredictable iteration order of Lua's `pairs()` function when used with nested tables.  The provided code might work correctly in some Lua implementations or versions but could fail in others due to variations in table iteration order.

## The Bug

The `bug.lua` file contains a function `foo` that recursively iterates through a nested table using `pairs()`.  The intention is to access a deeply nested value (`t.b.d.e`). However, because the order of iteration is not guaranteed, the code might not always find the expected value.

## The Solution

The `bugSolution.lua` file presents a solution that utilizes a different approach to access the nested value, ensuring consistent results regardless of the table's internal iteration order.

## How to Reproduce

1.  Clone this repository.
2.  Run `bug.lua` using a Lua interpreter.
3.  Observe that the output might be 3 (correct) or nil (incorrect) depending on the Lua implementation or version.
4.  Run `bugSolution.lua` to see the consistent correct behavior.