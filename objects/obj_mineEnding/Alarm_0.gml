
alarm[0] = game_get_speed(gamespeed_fps);
state++;

if (state == 1) {
	audio_play_sound(Hit26, 1, false);
	text += "\nBase cash : " + string(obj_mineManager.cash - obj_mineManager.cashCurrent);
}
else if (state == 2) {
	audio_play_sound(Hit26, 1, false);
	text += "\nCollected : " + string(obj_mineManager.cashCurrent)
}
else if (state == 3) {
	audio_play_sound(Hit26, 1, false);
	text += "\nLoan payment : -100";
}
else if (state == 4) {
	audio_play_sound(Hit26, 1, false);
	text += "\nCurrent balance : " + string(obj_mineManager.cash - 100);
	obj_mineManager.cash -= 100;
	obj_mineManager.loan -= 100;
	obj_mineManager.cashCurrent = 0;
	obj_mineManager.currentMine = 0;
}
else if (state == 5) {
	audio_play_sound(Hit26, 1, false);
	text += "\nLeft to pay : " + string(obj_mineManager.loan);
}
else if (state == 6) {
	audio_play_sound(sound_start, 1, false);
}
else if (state == 9) {
	
	if (obj_mineManager.cash < 0) {
		room_goto(rm_ending0);
		instance_destroy(obj_mineManager);
	}
	else if (obj_mineManager.loan <= 0) {
		show_message(obj_mineManager.pistolLvl + obj_mineManager.diggingPowerLvl + obj_mineManager.diggingSpeedLvl);
		if ((obj_mineManager.pistolLvl + obj_mineManager.diggingPowerLvl + obj_mineManager.diggingSpeedLvl) >= 12) {
			room_goto(rm_ending2);
			instance_destroy(obj_mineManager);
		}
		else {
			room_goto(rm_ending1);
			instance_destroy(obj_mineManager);
		}
	}
	else {	
		room_goto(rm_camp);
	}
}
