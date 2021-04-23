//bomb projectile
timer = 0;

depth = 4;
sprite_index = sprite_get("bomb");
mask_index = sprite_get("bomb_hurt");

was_hit = false;
hit_timer = 0;

exploded = false;
explode_timer = 0;

bombspeed = 0;
spawnx = undefined;
spawny = undefined;

can_deal_damage = false;