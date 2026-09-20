
draw_self();

if (ready) {
	draw_set_colour(make_colour_rgb(9, 7, 2));
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	draw_set_font(fo_pixelZoneSmall);

	var length = string_length(current);
	if (currentChar < length){
		currentChar += charSpeed;
	}
	else if (alarm[0] <= 0) {
		alarm_set(0, game_get_speed(gamespeed_fps)*2.3);	
	}

	var displayedText = string_copy(current, 1, currentChar);
	draw_text_ext(x - sprite_width/2 + 10, y - sprite_height/2 -16, displayedText, 16, textWidth);
}