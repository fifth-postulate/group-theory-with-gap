# Burnside's Lemma
> Given {$$}k{/$$} colors how many different ways are there to color the
> vertices of the cube?

In this chapter we will answer this question and many others with the aid of
_Burnside's Lemma_.

> **Lemma _(Burnside)_** Let {$$}G{/$$} be a group acting on a set {$$}X{/$$}.
> The number of orbits of this action {$$}X/G{/$$} is equal to
>
>{$$}
>\frac{1}{|G|}\sum_{g\in G} X^{g}
>{/$$}
>
> Here {$$}X^{g}{/$$} is defined as {$$}\{x \in X | x \cdot g = x\}{/$$}.

Before we proof Burnsides' lemma we will show how the lemma can be used count
combinatorial objects.

## Necklaces
We will investigate
[mathematical necklaces](https://en.wikipedia.org/wiki/Necklace_%28combinatorics%29).
We start with a set of _colors_ {$$}\{b, w\}{/$$} which we will use as the
alphabet for the set of _words_ of length 6. We will call two words {$$}u{/$$}
and {$$}v{/$$} equivalent if and only if {$$}u{/$$} can be transformed into
{$$}v{/$$} by a number of rotations. A _rotation_ of the word {$$}c \cdot w{/$$}
is defined as {$$}w \cdot c{/$$} where {$$}c{/$$} is a color. A _necklace_ is an
equivalence class of words. 

The cyclic group of order 6 {$$}C_{6}{/$$} acts on the words of length 6 by
rotation. The orbits of this action precisely corresponds with the necklaces. So
if we count the number of orbits we know the number of necklaces.

The table below summarizes the calculations needed for Burnside's lemma to work

| {$$}g{/$$}      | {$$}\|X^{g}\|{/$$} |
|-----------------|------------------|
| {$$}e{/$$}      | 64               |
| {$$}r{/$$}      | 2                |
| {$$}r^{2}{/$$}  | 4                |
| {$$}r^{3}{/$$}  | 8                |
| {$$}r^{4}{/$$}  | 4                |
| {$$}r^{5}{/$$}  | 2                |

The sum of these numbers is 84 so according to Burnside's lemma the number of
two-colored necklaces of size 6 is {$$}84/6 = 14{/$$}.

## Exercises
1. Generalize necklaces to {$$}m{/$$} colors and {$$}n{/$$} beads and show that
   the rotation relation is an equivalence relation.
2. Check the table of counts of fixed necklaces.

[necklace]: 
