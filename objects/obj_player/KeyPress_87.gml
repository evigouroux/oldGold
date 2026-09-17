
if (descending || instance_exists(obj_dialogue)) {
	exit;	
}

if (room == rm_camp) {
	if (instance_exists(currentFacility) && distance_to_object(currentFacility) <= facilityRange) {
		instance_create_depth(obj_camera.x + obj_camera.cam_width/2, obj_camera.y + obj_camera.cam_width - 16, - 8, currentFacility.dialogue);
		currentFacility = noone;
	}
}