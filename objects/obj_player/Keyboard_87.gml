
if (instance_exists(obj_mineName) || instance_exists(obj_dialogue)) {
	exit;	
}

if (descending) {
	exit;	
}

if (!obj_pickaxe.rotating && !onCooldown) {
	obj_mineManager.equiped = obj_pickaxe;
	onCooldown = true;
	obj_pickaxe.rotating = true;
}