
draw_sprite(spr_playerShadow, 0, x, y);
draw_sprite_ext(sprite_index, image_index, x, y - z, image_xscale, image_yscale, image_angle, c_white, 1);

if (!descending && instance_exists(currentFacility) && distance_to_object(currentFacility) <= facilityRange) {
	draw_sprite(spr_aButton, 0, currentFacility.x, currentFacility.y - 16);
	draw_set_colour(make_color_rgb(146, 126, 35));
	draw_set_font(fo_pixelZoneSmall);
	draw_set_halign(fa_center);
	draw_set_valign(fa_center);
	draw_text(currentFacility.x, currentFacility.y - 36, currentFacility.description);
}
