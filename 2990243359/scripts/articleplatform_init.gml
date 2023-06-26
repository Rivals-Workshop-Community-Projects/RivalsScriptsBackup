//Sprites
sprite_index= sprite_get("tri_plat_spawn"); 
image_index=0;

shoulddie=false;
state=0;
state_timer=0;
hitstop=0;
hsp=0;
vsp=0;

spr_dir=player_id.spr_dir;
uses_shader=true;


can_be_grounded=false;
ignores_walls=true;
hit_wall=false;

