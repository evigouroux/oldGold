if (!instance_exists(target)) exit;

// position actuelle de la caméra
var _cam_x = camera_get_view_x(cam);
var _cam_y = camera_get_view_y(cam);

// position cible (centrée sur le joueur)
var _target_x = target.x - cam_width / 2;
var _target_y = target.y - cam_height / 2;

// interpolation douce
var _new_x = lerp(_cam_x, _target_x, lerp_speed);
var _new_y = lerp(_cam_y, _target_y, lerp_speed);

// empêcher la caméra de sortir de la room
_new_x = clamp(_new_x, 0, room_width - cam_width);
_new_y = clamp(_new_y, 0, room_height - cam_height);

camera_set_view_pos(cam, _new_x, _new_y);