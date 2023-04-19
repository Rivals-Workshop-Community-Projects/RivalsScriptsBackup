//Anti-lame checker

//aka "hi I found a place where I can sit in the chair indefinitely and drag the match on"

//please do not do this :(

//sprite_index = sprite_get("lamebox");	// troubleshooting purposes!
mask_index = sprite_get("lamebox");

can_be_grounded = true;
ignores_walls = false;
hit_wall = false;

eust_lame_grav = player_id.gravity_speed;
lame_maxf = player_id.max_fall;
eust_lameBounces = 0;
eust_lameDir = player_id.spr_dir;