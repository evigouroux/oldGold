
if (actualisingCash > 0) {
	actualisingCash --;	
}

if (displayedCash != cash) {
	displayedCash += sign(cash - displayedCash);
	actualisingCash = game_get_speed(gamespeed_fps);
}

if (room == rm_mine && !instance_exists(obj_tile)) {
	loadMine(mines[currentMine]);	
}