x = obj_player.x;
y = obj_player.y - 8;

switch(obj_player.image_index) {
	case (0) :
		image_angle = 90 + rotation;
		depth = obj_player.depth +1;
		image_index = 0;
		image_yscale = 1;
		pushBack = 270;
		target = instance_position(obj_player.x, obj_player.y-10, obj_tileWall);
	break;
	case (1) :
		image_angle = 90 + rotation;
		depth = obj_player.depth +1;
		image_index = 1;
		image_yscale = 1;
		pushBack = 225;
		target = instance_position(obj_player.x+10, obj_player.y-10, obj_tileWall);
	break;
	case (2) :
		image_angle = 0 + rotation;
		depth = obj_player.depth -1;
		image_index = 0;
		image_yscale = 1;
		pushBack = 180;
		target = instance_position(obj_player.x+10, obj_player.y-4, obj_tileWall);
	break;
	case (3) :
		image_angle = 0 + rotation;
		depth = obj_player.depth -1;
		image_index = 1;
		image_yscale = -1;
		pushBack = 135;
		target = instance_position(obj_player.x+10, obj_player.y+10, obj_tileWall);
	break;
	case (4) :
		image_angle = 270 + rotation;
		depth = obj_player.depth -1;
		image_index = 0;
		image_yscale = 1;
		pushBack = 90;
		target = instance_position(obj_player.x, obj_player.y+10, obj_tileWall);
	break;
	case (5) :
		image_angle = 270 + rotation;
		depth = obj_player.depth -1;
		image_index = 1;
		image_yscale = -1;
		pushBack = 45;
		target = instance_position(obj_player.x-10, obj_player.y+10, obj_tileWall);
	break;
	case (6) :
		image_angle = 180 - rotation;
		depth = obj_player.depth -1;
		image_index = 0;
		image_yscale = -1;
		pushBack = 0;
		target = instance_position(obj_player.x-10, obj_player.y-4, obj_tileWall);
	break;
	case (7) :
		image_angle = 180 + rotation;
		depth = obj_player.depth +1;
		image_index = 1;
		image_xscale = 1;
		pushBack = 315;
		target = instance_position(obj_player.x-10, obj_player.y-10, obj_tileWall);
	break;
}

if (rotating) {
	rotation -= 22.5;
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
		
			with(target) {
				instance_destroy();
				var tile = instance_create_depth(x, y, depth, obj_tileGround);

				tile.image_index = image_index;
				setTileSprite(tile, true);
				obj_mineManager.mines[obj_mineManager.currentMine] = obj_tileGround;
	
				for (var i = 0; i < 5; i++) {
					var rubble = instance_create_depth(x + tileSize/2 + irandom_range(-8, 8), y + tileSize/2 + irandom_range(-8, 8), -4, obj_rubble);
					var facing = point_direction(rubble.x, rubble.y, obj_player.x, obj_player.y);
					rubble.direction = irandom_range(facing * 0.70, facing * 1.30);
					rubble.speed = 1.1;
				}
			}
		}
	}
}