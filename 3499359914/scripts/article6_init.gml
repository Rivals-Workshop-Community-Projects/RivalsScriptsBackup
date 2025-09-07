//Healing Stars

sprite_index = asset_get("empty_sprite");
mask_index = sprite_get("testball");

//Physics
walk_spd = 1;

grav = 0.3;
max_fall = 8;

can_be_grounded = true;
ignores_walls = false;

//Life and death
star_lifetime = 600;
star_collect = false;

player_collected = noone;

//Animation
spr_cur = sprite_get("star");
img_cur = 0;
opa_cur = 1;