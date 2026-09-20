
var bullet = instance_create_depth(x, y, depth, obj_bulletElder);
audio_play_sound(random_192, 1, false);

bullet = instance_create_depth(x, y, depth, obj_bulletElder);
bullet.direction -= 20;
bullet = instance_create_depth(x, y, depth, obj_bulletElder);
bullet.direction -= 40;
bullet = instance_create_depth(x, y, depth, obj_bulletElder);
bullet.direction += 20;
bullet = instance_create_depth(x, y, depth, obj_bulletElder);
bullet.direction += 40;