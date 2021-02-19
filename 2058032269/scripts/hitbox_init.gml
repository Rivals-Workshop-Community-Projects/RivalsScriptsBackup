//hitbox_init.gml

ownerdirection = player_id.spr_dir;

vfx_timer = 0;

chase = player_id.chase_id;

dir = player_id.spr_dir*(-1);

chase_id = noone;
chase_x = 0;
chase_y = 0;
chase_hsp = 0;
chase_vsp = 0;

rebound_hsp = 0;
rebound_vsp = 0;

cHeight = player_id.char_height/2;

rebound_hit = 5;
rebound_hit_timer = 0;