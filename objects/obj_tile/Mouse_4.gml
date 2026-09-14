
instance_destroy();

if (object_index == obj_tileGround) {
	instance_create_depth(x, y, depth, obj_tileWall);
}
else if (object_index == obj_tileWall) {
	instance_create_depth(x, y, depth, obj_tileGround);
}
