switch(obj_player.image_index) {
	case (0) :
		depth = obj_player.depth +1;
		direction = 90;
	break;
	case (1) :
		depth = obj_player.depth -1;
		direction = 45;
	break;
	case (2) :
		depth = obj_player.depth -1;
		direction = 0;
	break;
	case (3) :
		depth = obj_player.depth -1;
		direction = 315;
	break;
	case (4) :
		depth = obj_player.depth -1;
		direction = 270;
	break;
	case (5) :
		depth = obj_player.depth +1;
		direction = 225;
	break;
	case (6) :
		depth = obj_player.depth +1;
		direction = 180;
	break;
	case (7) :
		depth = obj_player.depth +1;
		direction = 135;
	break;
}

speed = 1;
z = 0.1;
zSpeed = 2;