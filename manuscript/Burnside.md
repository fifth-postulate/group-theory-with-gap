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

We will investigate [mathematical necklaces][necklace]. We start with a set of
_colors_ {$$}\{b, w\}{/$$} which we will use as the alphabet for the set of
_words_ of length 6. We will call two words {$$}u{/$$} and {$$}v{/$$} equivalent
if and only if {$$}u{/$$} can be transformed into {$$}v{//$$} by a number of
rotations. A _rotation_ of the word {$$}c\ldot w{/$$} is defined as {$$}w\ldot
c{/$$} where {$$}c{/$$} is a color. A _necklace_ is an equivalence class of
words. 

[necklace]: https://en.wikipedia.org/wiki/Necklace_%28combinatorics%29
