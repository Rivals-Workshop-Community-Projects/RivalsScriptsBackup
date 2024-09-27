//article1_init
//Variables defined when the article spawns


//STATE LIST FOR AXE:
// 1.- THROWN
// 2.- RETURN
// 3.- STUCK

sound_play(asset_get("sfx_rag_mark"), false, noone, true, .8)



state_timer_pause=false; //hitpause logic variables
anim_timer_pause=false;
freeze=0; //freeze frames, this helps with hitpause logic for rishi
uses_shader=true;
is_hittable=false;
ignores_walls = false;

can_be_grounded = false;

orig_depth = depth;   

//State bs
state=1;
state_timer=0;

 
//LAMP UNIQUE VARIABLES

who_hit="----";
lamp_hitbox = noone;
lamp_who_exp = noone;
lamp_boom = false;
hsp=0;
vsp=0;
exist_timer=0;
// lamp_no=player_id.lamp_number;

explode = hit_fx_create( sprite_get( "explosion_area" ), 10 );


//animation and sprite drawing variables
sprite_index=sprite_get("lamp"); //starting sprite should be idle
image_index=0;
anim_timer=0;
spr_dir=player_id.spr_dir;

in_use = false;

imalamp = true;