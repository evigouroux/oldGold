
image_index = obj_player.image_index;

switch(obj_player.image_index) {
	case (0) :
		depth = obj_player.depth +1;
		pushBack = 270;
	break;
	case (1) :
		depth = obj_player.depth -1;
		pushBack = 225;
	break;
	case (2) :
		depth = obj_player.depth -1;
		pushBack = 180;
	break;
	case (3) :
		depth = obj_player.depth -1;
		pushBack = 135;
	break;
	case (4) :
		depth = obj_player.depth -1;
		pushBack = 90;
	break;
	case (5) :
		depth = obj_player.depth +1;
		pushBack = 45;
	break;
	case (6) :
		depth = obj_player.depth +1;
		pushBack = 0;
	break;
	case (7) :
		depth = obj_player.depth +1;
		pushBack = 315;
	break;
}