
if (displayedCash != cash) {
	displayedCash += sign(cash - displayedCash);	
}

if (room == rm_mine && !instance_exists(obj_tile)) {
	loadMine(mines[currentMine]);	
}