cube := Group([(1, 2, 3, 4)(5, 6, 7, 8), (1, 4, 8, 5)(2, 3, 7, 6)]);

Print("Order(cube) = ", Order(cube), "\n");

degree := 8;
colorings := Filtered(
  Combinations(Cartesian([1..degree], ["b", "w"]), degree)
, \c -> Size(Set(List(c, \a -> a[1]))) = degree
);

Print("Size(colorings) = ", Size(colorings), "\n");

OnFunctions := function(omega, g)
  local result;
  result := List(omega, t -> [t[1]^g, t[2]]);
  SortBy(result, t -> t[1]);
  return result;
end;

orbits := Orbits(cube, colorings, OnFunctions);
Print("Size(orbits) = ", Size(orbits), "\n");

IsFixed := function(omega, g)
  return OnFunctions(omega, g) = omega;
end;

orbitCount := 1/Order(cube) * Sum(List(Elements(cube), \g -> Size(Filtered(colorings, \c -> IsFixed(c, g)))));

Print("orbitCount: ", orbitCount, ", #orbits: ", Size(orbits));