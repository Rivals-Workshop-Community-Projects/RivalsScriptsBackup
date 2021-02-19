//article2_init.gml

can_be_grounded = true;
ignores_walls = false;
uses_shader = true;
sprite_index = sprite_get("proj_greaterdog");
spr_dir = player_id.spr_dir;
hsp = player_id.spr_dir * 9;
vsp = -2;

player_id.greaterdog_object = self;
player_id.greaterdog_timer = 1000;
dog_particle = hit_fx_create( sprite_get("particles"), 12);

active_mode = true;
attack_phase = 0;
has_leap = false;
has_air_leap = true;

target_x = player_id.hit_player_obj.x;
target_y = player_id.hit_player_obj.y;

rand_x = 0;
rand_y = 0;