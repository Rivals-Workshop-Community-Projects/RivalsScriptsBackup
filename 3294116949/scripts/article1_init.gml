//article1_init
//Variables defined when the article spawns


//STATE LIST FOR AXE:
// 1.- THROWN
// 2.- RETURN
// 3.- STUCK



state_timer_pause=false; //hitpause logic variables
anim_timer_pause=false;
freeze=0; //freeze frames, this helps with hitpause logic for rishi
uses_shader=true;
is_hittable=true
hittable_hitpause_mult = 0;

ignores_walls = false;

//State bs
state=1;
state_timer=0;
return_hit=0;

 
//AXE UNIQUE VARIABLES

axe_thrown_timer=16;
axe_begin_idle=40;
axe_begin_return=70;

//Hitbox
axe_hitbox = create_hitbox(AT_NSPECIAL, 1, x, y);
// axe_hitbox_idle=noone;
// axe_hitbox_return=noone;
spr_dir = player_id.spr_dir
can_be_grounded = false;
hsp=16*spr_dir;
prev_hsp = hsp;
vsp=0;
returning = false;
return_magnintude = 0;
return_dir = 0;
return_aim_strength = 0;
exist_timer=0;
axe_vanishes=false; //flag that determines despawn animation
axe_hitbox.spr_dir = spr_dir
was_parried = false;
was_hit = false;
normal_return = false;
ignited = false;

sound_play(asset_get("sfx_spin_longer"), false, noone, true, .9)


axetrailing = hit_fx_create( sprite_get( "spinaxe1" ), 18 );
axetrailing2 = hit_fx_create( sprite_get( "spinaxe2" ), 12 );

//animation and sprite drawing variables
sprite_index=sprite_get("spinning_axe1"); //starting sprite should be idle
image_index=0;
mask_index = sprite_get("spinning_axe_mask1");
anim_timer=0;
spr_dir=player_id.spr_dir;

imanaxe = true;