cube := Group([(2, 3, 4, 5), (1, 2, 6, 4)]);

Print("Order(cube) = ", Order(cube), "\n");

Print("Size(Orbit(cube, 1)) = ", Size(Orbit(cube, 1)), "\n");

stab := Stabilizer(cube, 1);

Print("IsCyclic(stab) = ", IsCyclic(stab), "\n");

Print("Order(stab) = ", Order(stab), "\n");