
if (obj_mineManager.cash >= price) {

	obj_mineManager.cash -= price;
	obj_mineManager.diggingPowerLvl ++;
	var dialogue = instance_create_depth(x, y, depth, obj_acceptanceDialogue);
	dialogue.content = "Just like the founding father intended ! Give'em hell mate.";
	dialogue.voice = voice;
	dialogue.charSpeed = charSpeed;
}
else {
	var dialogue = instance_create_depth(x, y, depth, obj_acceptanceDialogue);
	dialogue.content = "Get some greenbacks and then we'll talk, how bout that ?";
	dialogue.voice = voice;
	dialogue.charSpeed = charSpeed;
}


instance_destroy();