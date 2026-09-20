alarm[0] = game_get_speed(gamespeed_fps);
baseText = "Time is up";
text = "";
state = 0;

x = obj_player.x;
y = obj_player.y;
depth = -9;

with (obj_ghost) {
	instance_destroy();	
}

audio_stop_all();