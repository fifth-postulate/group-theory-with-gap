# Action
> What can we do with a group?

In this chapter we are going to define what we mean by a _group action_. 

> **Definition** Let {$$}G{/$$} be a group and {$$}X{/$$} a set. A function
> {$$}\phi : X \times G \rightarrow X{/$$} is called an _action_ if the
> following rules apply for all {$$}x \in X{/$$} and {$$}g, h \in G{/$$} 
>
> 1. {$$}\phi(x, e) = x{/$$} where {$$}e{/$$} is the identity of {$$}G{/$$}.
> 2. {$$}\phi(x, gh) = \phi(\phi(x, g), h){/$$}.

If the action is clear from the context we will often use the following
shorthand in notation: we write {$$}x \cdot g{/$$} for {$$}\phi(x, g){/$$}.

## Examples
In this section we will provide some examples of action. Throughout this section
a group {$$}G{/$$} and a set {$$}X{/$$} that {$$}G{/$$} acts upon are given.

1. **Trivial action**. For all {$$}x \in X{/$$} define {$$}x \cdot g := x{/$$}.
2. **Right multiplication**. {$$}G{/$$} acts on itself by right multiplication,
   i.e. {$$}h \cdot g = hg{/$$} is an action.
3. **Conjugation**. {$$}G{/$$} acts on itself by conjugation, i.e.
   {$$}h \cdot g = g^{-1} h g{/$$}.

## Orbits
It is useful to introduce the orbit of an element.

> **Definition** Let {$$}G{/$$} act on {$$}X{/$$}. The orbit of an element
> {$$}x \in X{/$$} is defined as
>
> {$$}
> x \cdot G = \{ x \cdot g | g \in G \}
> {/$$}

We will prove that the set of orbits of an action partition the set {$$}X{/$$}.

## Proof
Let a group {$$}G{/$$} act on a set {$$}X{/$$}.

{$$}
\cup_{x\in X} x \cdot G = X
{/$$}

because {$$}x = x \cdot e \in x \cdot G{/$$}. Furthermore, if 
{$$}x \cdot G \cup y \cdot G{/$$} is not empty, there exist a {$$}z \in X{/$$}
and {$$}g,h \in G{/$$} such that: {$$}z = x \cdot g = y \cdot h{/$$}. But then

{$$}
y = y \cdot e = y \cdot hh^{-1} = (y \cdot h) \cdot h^{-1} = 
(x \cdot g) \cdot h^{-1} = x \cdot gh^{-1}
{/$$}

In other words {$$}x \cdot G \subset y \cdot G{/$$}. Because the argument is symmetric
in the arguments we know that {$$}x \cdot G = y \cdot G{/$$}. This proves that
the orbits of an action partition the underlying set.

## Properties
We will now list some properties that an action can have. 
1. **Transitive**. An action is **transitive** if an there is only one orbit.
2. **Faithful**. An action is **faithful* if for every distinct
   {$$}g,h \in G{/$$} there exist an {$$}x \in X{/$$} such that
   {$$}x \cdot g \neq x \cdot h{/$$}.

## Exercises
1. Express the rules of an action in the shorthand notation.
2. Verify that the examples are actual groups actions.
3. Which properties do the actions in the example have.
