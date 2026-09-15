z = max(z + zSpeed, 0);

if (z <= 0 && zSpeed < 0) {
	instance_create_depth(x, y, depth, obj_rubbleBreak);
	instance_destroy();	
}

zSpeed -= 0.1;