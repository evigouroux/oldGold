randomize();
mines = [];

for (var i = 0; i < 10; i++) {
	mines[i] = generateMine();
}

currentMine = 0;
maxMine = 0;