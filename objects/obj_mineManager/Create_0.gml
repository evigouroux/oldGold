randomize();
global.mapSeed = random_range(-5000.0, 5000.0);
mines = [];

mines[0] = generateMine();
mines[1] = generateMine();

currentMine = 0

loadMine(mines[currentMine]);