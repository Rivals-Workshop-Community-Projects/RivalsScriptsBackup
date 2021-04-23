//disco ball
timer = 0;

depth = 4;
sprite_index = sprite_get("disco_ball");
mask_index = sprite_get("disco_ball_hurt");

spawnx = undefined;
spawny = undefined;

flash = false;

was_hit = false;
hit_timer = 0;

delay = undefined;
spd = undefined;
rate = undefined;

can_deal_damage = false;

disable_movement = true;