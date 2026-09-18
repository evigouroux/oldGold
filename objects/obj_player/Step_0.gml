
if (instance_exists(obj_mineName) || instance_exists(obj_dialogue)) {
	exit;	
}

if (room == rm_camp) {
	currentFacility = instance_nearest(x, y, obj_facility);
}

if (descending) {
	
	z += zSpeed;
	zSpeed -= 0.1;
	
	if (zSpeed < 0 && shrinkage < 100) {
		shrinkage += 2.7;
		if (shrinkage > 65) {
			sprite_index = spr_void;	
		}
		image_index = round(shrinkage * (sprite_get_number(spr_playerShrinking)-1) / 100);
	}
	
	if (z <= -8) {
		if (room == rm_camp) {
			room_goto(rm_mine);
			instance_destroy();
		}
		else {
			with (obj_tile) {
				instance_destroy();	
			}
			with(obj_nugget) {
				instance_destroy();	
			}
			instance_destroy();
			obj_mineManager.currentMine++;
			loadMine(obj_mineManager.mines[obj_mineManager.currentMine]);
		}
	}
	exit;
}

if (pushBackSpeed > 0) {
	if (!instance_position(x + lengthdir_x(pushBackSpeed +2, pushBack), y + lengthdir_y(pushBackSpeed +2, pushBack), obj_tileWall)) {
		x = x + lengthdir_x(pushBackSpeed, pushBack);
		y = y + lengthdir_y(pushBackSpeed, pushBack);
		pushBackSpeed = max (0, pushBackSpeed -1);
	}
	else {
		pushBackSpeed = 0;	
	}
}

var _vitesse = 1.3;
var _dir_x = keyboard_check(vk_right) - keyboard_check(vk_left);
var _dir_y = keyboard_check(vk_down) - keyboard_check(vk_up);

if (_dir_x != 0 || _dir_y != 0) {
	var _longueur = sqrt(_dir_x * _dir_x + _dir_y * _dir_y);
	_dir_x /= _longueur;
	_dir_y /= _longueur;
}

// Déplacement sur X, avec vérification de collision
x += _dir_x * _vitesse;
if (place_meeting(x, y, obj_tileWall) || place_meeting(x, y, obj_blocker)) {
	x -= _dir_x * _vitesse; // 
}

// Déplacement sur Y, avec vérification de collision 
y += _dir_y * _vitesse;
if (place_meeting(x, y, obj_tileWall) || place_meeting(x, y, obj_blocker)) {
	y -= _dir_y * _vitesse;
}

// Petits bons rigolos si on est en mouvement
z = min(max (z + zSpeed, 0), 8);
if (z == 0 && (abs(_dir_x) > 0 || abs(_dir_y) > 0)) {
	zSpeed = 1;
	instance_create_depth(x, y, -1, obj_dust);
}
else if (z > 0) {
	zSpeed -= 0.25;
}

if (sign(_dir_x) == 0 && sign(_dir_y) == -1) {
	image_index = 0;
}
else if (sign(_dir_x) == 1 && sign(_dir_y) == -1) {
	image_index = 1;
}
else if (sign(_dir_x) == 1 && sign(_dir_y) == 0) {
	image_index = 2;
}
else if (sign(_dir_x) == 1 && sign(_dir_y) == 1) {
	image_index = 3;
}
else if (sign(_dir_x) == 0 && sign(_dir_y) == 1) {
	image_index = 4;
}
else if (sign(_dir_x) == -1 && sign(_dir_y) == 1) {
	image_index = 5;
}
else if (sign(_dir_x) == -1 && sign(_dir_y) == 0) {
	image_index = 6;
}
else if (sign(_dir_x) == -1 && sign(_dir_y) == -1) {
	image_index = 7;
}