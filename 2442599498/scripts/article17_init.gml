//disco beam
timer = 0;

depth = 6;
sprite_index = sprite_get("disco_ball_beam");
mask_index = sprite_get("disco_ball_beam_hurt");

spawnx = undefined;
spawny = undefined;

colour = 0; //0 = white, 1 = blue

ball_id = undefined;

rotate = false;

angles = [105, 35, -40, -105];

position = undefined;

can_deal_damage = false;