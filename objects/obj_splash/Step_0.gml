if (y < room_height*0.6) {
	y = min(y +2, room_height*0.6);
	if (y == room_height*0.6) {
		splotch = true;
		audio_play_sound(SFX_boing, 1, false);
	}
}

if (splotch) {
	image_yscale -= 0.1;
	image_xscale += 0.1;
	if (image_yscale <= 0.1) {
		splotch = false;	
	}
}
else if (image_yscale < 1) {
	image_yscale += 0.05;
	image_xscale -= 0.05;
	if (image_yscale == 1) {
		alarm[0] = game_get_speed(gamespeed_fps);
	}
	
}