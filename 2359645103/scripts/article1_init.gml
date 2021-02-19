//article1_init

can_be_grounded = true;
ignores_walls = false;
uses_shader = false;

sprite_index = sprite_get("rat");
mask_index = sprite_get("rat_box");
image_index = 3;

animation_timer = 0;

bashed = 0;

spr_dir = player_id.spr_dir;


vsp = -12;
hsp = 3 * spr_dir;

create_hitbox( AT_EXTRA_1, 1, x, y);

detonate = false;