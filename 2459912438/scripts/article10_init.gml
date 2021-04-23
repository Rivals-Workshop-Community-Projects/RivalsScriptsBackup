//square blocks (destructable/non-destructable)
timer = 0;

depth = 4;
sprite_index = sprite_get("block");

destructable = false;

was_hit = false;
hit_timer = 0;

blockhsp = 0;
blockvsp = 0;
spawnx = undefined;
spawny = undefined;

arb_var = undefined;

can_deal_damage = false;