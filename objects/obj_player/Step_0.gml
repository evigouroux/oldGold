var _vitesse = 2;

var _dir_x = keyboard_check(vk_right) - keyboard_check(vk_left);
var _dir_y = keyboard_check(vk_down) - keyboard_check(vk_up);

if (_dir_x != 0 || _dir_y != 0) {
    var _longueur = sqrt(_dir_x * _dir_x + _dir_y * _dir_y);
    _dir_x /= _longueur;
    _dir_y /= _longueur;
}

// Déplacement sur X, avec vérification de collision
x += _dir_x * _vitesse;
if (place_meeting(x, y, obj_tileWall)) {
    x -= _dir_x * _vitesse; // 
}

// Déplacement sur Y, avec vérification de collision 
y += _dir_y * _vitesse;
if (place_meeting(x, y, obj_tileWall)) {
    y -= _dir_y * _vitesse;
}