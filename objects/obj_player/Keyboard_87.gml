
if (descending) {
	exit;	
}

if (room == rm_camp) {
	if (instance_exists(currentFacility) && distance_to_object(currentFacility) <= facilityRange) {
		switch(currentFacility.object_index) {
		
			case (obj_campMine) :
				x = obj_campMine.x;
				y = obj_campMine.y;
				zSpeed = 1.5;
				z += 0.1;
				descending = true;
				image_index = round(shrinkage * (sprite_get_number(spr_playerShrinking)-1) / 100);
				sprite_index = spr_playerShrinking;
			break
			
		}
	}
}
else if (!obj_pickaxe.rotating && !onCooldown) {
	equiped = obj_pickaxe;
	onCooldown = true;
	obj_pickaxe.rotating = true;
}