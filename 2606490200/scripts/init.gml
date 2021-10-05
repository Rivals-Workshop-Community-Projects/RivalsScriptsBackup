hurtbox_spr = sprite_get("stand_box");
crouchbox_spr = sprite_get("crouch_box");
air_hurtbox_spr = sprite_get("air_box");
hitstun_hurtbox_spr = sprite_get("air_box");

Hikaru_Title = "Gigachadiness"

nname = "Gigachad"
ncode1 = "A man of great respect."
ncode2 = "He can train and strengthen"
ncode3 = "himself during battle."

hud_color = get_player_hud_color(player);
gigaSprite = sprite_get("gigaHud")
gigaSpriteTwo = sprite_get("gigaHud2")

shsp = 0
svsp = 0

superMove = 14

croutime = 0
     		ui1x = 0
            ui1y = 0
            
            ui2x = 0
            ui2y = 0
            
uspecside = 0
wjcap = 0

uped = 0
htrain = 0
btrain = 0
atrain = 0
ltrain = 0

char_height = 100;
idle_anim_speed = .13;
crouch_anim_speed = .1;
walk_anim_speed = .1;
dash_anim_speed = .16;
pratfall_anim_speed = .25;

walk_speed = 2.5;
walk_accel = 1;
walk_turn_time = 4;
initial_dash_time = 10;
initial_dash_speed = 4.5;
dash_speed = 4.5;
dash_turn_time = 4;
dash_turn_accel = 2;
dash_stop_time = 4;
dash_stop_percent = 1.00; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = 0.50;
moonwalk_accel = 1.8;

jump_start_time = 5;
jump_speed = 12;
short_hop_speed = 7.5;
djump_speed = 12;
leave_ground_max = 5.00; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 5.00; //the maximum hsp you can have when jumping from the ground
air_max_speed = 5.00; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = 0.3;
prat_fall_accel = 1; //multiplier of air_accel while in pratfall
air_friction = 0.05;
max_djumps = 1;
double_jump_time = 36; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 6;
walljump_vsp = 9;
walljump_time = 12;
wall_frames = 1; //anim frames before you leave the wall
max_fall = 11.00; //maximum fall speed without fastfalling
fast_fall = 16.00; //fast fall speed
gravity_speed = 0.6;
hitstun_grav = 0.55;
knockback_adj = .95;//the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 6; //normal landing frames
prat_land_time = 16;
wave_land_time = 8;
wave_land_adj = 1.2; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = 0.1; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 2;
crouch_active_frames = 1;
crouch_recovery_frames = 0;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 2;
dodge_recovery_frames = 4;

//tech animation frames
tech_active_frames = 1;
tech_recovery_frames = 2;

//tech roll animation frames
techroll_startup_frames = 1
techroll_active_frames = 1;
techroll_recovery_frames = 3;
techroll_speed = 9.00;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 4;
air_dodge_recovery_frames = 3;
air_dodge_speed = 6;

//roll animation frames
roll_forward_startup_frames = 1;
roll_forward_active_frames = 1;
roll_forward_recovery_frames = 3;
roll_back_startup_frames = 1;
roll_back_active_frames = 1;
roll_back_recovery_frames = 3;
roll_forward_max = 9.00; //roll speed
roll_backward_max = 9.00;

land_sound = asset_get("sfx_land_heavy");
landing_lag_sound = asset_get("sfx_land_heavy");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

lighten = hit_fx_create( sprite_get( "lighten" ), 12);
sprite_change_offset("lighten", 1000, 1000);

npsp = hit_fx_create( sprite_get( "nipplespike" ), 10);
sprite_change_offset("nipplespike", 102, 154);

set_victory_theme(sound_get("theme"));

nf1 = hit_fx_create( sprite_get( "nfade1" ), 10);
nf2 = hit_fx_create( sprite_get( "nfade2" ), 10);
nf3 = hit_fx_create( sprite_get( "nfade3" ), 10);
nf4 = hit_fx_create( sprite_get( "nfade4" ), 10);
i5 = hit_fx_create( sprite_get( "np5" ), 20);	
i6 = hit_fx_create( sprite_get( "np5" ), 8);
sprite_change_offset("np5", 50, 50);

hup = hit_fx_create( sprite_get( "hup" ), 30);
aup = hit_fx_create( sprite_get( "aup" ), 30);
bup = hit_fx_create( sprite_get( "bup" ), 30);
lup = hit_fx_create( sprite_get( "lup" ), 30);

sprite_change_offset("hup", 30, 30);
sprite_change_offset("aup", 30, 30);
sprite_change_offset("bup", 30, 30);
sprite_change_offset("lup", 30, 30);

esp = hit_fx_create( sprite_get( "esp2" ), 9 );
sprite_change_offset("esp", 32, 32);