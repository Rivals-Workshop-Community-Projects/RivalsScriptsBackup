//article1_init

sprite_index = asset_get("empty_sprite");
fc_timer = 2;
max_despawn_timer = 65;
explosions_to_do = 0;
despawn_timer = max_despawn_timer;
img_ind = 10;
parried = -1;
kirby = noone;

spr_dir = player_id.spr_dir;
fc_hitbox[0] = noone;
fc_hitbox[1] = noone;
fc_hitbox[2] = noone;

init = true;
can_be_grounded = false;
ignores_walls = true;
uses_shader = true;

depth = -10;

x = floor(x);
y = floor(y);
