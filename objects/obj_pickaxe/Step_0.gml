

switch(obj_player.image_index) {
	case (0) :
		image_angle = 90 - actualRotation;
		depth = obj_player.depth +1;
		image_index = 0;
		image_yscale = 1;
		pushBack = 270;
		targetX = obj_player.x;
		targetY = obj_player.y-10;
	break;
	case (1) :
		image_angle = 90 + actualRotation;
		depth = obj_player.depth +1;
		image_index = 1;
		image_yscale = 1;
		pushBack = 225;
		targetX = obj_player.x+10;
		targetY = obj_player.y-10;
	break;
	case (2) :
		image_angle = 0 + actualRotation;
		depth = obj_player.depth -1;
		image_index = 0;
		image_yscale = 1;
		pushBack = 180;
		targetX = obj_player.x+10;
		targetY = obj_player.y-4;
	break;
	case (3) :
		image_angle = 0 + actualRotation;
		depth = obj_player.depth -1;
		image_index = 1;
		image_yscale = -1;
		pushBack = 135;
		targetX = obj_player.x+10;
		targetY = obj_player.y+10;
	break;
	case (4) :
		image_angle = 270 + actualRotation;
		depth = obj_player.depth -1;
		image_index = 0;
		image_yscale = 1;
		pushBack = 90;
		targetX = obj_player.x;
		targetY = obj_player.y+10;
	break;
	case (5) :
		image_angle = 270 - actualRotation;
		depth = obj_player.depth -1;
		image_index = 1;
		image_yscale = -1;
		pushBack = 45;
		targetX = obj_player.x-10;
		targetY = obj_player.y+10;
	break;
	case (6) :
		image_angle = 180 - actualRotation;
		depth = obj_player.depth -1;
		image_index = 0;
		image_yscale = -1;
		pushBack = 0;
		targetX = obj_player.x-10;
		targetY = obj_player.y-4;
	break;
	case (7) :
		image_angle = 180 - actualRotation;
		depth = obj_player.depth +1;
		image_index = 1;
		image_xscale = 1;
		pushBack = 315;
		targetX = obj_player.x-10;
		targetY = obj_player.y-10;
	break;
}

if (rotating) {
	rotation -= 22.5;
	actualRotation = 45 * round(rotation/45);
	if (rotation <= -360) {
		rotation = 0;
		rotating = false;
		shocked = false;
		obj_player.alarm[0] = max(1, obj_player.pickaxeCooldown - obj_mineManager.diggingSpeedLvl/8);
		
		var list = ds_list_create();
		collision_circle_list(targetX, targetY, 1 + obj_mineManager.diggingPowerLvl * 8, obj_tileWall, false, true, list, false);		
		
		if ( ds_list_size(list) > 0) {
		
			shocked = true;
			obj_player.pushBack = pushBack;
			obj_player.pushBackSpeed = max (0, 3 - obj_mineManager.diggingSpeedLvl/5);
			obj_player.zSpeed = max(0, 2 - obj_mineManager.diggingSpeedLvl/10);
			rotation = 0;
			rotating = false;
			audio_play_sound(Hit23, 1, false);
		
			for (var i = 0; i < ds_list_size(list); i++) {
				var current = list[|i];
				destroyTile(current, x, y, false);
			}
			ds_list_destroy(list);
		}
	}
}