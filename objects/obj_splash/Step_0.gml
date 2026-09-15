if (y < room_height*0.6) {
	y = min(y +2, room_height*0.6);
	if (y == room_height*0.6) {
		splotch = true;
	}
}

if (splotch) {
	image_yscale -= 0.1;
	image_xscale += 0.1;
	if (image_yscale <= 0.1) {
		splotch = false;	
	}
}
else if (image_yscale < 1) {
	image_yscale += 0.05;
	image_xscale -= 0.05;
	if (image_yscale == 1) {
		room_goto(rm_test);	
	}
}