
if (obj_mineManager.cash >= price) {

	obj_mineManager.cash -= price;
	obj_mineManager.diggingPowerLvl ++;
	var dialogue = instance_create_depth(x, y, depth, obj_acceptanceDialogue);
	dialogue.content = "Fine piece o' work if I do say so myself.";
	
}
else {
	var dialogue = instance_create_depth(x, y, depth, obj_acceptanceDialogue);
	dialogue.content = "Eh, no cash, no work.\nSimple as that.";
}


instance_destroy();