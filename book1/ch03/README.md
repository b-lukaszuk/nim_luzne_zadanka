# Description

Selected bits/tasks from ["Nim Basics"](https://narimiran.github.io/nim-basics/) by Nair Miran and contributors.

Written at a whim, maybe slightly modified, used for educational purposes.

# Chapter 3. Containers

[Chapter](https://narimiran.github.io/nim-basics/#_containers)

[Exercises](https://narimiran.github.io/nim-basics/#_exercises_3)

## Task 1

Original exercise number: 1

> Create an empty array which can contain ten integers.
> - Fill that array with numbers 10, 20, …​, 100. (Hint: use loops)
> - Print only the elements of that array that are on odd indices (values 20, 40, …​).
> - Multiply elements on even indices by 5. Print the modified array.

## Task 2

Original exercise number: 2

> Re-do the Collatz conjecture exercise, but this time instead of printing each step, add it to a sequence.
> - Pick a starting number. Interesting choices, among others, are 9, 19, 25 and 27.
> - Create a sequence whose only member is that starting number
> - Using the same logic as before, keep adding elements to the sequence until you reach 1
> - Print the length of the sequence, and the sequence itself

## Task 3

> Find the number in a range from 2 to 100 which will produce the longest Collatz sequence.
> - For each number in the given range calculate its Collatz sequence
> - If the length of current sequence is longer than the previous record, save the current length and the starting number as a new record (you can use the tuple (`longestLength`, `startingNumber`) or two separate variables)
> - Print the starting number which gives the longest sequence, and its length

# Usage example

## Compilation

``` bash
nim c helloworld.nim
```

## Compilation and Running

```bash
nim c -r helloworld.nim
```

## Compiler Options

```bash
nim --help
```

# Additional info

**Zawartość niniejszego katalogu może być nieprawidłowa, błędna czy szkodliwa. Używaj na własne ryzyko.**

**The content of this folder may be incorrect, erroneous and/or harmful. Use it at Your own risk.**
