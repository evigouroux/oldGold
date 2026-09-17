
instance_destroy();
var tile = noone;

if (object_index == obj_tileGround) {
	tile = instance_create_depth(x, y, depth, obj_tileWall);
}
else if (object_index == obj_tileWall) {
	tile = instance_create_depth(x, y, depth, obj_tileGround);
}