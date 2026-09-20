
if (obj_mineManager.cash >= price) {

	obj_mineManager.cash -= price;
	audio_play_sound(SFX_cashRegister, 1, false);
	obj_mineManager.dynamiteStash ++;
	var dialogue = instance_create_depth(x, y, depth, obj_acceptanceDialogue);
	dialogue.content = "Here, thanks a bunch.";
	dialogue.voice = voice;
	dialogue.charSpeed = charSpeed;
}
else {
	var dialogue = instance_create_depth(x, y, depth, obj_acceptanceDialogue);
	dialogue.content = "Sorry pal. I'm not giving 'em for free.";
	dialogue.voice = voice;
	dialogue.charSpeed = charSpeed;
}


instance_destroy();