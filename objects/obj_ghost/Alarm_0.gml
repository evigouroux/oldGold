
alarm_set(0, 3);

if (active) {
	var _vitesse = 1;
	var _dir_x = lengthdir_x(_vitesse, point_direction(x, y, obj_player.x, obj_player.y));
	var _dir_y = lengthdir_y(_vitesse, point_direction(x, y, obj_player.x, obj_player.y));

	if (_dir_x != 0 || _dir_y != 0) {
		var _longueur = sqrt(_dir_x * _dir_x + _dir_y * _dir_y);
		_dir_x /= _longueur;
		_dir_y /= _longueur;
	}

	// Déplacement sur X, sans vérification de collision
	x += _dir_x * _vitesse;

	// Déplacement sur Y, sans vérification de collision 
	y += _dir_y * _vitesse;

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
}