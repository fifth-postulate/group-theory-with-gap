# Orbit Stabilizer Theorem
> How many elements does a group have?

When investigating a certain groups it is a tremendous useful tool to know the
number of elements a group has. Among other things the _Orbit Stabilizer
theorem_ can be used to answer that question.

> **Theorem _(Orbit Stabilizer)_** Let {$$}G{/$$} be a group acting on a set
> {$$}X{/$$}. Then for any {$$}x \in X{/$$} we have
>
>{$$}
>|G| = |x \cdot G| |G_{x}|
>{/$$}

How do we use this?

## Order of the symmetry group of the Cube
The the symmetry group of the cube acts on the faces of the cube. We can
determine the order of the group by considering the orbit of a face and the
stabilizer of a face.

Consider the top face. There are rotations that move the top face to any face of
the cube. The size of the orbit of the top face is {$$}6{/$$}. There are
{$$}4{/$$} rotations that leave the top face fixed. Multiplying these numbers
provides us with the order of the symmetry group of the cube: {$$}24{/$$}.

## Proof
Let group {$$}G{/$$}, set {$$}X{/$$} on which {$$}G{/$$} acts and 
{$$}x \in X{/$$} be given. We will define a bijection between the elements of
the cosets of the stabilizer to elements of the orbit. Let {$$}\phi{/$$} map a
right coset {$$}G_{x}g{/$$} into {$$}x \cdot g \in x \cdot G{/$$}.

If {$$}\phi(G_{x}g) = \phi(G_{x}h){/$$} then {$$}x \cdot g = x \cdot h{/$$} and
{$$}x \cdot gh^{-1} = x{/$$}. Stated otherwise {$$}gh^{-1} \in G_{x}{/$$} hence
{$$}G_{x}g = G_{x}h{/$$}. This shows that {$$}\phi{/$$} is injective.

Notice that for an {$$}y \in x\cdot G{/$$} there exist a {$$}g \in G{/$$} such
that {$$}y = x \cdot g{/$$}. Then {$$}\phi(G_{x}g) = x \cdot g = y{/$$}. So
{$$}\phi{/$$} is surjective.

Because {$$}\phi{/$$} is a bijection {$$}|x \cdot G|{/$$} equals the index of
{$$}G_{x}{/$$} in {$$}G{/$$} which is {$$}|G : G_{x}| = |G|/|G_{x}|{/$$}. From
this the Orbit Stabilizer theorem follows. 

## Excercise
1. What are the orders of the symmetry groups of the platonic solids?
2. The symmetry group of the cube acts on the diagonals of the cube. How large
   is the stabilizer of one diagonal?
3. Knowing the order of the symmetry group of the cube, list the permutations of
   the symmetry group of the cube acting on the faces.
