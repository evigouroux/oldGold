var _vitesse = 0.75;
mp_potential_settings(180, 180, 5, true);

if (awake = false) && ((distance_to_object(obj_player) <= 32) || (distance_to_object(obj_explosion)) <= 64) {
	awake = true;
}

if awake = true && aggro = false && distance_to_object(obj_player) <= 64 {
	aggro = true;
}

if aggro == true {

	mp_potential_step_object(obj_player.x, obj_player.y ,_vitesse , obj_tileWall);
}