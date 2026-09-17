
if (instance_exists(obj_mineName) || instance_exists(obj_dialogue)) {
	exit;	
}

if (descending) {
	exit;	
}

if (room == rm_camp) {
	exit;
}
else {
	if (!onCooldown) {
		obj_mineManager.equiped = obj_mineManager.secondary;
		onCooldown = true;
		with(obj_mineManager.secondary) {
			event_user(0);	
		}
	}
}