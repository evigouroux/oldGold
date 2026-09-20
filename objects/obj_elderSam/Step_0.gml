
var _vitesse = 1;
var _dir_x = 0;
var _dir_y = 0;

if (instance_exists(obj_dialogue)) {
	exit;	
}


if (distance_to_point(room_width/2, room_height/2) > 160) {
	_dir_x = lengthdir_x(_vitesse, point_direction(x, y, room_width/2, room_height/2))
	_dir_y = lengthdir_y(_vitesse, point_direction(x, y, room_width/2, room_height/2))
}
if (distance_to_object(obj_player) < 48) {
	
	if (_dir_x != 0 || _dir_y != 0) {
		_dir_x = mean(_dir_x, lengthdir_x(_vitesse, point_direction(obj_player.x, obj_player.y, x, y)));
		_dir_y = mean(_dir_y, lengthdir_y(_vitesse, point_direction(obj_player.x, obj_player.y, x, y)));
	}
	else {
		_dir_x = lengthdir_x(_vitesse, point_direction(obj_player.x, obj_player.y, x, y));
		_dir_y = lengthdir_y(_vitesse, point_direction(obj_player.x, obj_player.y, x, y));
	}
}


if (attackReady) {
	var weaponChoice = choose(1,2);
	alarm[weaponChoice] = game_get_speed(gamespeed_fps)*1
	attackReady = false;
	alarm[0] = game_get_speed(gamespeed_fps)*5;	
}

if (_dir_x != 0 || _dir_y != 0) {
	var _longueur = sqrt(_dir_x * _dir_x + _dir_y * _dir_y);
	_dir_x /= _longueur;
	_dir_y /= _longueur;
}

// Déplacement sur X, sans vérification de collision
x += _dir_x * _vitesse;

// Déplacement sur Y, sans vérification de collision 
y += _dir_y * _vitesse;

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