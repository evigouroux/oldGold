randomize();
mines = [];
equiped = obj_pickaxe;
secondary = obj_pistol;

for (var i = 0; i < 10; i++) {
	mines[i] = generateMine();
}

currentMine = 0;
maxMine = 0;
cash = 15;
displayedCash = cash;

diggingSpeedLvl = 0;
diggingPowerLvl = 0;
loan = 9999;