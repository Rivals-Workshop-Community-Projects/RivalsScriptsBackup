//hitbox_init.gml

ownerdirection = player_id.spr_dir;
//if attack == AT_NSPECIAL { proj_angle = darctan2(-vsp*spr_dir, hsp*spr_dir); }
if (player_id.current_shot != 4) { proj_angle = darctan2(-vsp*spr_dir, hsp*spr_dir); }

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

rHSP = (hsp*-1)*5;
rVSP = (vsp*-1)*5;