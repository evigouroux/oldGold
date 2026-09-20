
obj_player.alarm[0] = max(1, game_get_speed(gamespeed_fps)/3 - obj_mineManager.pistolLvl);
alarm[0] = game_get_speed(gamespeed_fps)/4;
instance_create_depth(obj_player.x + lengthdir_x(12, 180 + pushBack), (obj_player.y - 6) + lengthdir_y(12, 180 + pushBack), depth, obj_bullet);
obj_player.pushBack = pushBack;
obj_player.pushBackSpeed = 2;
obj_player.zSpeed = 1;
fired = true;
audio_play_sound(SFX_shoot, 1, false);