//blasters
timer = 0;
state = 0;
state_timer = 0;
beam_timer = 0;
angle = 0; //angle of rotation
angleEnd = undefined; //end angle target
moveDirX = undefined; //initial x direction of summoning movement
moveDirY = undefined; //initial y direction of summoning movement
moveSpeed = 10;
silent = 0; //0 = normal, 1 = silent charging, 2 = silent firing, 3 = totally silent

create_beam = false; //when tru, will create a blaster beam

scaleX= 1;
scaleY = 1;
delayFire = 0; //number of frames to delay firing

sprite_index = asset_get("empty_sprite");

mask_index = sprite_get("gaster_blaster");

depth = -5;