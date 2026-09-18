
if (descending || instance_exists(obj_dialogue)) {
	exit;	
}

if (room == rm_camp) {
	if (instance_exists(currentFacility) && distance_to_object(currentFacility) <= facilityRange) {
		instance_create_depth(0, 0, - 8, currentFacility.dialogue);
		currentFacility = noone;
	}
}