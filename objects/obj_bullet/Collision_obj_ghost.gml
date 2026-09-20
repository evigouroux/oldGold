instance_destroy();

other.hP -= (obj_mineManager.pistolLvl+1)*2;

other.pushBack = point_direction(x, y, other.x, other.y);
other.pushBackSpeed = (obj_mineManager.pistolLvl+1)*2;

if (other.hP <= 0) {
	instance_destroy(other);
	instance_destroy();
	audio_play_sound(SFX_ghostDie, 1, false);
}
else {
	audio_play_sound(SFX_ghostHit, 1, false);	
}

