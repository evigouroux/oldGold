
var otherPushBack = 0

switch(other.image_index) {
	case (0) :
		otherPushBack = 270;
	break;
	case (1) :
		otherPushBack = 225;
	break;
	case (2) :
		otherPushBack = 180;
	break;
	case (3) :
		otherPushBack = 135;
	break;
	case (4) :
		otherPushBack = 90;
	break;
	case (5) :
		otherPushBack = 45;
	break;
	case (6) :
		otherPushBack = 0;
	break;
	case (7) :
		otherPushBack = 315;
	break;
}

audio_play_sound(SFX_steal, 1, false);
other.pushBack = otherPushBack;
other.pushBackSpeed = 8;

obj_mineManager.cash = max (0, obj_mineManager.cash-10);