hurtbox_spr = asset_get("ex_guy_hurt_box");
crouchbox_spr = asset_get("ex_guy_crouch_box");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 52;
idle_anim_speed = .15;
crouch_anim_speed = .06;
walk_anim_speed = .125;
dash_anim_speed = .25;
pratfall_anim_speed = .25;

stagey =  get_stage_data( SD_Y_POS );
upblast = stagey - get_stage_data( SD_TOP_BLASTZONE );

banan = instance_create(-200, 0, "obj_article1");
banandetect = noone;//create_hitbox(AT_DSPECIAL, 1, -200, 0);

ghit = hit_fx_create( sprite_get( "0ghit" ), 39 );
smoke = hit_fx_create( sprite_get( "smoke" ), 60 );
forcewave = hit_fx_create( sprite_get( "forcewave" ), 18 );
shockwave = hit_fx_create( sprite_get( "shockwave" ), 6 );
//poof = hit_fx_create( asset_get(14), 6 );
playTheTimesUpSound = false;
in0g = false;
can0g = true;
canTrap = true;
timer0g = 0;
//enemyin0g = false;
//enemytimer0g = 0;
dattackID = noone;
dstrongID = noone;
dattackSound = sound_get("dattack") ;
hasAirdashed = false;
hitin0g = false;
torndir = 1;
sidebhit = 0;
//physics0gsetup = true;
//torn = noone;
//airdodge0g = false;
//parriedflag = false;
//bouncevsp = 0;
//ogdrawtrigger = false;

upex = hit_fx_create( sprite_get( "armexplosion" ), 11 );
explosiontracker = noone;
explosiontrackertimer = 0;
//arrow = hit_fx_create( sprite_get( "arrow" ), 10 );

//mstrZogo = true;

/*
with(oPlayer){
    if("masterZogo" in self)){
        masterZogo = false;
    }
}
masterZogo = true;
*/
swparts[6] = sprite_get( "swpart7" );
swparts[0] = sprite_get( "swpart1" );
swparts[1] = sprite_get( "swpart2" );
swparts[2] = sprite_get( "swpart3" );
swparts[3] = sprite_get( "swpart4" );
swparts[4] = sprite_get( "swpart5" );
swparts[5] = sprite_get( "swpart6" );
//swparts[7] = sprite_get( "swpart1" );
physics0g[4] = 0;
initPhysics0g = false;

mastermonkey = true;
with(oPlayer){
    if("mastermonkey" in self){
        mastermonkey = false;
    }
}
mastermonkey = true;
/*
with(oPlayer){
    if(!("can0g" in self)){
        switch(player){
        
        case 1:
            other.physics0g[1] = instance_create(x, y, "obj_article2");
            myPhysics0g = other.physics0g[1];
            other.physics0g[1].sprite_index = hurtbox_spr;
            break;
        case 2:
            other.physics0g[2] = instance_create(x, y, "obj_article2");
            myPhysics0g = other.physics0g[2];
            other.physics0g[2].sprite_index = hurtbox_spr;
            break;
        case 3:
            other.physics0g[3] = instance_create(x, y, "obj_article2");
            myPhysics0g = other.physics0g[3];
            other.physics0g[3].sprite_index = hurtbox_spr;
            break;
        case 4:
            other.physics0g[4] = instance_create(x, y, "obj_article2");
            myPhysics0g = other.physics0g[4];
            other.physics0g[4].sprite_index = hurtbox_spr;
            break;
        }
    }
}
*/

walk_speed = 3.25;
walk_accel = 0.2;
walk_turn_time = 6;
initial_dash_time = 10;
initial_dash_speed = 8.00;
dash_speed = 7.25;
dash_turn_time = 10;
dash_turn_accel = 1.25;
dash_stop_time = 4;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .5;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 13;
short_hop_speed = 8;
djump_speed = 11.25;
leave_ground_max = 8; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 8; //the maximum hsp you can have when jumping from the ground
air_max_speed = 3.5; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 5; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .2;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .07;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 5;
walljump_vsp = 11;
walljump_time = 32;
max_fall = 12; //maximum fall speed without fastfalling
fast_fall = 16; //fast fall speed
gravity_speed = .65;
hitstun_grav = .55;
knockback_adj = 1.10; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 25;
wave_land_time = 8;
wave_land_adj = 1.35; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .04; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 3;
crouch_active_frames = 12;
crouch_recovery_frames = 3;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 3;
dodge_recovery_frames = 4;

//tech animation frames
tech_active_frames = 6;
tech_recovery_frames = 2;

//tech roll animation frames
techroll_startup_frames = 3;
techroll_active_frames = 6;
techroll_recovery_frames = 3;
techroll_speed = 8;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 5;
air_dodge_recovery_frames = 3;
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 3;
roll_forward_active_frames = 6;
roll_forward_recovery_frames = 3;
roll_back_startup_frames = 3;
roll_back_active_frames = 6;
roll_back_recovery_frames = 3;
roll_forward_max = 9; //roll speed
roll_backward_max = 9;

land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_zet");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;
