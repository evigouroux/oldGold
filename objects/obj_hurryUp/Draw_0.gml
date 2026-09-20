draw_set_halign(fa_center);
draw_set_valign(fa_center);


draw_set_colour(make_colour_rgb(9, 7, 2));

draw_set_font(fo_pixelZoneSmall);

draw_text(obj_player.x, obj_player.y -19, "20s remaining !");
draw_text(obj_player.x, obj_player.y -21, "20s remaining !");
draw_text(obj_player.x-1, obj_player.y -20, "20s remaining !");
draw_text(obj_player.x+1, obj_player.y -20, "20s remaining !");

if (timer % 4 == 0) {
	draw_set_colour(make_colour_rgb(224, 207, 126));
}
else {
	draw_set_colour(make_colour_rgb(197, 171, 48));
}

draw_text(obj_player.x, obj_player.y -20, "20s remaining !");