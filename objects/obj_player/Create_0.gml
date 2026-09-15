z = 0;
zSpeed = 0;
depth = -2
instance_create_depth(x, y, depth-1, obj_pickaxe);
pushBack = 0;
pushBackSpeed = 0;
pickaxeCooldown = game_get_speed(gamespeed_fps)/5;
onCooldown = false;