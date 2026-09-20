
draw_set_font(fo_pixelZoneBig);
draw_set_halign(fa_center);
draw_set_valign(fa_top);

draw_set_colour(make_colour_rgb(9, 7, 2));

draw_rectangle(x-300, y-300, x+300, y+300, false);

draw_set_colour(make_colour_rgb(224, 207, 126));

draw_text(x, y-75, baseText);
draw_set_font(fo_pixelZoneSmall);
draw_text(x, y-50, text);