//yellow/white leg projectile
timer = 0;

depth = 4;
sprite_index = sprite_get("leg_proj");
mask_index = sprite_get("leg_proj_hurt");
image_xscale = 1;
image_yscale = 1;

colour = "white";

current_hitbox = 0; //id of hitbox currently colliding with

hit_cooldown = 0;

move_timer = 0; //increments when yellow, is moving

legspeed = 0; //speed of oscillation
legtime = 0; //modifies cycle time

spawnx = undefined;
spawny = undefined;

can_deal_damage = false;