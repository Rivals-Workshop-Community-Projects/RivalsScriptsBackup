//arm projectile (arm)
timer = 0;

depth = 4;
sprite_index = asset_get("empty_sprite");
//sprite_index = sprite_get("arm_proj");
mask_index = sprite_get("arm_proj");

dir = 1;

was_hit = false;
hit_timer = 0;

armvsp = 0;

spawnx = undefined;
spawny = undefined;

slider_hit = false;
slider_timer = 0;

box_width = undefined;

can_deal_damage = false;