
if (alarm[0] <= 0) {
	audio_stop_sound(heroic);
	audio_play_sound(sound_start, 1, false);
	alarm_set(0,game_get_speed(gamespeed_fps));
}

