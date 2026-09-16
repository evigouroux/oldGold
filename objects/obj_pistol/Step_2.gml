
x = round(obj_player.x);
y = round(obj_player.y - obj_player.z);

if (fired) {
	x += lengthdir_x(3, pushBack);
	y += lengthdir_y(3, pushBack);	
}

x = round(x);
y = round(y);
