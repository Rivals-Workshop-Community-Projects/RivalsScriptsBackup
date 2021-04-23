//heart2heart heart
timer = 0;

depth = 4;
sprite_index = sprite_get("heart");

spawnx = undefined;
spawny = undefined;

flash = false;
flash_timer = 0;

was_hit = false;
hit_timer = 0;

bump_x = 0;
bump_y = 0;

hit_counter = 0;
dmg_counter = 0;

explode = false;
explode_timer = 0;

star_vfx = hit_fx_create(sprite_get("star"), 40);

can_deal_damage = false;

move_to = [0,0]