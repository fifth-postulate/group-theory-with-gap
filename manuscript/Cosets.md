# Cosets
> What are natural partitions in a group

In this chapter {$$}G{/$$} is a group and {$$}H < G{/$$} is a subgroup of
{$$}G{/$$}. We can define a relation on {$$}G{/$$} in the following manner.

> **Definition** We call {$$}u,v \in G{/$$} related if and only if there exist
> an {$$}h \in H{/$$} such that {$$}u = vh{/$$}.

We will show that this relation is a equivalence relation. Every equivalence
relation partitions the underlying sets. We call the partition classes 
_(left) cosets_. We designate them {$$}uH{/$$}.

> **Theorem** cosets partition a group

## Proof
We will show that the relation defined in this chapter is an equivalence
relation. First we show that the relation is reflexive. This follows from the
fact that for any {$$}g \in G{/$$} we have {$$}g = ge{/$$} for {$$}e \in H{/$$}.

Next, we show symmetry of the relation. If {$$}u, v \in G{/$$} are related, i.e.
there exist a {$$}h \in H{/$$} such that {$$}u = vh{/$$}, we also have that
{$$}v{/$$} is related to {$$}u{/$$} because

{$$}
v = ve = v(hh^{-1}) = (vh)h^{-1} = uh^{-1}
{/$$}

Last on our agenda is showing that the relation is transitive. Let 
{$$}u,v,w \in G{/$$} such that {$$}u{/$$} is related to {$$}v{/$$} and {$$}v{$$}
is related to {$$}w{/$$}. We will show that {$$}u{/$$} is related to {$$}w{/$$}.
Then there exist {$$}y,z \in H{/$$} such that {$$}u = vz{/$$} and {$$}v =
wy{/$$}. Hence

{$$}
u = vz = (wy)z = w(yz)
{/$$}

This proves our theorem.

## Exercises
1. Define right cosets analogously. 
2. Prove that every equivalence relation partitions the underlying set.
