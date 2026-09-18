
if (room == rm_camp || obj_mineManager.actualisingCash > 0) {
	draw_sprite(spr_wallet, 0, x + cam_width/2, y + cam_width/2 - 74);

	draw_set_font(fo_pixelZoneSmall);
	draw_set_colour(make_colour_rgb(9, 7, 2));
	draw_set_halign(fa_center);
	draw_set_valign(fa_center);
	draw_text(x + cam_width/2, y + cam_width/2 - 74, string(obj_mineManager.displayedCash) + " $");
}

if (room == rm_mine && obj_mineManager.equiped == obj_dynamite) {
	draw_sprite(spr_wallet, 0, x + cam_width/2 + 50, y + cam_width/2 - 74);

	draw_set_font(fo_pixelZoneSmall);
	draw_set_colour(make_colour_rgb(9, 7, 2));
	draw_set_halign(fa_center);
	draw_set_valign(fa_center);
	draw_text(x + cam_width/2 + 50, y + cam_width/2 - 74, "TNT : "+string(obj_mineManager.dynamiteStash));	
}