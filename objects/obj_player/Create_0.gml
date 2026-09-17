z = 0;
zSpeed = 0;
depth = -2
instance_create_depth(x, y, depth-1, obj_pickaxe);
instance_create_depth(x, y, depth-1, obj_pistol);
instance_create_depth(x, y, depth-1, obj_dynamite);
pushBack = 0;
pushBackSpeed = 0;
pickaxeCooldown = game_get_speed(gamespeed_fps)/5;
onCooldown = false;
descending = false;
shrinkage = 0;
equiped = obj_pickaxe;
secondary = obj_pistol;
currentFacility = noone;
facilityRange = 8;