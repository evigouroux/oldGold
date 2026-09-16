

switch(obj_player.image_index) {
	case (0) :
		image_angle = 90 - actualRotation;
		depth = obj_player.depth +1;
		image_index = 0;
		image_yscale = 1;
		pushBack = 270;
		target = instance_position(obj_player.x, obj_player.y-10, obj_tileWall);
	break;
	case (1) :
		image_angle = 90 + actualRotation;
		depth = obj_player.depth +1;
		image_index = 1;
		image_yscale = 1;
		pushBack = 225;
		target = instance_position(obj_player.x+10, obj_player.y-10, obj_tileWall);
	break;
	case (2) :
		image_angle = 0 + actualRotation;
		depth = obj_player.depth -1;
		image_index = 0;
		image_yscale = 1;
		pushBack = 180;
		target = instance_position(obj_player.x+10, obj_player.y-4, obj_tileWall);
	break;
	case (3) :
		image_angle = 0 + actualRotation;
		depth = obj_player.depth -1;
		image_index = 1;
		image_yscale = -1;
		pushBack = 135;
		target = instance_position(obj_player.x+10, obj_player.y+10, obj_tileWall);
	break;
	case (4) :
		image_angle = 270 + actualRotation;
		depth = obj_player.depth -1;
		image_index = 0;
		image_yscale = 1;
		pushBack = 90;
		target = instance_position(obj_player.x, obj_player.y+10, obj_tileWall);
	break;
	case (5) :
		image_angle = 270 - actualRotation;
		depth = obj_player.depth -1;
		image_index = 1;
		image_yscale = -1;
		pushBack = 45;
		target = instance_position(obj_player.x-10, obj_player.y+10, obj_tileWall);
	break;
	case (6) :
		image_angle = 180 - actualRotation;
		depth = obj_player.depth -1;
		image_index = 0;
		image_yscale = -1;
		pushBack = 0;
		target = instance_position(obj_player.x-10, obj_player.y-4, obj_tileWall);
	break;
	case (7) :
		image_angle = 180 - actualRotation;
		depth = obj_player.depth +1;
		image_index = 1;
		image_xscale = 1;
		pushBack = 315;
		target = instance_position(obj_player.x-10, obj_player.y-10, obj_tileWall);
	break;
}

if (rotating) {
	rotation -= 22.5;
	actualRotation = 45 * round(rotation/45);
	if (rotation <= -360) {
		rotation = 0;
		rotating = false;
		shocked = false;
		obj_player.alarm[0] = obj_player.pickaxeCooldown;
		
		if (instance_exists(target)) {
		
			shocked = true;
			obj_player.pushBack = pushBack;
			obj_player.pushBackSpeed = 3;
			obj_player.zSpeed = 2;
			rotation = 0;
			rotating = false;
		
			destroyTile(target, obj_player.x, obj_player.y, false);
		}
	}
}