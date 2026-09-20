

if (state == 1 && !audio_is_playing(imtiredboss)) {
	state++;
	audio_play_sound(SFX_timesUp, 1, false);
	instance_create_depth(x, y, depth, obj_hurryUp);
}
else if (state == 2 && !audio_is_playing(SFX_timesUp)) {
	state++;
	audio_play_sound(fast_banjo, 1, false);
}
else if (state== 3 && !audio_is_playing(fast_banjo)) {
	state++;
	instance_create_depth(obj_player.x, obj_player.y, depth, obj_mineEnding);
}