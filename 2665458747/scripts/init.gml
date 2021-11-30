hurtbox_spr = sprite_get("Croaghurtbox");
crouchbox_spr = asset_get("ex_guy_crouch_box");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 42;
idle_anim_speed = .1;
crouch_anim_speed = .2;
walk_anim_speed = .18;
dash_anim_speed = .25;
pratfall_anim_speed = .25;

walk_speed = 1.2;
walk_accel = 0.2;
walk_turn_time = 6;
initial_dash_time = 14;
initial_dash_speed = 6;
dash_speed = 7;
dash_turn_time = 12;
dash_turn_accel = 1.65;
dash_stop_time = 4;
dash_stop_percent = 1; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .7;
moonwalk_accel = 1.4;
jump_start_time = 5;
jump_speed = 10.5;
short_hop_speed = 6;
djump_speed = 8.25;
leave_ground_max = 5; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 6; //the maximum hsp you can have when jumping from the ground
air_max_speed = 6; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3.5; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .4;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .06;
max_djumps = 1;
double_jump_time = 40; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 6;
walljump_vsp = 11.5;
walljump_time = 12;
max_fall = 13; //maximum fall speed without fastfalling
fast_fall = 13; //fast fall speed
gravity_speed = .45;
hitstun_grav = .5;
knockback_adj = 1.1; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 3;
wave_land_time = 9;
wave_land_adj = 1.2; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .04; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 2;
crouch_active_frames = 15;
crouch_recovery_frames = 0;

//parry animation frames
dodge_startup_frames = 2;
dodge_active_frames = 2;
dodge_recovery_frames = 2;

//tech animation frames
tech_active_frames = 1;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 2
techroll_active_frames = 2;
techroll_recovery_frames = 2;
techroll_speed = 9;

//airdodge animation frames
air_dodge_startup_frames = 2;
air_dodge_active_frames = 2;
air_dodge_recovery_frames = 2;
air_dodge_speed = 8;

//roll animation frames
roll_forward_startup_frames = 1;
roll_forward_active_frames = 9;
roll_forward_recovery_frames = 2;
roll_back_startup_frames = 1;
roll_back_active_frames = 9;
roll_back_recovery_frames = 2;
roll_forward_max = 9; //roll speed
roll_backward_max = 9;

land_sound = sound_get("sm-land");
landing_lag_sound = sound_get("sm-landlag");
waveland_sound = sound_get("sm-waveland");
jump_sound = sound_get("dp-hop");
djump_sound = sound_get("dp-djump");
air_dodge_sound = sound_get("sm-airdodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

small_sprites = 1;

set_victory_bg( sprite_get( "croag_victory_bg" ));

//Croagunk
nair_stall = true;
bair_stall = true;

croagfstrongcharge = 0;

bounce_angle = 0;
bounce_stretch = 0;
bounce_offset = 0;

bounce_hit = false;
bounce_fall = 0;
bounce_limit = 2;
bounce_transp = 0.2;

button_down = 0;
poison_sting_charge = 0;
sting_damage = 1;
sting_offset_x = 38;
sting_offset_y = -28;
sting_charged = false;
sting_pause = 0;
sting_pause_scaling = 0;
sting_angle1 = 0;
sting_angle2 = 0;
sting_angle3 = 0;

sludgecharge = 0;

croagrespawntxtbox = 0;
ballcapsuleeffect = true;

croagfspecused = false;

suckerpose = 0;
suckerpunchsludge = false;

rivalsdevsarestupid_idlevar = 0;
rivalsdevsarestupid_walkvar = 0;
rivalsdevsarestupid_dashvar = 0;

afterimage_x = 0;
afterimage_y = 0;

knockoffvisualcooldown = 0;

croagberry = 0;
croagbelchcharged = false;

//stance
//Toxic Stance = 1
//Punish Stance = 2
croagstance = 1;

//victory   
set_victory_theme(sound_get("idk"));

introTimer = -2;
//setting it to -4 should prevent the first few frames of the animation from being blocked by the screen opening. 
//If it's slightly off, feel free to mess with it.
introTimer2 = 0;
introTimer3 = 0;
introPoof = true;

//hfx
airdodge_poof = hit_fx_create( sprite_get( "airdodge_poof" ), 30 );
bounce_fx = hit_fx_create( sprite_get( "bounce_fx" ), 15 );
bounce_land_fx = hit_fx_create( sprite_get( "bounce_land_fx" ), 10 );
poison_fx = hit_fx_create( sprite_get( "poison_fx" ), 15 );
spit_fx = hit_fx_create( sprite_get( "spit" ), 12 );
tipperfx = hit_fx_create( sprite_get( "tipperfx" ), 30 );
tipperfx2 = hit_fx_create( sprite_get( "tipperfx2" ), 30 );
sludgebombsmall = hit_fx_create( sprite_get( "sludgebombsmall" ), 30 );
sludgebombmed = hit_fx_create( sprite_get( "sludgebombmed" ), 30 );
sludgebombbig = hit_fx_create( sprite_get( "sludgebombbig" ), 30 );
bombset = hit_fx_create( sprite_get( "bombset" ), 14 );
dissipate = hit_fx_create( sprite_get( "dissipate" ), 35 );
ballcapsule = hit_fx_create( sprite_get( "capsule" ), 36 );

stinghit = hit_fx_create( sprite_get( "stinghit" ), 10 );
fighthit = hit_fx_create( sprite_get( "fighthit" ), 20 );
fightinghit = hit_fx_create( sprite_get( "fightinghit" ), 25 );
fightinghitslap = hit_fx_create( sprite_get( "fightinghitslap" ), 25 );
poisonjabhit = hit_fx_create( sprite_get( "poisonjabhit" ), 25 );
bouncehit = hit_fx_create( sprite_get( "bouncehit" ), 30 );
mudhit = hit_fx_create( sprite_get( "mudslap" ), 30 );
suckpunchhit = hit_fx_create( sprite_get( "suckerpunch" ), 32 );
bighit = hit_fx_create( sprite_get( "bighit" ), 35 );
bigpunch = hit_fx_create( sprite_get( "bigpunch" ), 35 );
bigsting = hit_fx_create( sprite_get( "bigsting" ), 35 );


set_hit_particle_sprite( 1, sprite_get("poison_fx"));

dodgepuff_forward = sprite_get("airdodge_forward");

//Post_draw
subst_timer = 0;

taunt_timer = 0;

punishstance_indic_timer = 0;
toxicstance_indic_timer = 0;
toxicstance_indic_side = 1;
stance_indicator_timer = 0;
