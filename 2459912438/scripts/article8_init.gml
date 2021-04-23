//mini mtt
timer = 0;

depth = 4;
sprite_index = sprite_get("mini_mtt");
mask_index = sprite_get("mini_mtt_hurt");

was_hit = false;
hit_timer = 0;

minihsp = 0;
minivsp = 0;
spawnx = undefined;
spawny = undefined;

throw_hearts = false;
throw_timer = 0;

breakfx1 = hit_fx_create(sprite_get("mini_mtt_break1"), 20);
breakfx2 = hit_fx_create(sprite_get("mini_mtt_break2"), 20);
breakfx3 = hit_fx_create(sprite_get("mini_mtt_break3"), 20);

can_deal_damage = false;