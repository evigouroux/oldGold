
if (!active && distance_to_object(obj_player) < 64) {
	audio_play_sound(SFX_ghostAggro, 1, false);
	active = true;	
}

if (pushBackSpeed > 0) {
	x = x + lengthdir_x(pushBackSpeed, pushBack);
	y = y + lengthdir_y(pushBackSpeed, pushBack);
	pushBackSpeed = max (0, pushBackSpeed -1);
}

// Flottement inquiétant
z += sin(current_time/500)/8;