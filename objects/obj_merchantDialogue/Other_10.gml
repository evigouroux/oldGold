
if (obj_mineManager.cash >= price) {

	obj_mineManager.cash -= price;
	obj_mineManager.diggingSpeedLvl ++;
	var dialogue = instance_create_depth(x, y, depth, obj_acceptanceDialogue);
	dialogue.content = "Pleasure doing business with ya !\nHave a good one !";
	
}
else {
	var dialogue = instance_create_depth(x, y, depth, obj_acceptanceDialogue);
	dialogue.content = "Sorry Sam ! I can't give credit !\nCome back when you're a little richer !";
}


instance_destroy();