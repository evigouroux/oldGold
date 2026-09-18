
if (room != rm_mine) {
	exit;	
}

if (obj_mineManager.secondary == obj_pistol && obj_mineManager.dynamiteStash > 0) {
	obj_mineManager.secondary = obj_dynamite;
	obj_mineManager.equiped = obj_mineManager.secondary;
}
else {
	obj_mineManager.secondary = obj_pistol;
	obj_mineManager.equiped = obj_mineManager.secondary;
}