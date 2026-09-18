z = max(z + zSpeed, 0);
zSpeed -= 0.1;
if (z = 0) {
	speed = 0;
	if (place_meeting(x, y, obj_player))  {
		instance_destroy();
		audio_play_sound(Pickup2, 1, false);
		obj_mineManager.cash += 1;
	}
}