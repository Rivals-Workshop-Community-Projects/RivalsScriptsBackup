//
sprite_index = sprite_get("waluigi_projectile")

waluigi_target = noone;
last_hsp = 0;
last_vsp = 0;
waluigi_timer = 0;

state_timer = 0;

ignores_walls = false; 

hsp = 0;
vsp = 0;

hit_wall = false; 

spr_dir = player_id.spr_dir;