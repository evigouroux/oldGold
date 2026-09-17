
draw_sprite(spr_playerShadow, 0, x, y);
draw_sprite_ext(sprite_index, image_index, x, y - z, image_xscale, image_yscale, image_angle, c_white, 1);

if (!descending && instance_exists(currentFacility) && distance_to_object(currentFacility) <= facilityRange) {
	draw_sprite(spr_aButton, 0, currentFacility.x, currentFacility.y - 16);
}
