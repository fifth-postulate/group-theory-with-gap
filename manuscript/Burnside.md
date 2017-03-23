# Burnside's Lemma
> Given {$$}k{/$$} colors how many different ways are there to color the
> vertices of the cube?

In this chapter we will answer this question and many others with the aid of
_Burnside's Lemma_.

> **Lemma _(Burnside)_** Let {$$}G{/$$} be a group acting on a set {$$}X{/$$}.
> The number of orbits of this action {$$}X/G{/$$} is equal to
>
>{$$}
>\frac{1}{|G|}\sum_{g\in G} |X^{g}|
>{/$$}
>
> Here {$$}X^{g}{/$$} is defined as {$$}\{x \in X | x \cdot g = x\}{/$$}.

Before we prove Burnside's lemma we will show how the lemma can be used count
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

## Proof
In order to prove Burnside's lemma we will count the elements in the set
{$$}\{(x, g) | x \cdot g = x \}{/$$}. Notice that it equals
{$$}\sum_{g \in G} |X^{g}|{/$$}. It also equals {$$}\sum_{x \in X} |G_{x}|{/$$}.
By the Orbit-Stabiliser theorem each {$$}|G_{x}|{/$$} equals
{$$}\frac{|G|}{|x \cdot G|}{/$$}. Because orbits partition {$$}X{/$$}, we have
{$$}x \cdot G = y \cdot G{/$$} whenever {$$}y \in x \cdot G{/$$}. If we pick
representatives {$$}X/G{/$$} for each orbits. We have

{$$}
\sum_{x \in X} \frac{|G|}{|x \cdot G|} = 
|G| \sum_{z \in X/G} \sum_{y \in z \cdot G} \frac{1}{|z \cdot G|} =
|G| \sum_{z \in X/G} 1 =
|G| |X/G|
{/$$}

from which Burnside's lemma is shown.

## GAP
We our going to color the vertices of a cube. Lets use two colors, black or
white. We need a permutation representation of the cube that acts on the
vertices.

```gap
cube := Group([(1, 2, 3, 4)(5, 6, 7, 8), (1, 4, 8, 5)(2, 3, 7, 6)]);
```

How do we know this is a correct? It certainly is a subgroup. By the
[Orbit-Stabilizer theorem][group-action] we can figure out that the order
should be `24`. 

```gap
Order(cube);
```

One way we could represent a coloring of the vertices of the cube by black and
white is as a function from the set `{1, 2, 3, 4, 5, 6, 7, 8}` to the set
`{"b", "w"}`. Functions are represented as special subsets of the Cartesian
product of the two sets. E.g. the function
`{(1,"w"), (2,"w"), (3,"w"), (4,"w"), (5,"b"), (6,"b"), (7,"b"), (8,"b")}`
indicates that the vertices in the top face are colored white, while all the
rest are colored black. We can calculate it with the following combination of
functions. 

```gap
degree := 8;
colorings := Filtered(
  Combinations(Cartesian([1..degree], ["b","w"]), degree)
, \c -> Size(Set(List(c, \a -> a[1]))) = degree
);
```
  
Because each vertex has two choices we expect {$$}2^8 = 256{/$$} colorings.

```gap
Size(colorings);
```

Two colorings considered are the same if we can obtain one from the other by a
rotation of the cube. The `cube` group induces an action on the colorings, and
two colorings are the same precisely when they are in the same orbit.

Knowing the number of orbits is knowing the number of different colorings.
Because the group and the G-set are both small, we can calculate it directly. 

For this we need to tell GAP how to compute the action. We will define the
`OnFunctions` function for this

```gap
OnFunctions := function(omega, g)
  local result;
  result := List(omega, t -> [t[1]^g, t[2]]);
  SortBy(result, t -> t[1]);
  return result;
end;
```

with this we find

```gap
orbits := Orbits(cube, colorings, OnFunctions);
Size(orbits);
```

This tells us that there are `23` different black and white colorings of the
vertices of a cube.

We want to reproduce this result by using Burnside's lemma. For this we need to
figure out the image of a coloring under a group element. This is achieved with
the `OnFunctions` acting function.

```gap
image := OnFunctions([
    [1, "w"],
    [2, "w"],
    [3, "w"],
    [4, "b"],
    [5, "b"],
    [6, "b"],
    [7, "b"],
    [8, "b"],
], cube.1);
```

Burnside's lemma equates the number of orbits with the average number of
colorings fixed by a permutation. Let's create a function for that

```gap
IsFixed := function(omega, g)
    return OnFunctions(omega, g) = omega;
end;
```

We can use `IsFixed` to filter all the colorings that are fixed by a
permutation.

```gap
fixed := Filtered(colorings, \c -> IsFixed(c, cube.1));
```

We need the size of these fixed colorings and sum them for each permutation in
the group. This sum should be averaged with the group order.

```gap
orbitCount := 1/Order(cube) * Sum(List(Elements(cube), \g -> Size(Filtered(colorings, \c -> IsFixed(c, g)))));
```

This answer agrees with the direct calculation.

## Exercises
1. Generalize necklaces to {$$}m{/$$} colors and {$$}n{/$$} beads and show that
   the rotation relation is an equivalence relation.
2. Check the table of fixed necklaces.
