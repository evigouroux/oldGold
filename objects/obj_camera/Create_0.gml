cam = camera_create();
cam_width = 160;
cam_height = 144;
depth = -5;
camera_set_view_pos(cam, x - cam_width/2, y-cam_height/2);

camera_set_view_size(cam, cam_width, cam_height);
view_camera[0] = cam;

// objet à suivre
target = obj_player;

// vitesse de lissage 
lerp_speed = 1;
