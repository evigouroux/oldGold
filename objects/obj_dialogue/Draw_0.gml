
draw_self();

draw_set_colour(make_colour_rgb(9, 7, 2));
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_font(fo_pixelZoneSmall);
draw_text_ext(x - sprite_width/2 + 10, y - sprite_height/2 -16, content, 16, sprite_width - 12);

if (choice) {
	draw_sprite(spr_dialogueAnswer, 0, obj_camera.x + obj_camera.cam_width, obj_camera.y + 97);
	
	if (choiceYes) {
		draw_sprite(spr_dialogueArrow, 0, obj_camera.x + obj_camera.cam_width - 28, obj_camera.y + 71);
	}
	else {
		draw_sprite(spr_dialogueArrow, 0, obj_camera.x + obj_camera.cam_width - 28, obj_camera.y + 86);
	}
	
}