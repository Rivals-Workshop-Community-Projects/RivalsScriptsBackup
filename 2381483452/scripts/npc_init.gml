beam_alpha = 1.3;

attack_grid = obj_stage_main.attack_grid;
hbox_grid = obj_stage_main.hbox_grid;

hurtbox_spr = sprite_get("nothing");
crouchbox_spr = sprite_get("nothing");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

updated = 0;


//small_sprites = true;

//CUSTOM
small_sprites = true;
trummelcodecneeded = false;
grabbing = 0;
grab_ids = array_create(0);

maxplanets = 3;

uspecial_grav = 0;
uspecial_used = 0;


sequence = 0;

var planstring = "planet";
if object_index != oPlayer exit;
for (var i = 0; i < maxplanets; i++) {
	var m = i mod 3;
	planet[i] = instance_create(x,y,"obj_stage_article", 1)
	planet[i].player_id = id;
	planet[i].orig_player_id = id;
	planet[i].type = m;
	planet[i].numb = m;
	planet[i].orbit_distance += i*16
	planet[i].sprite_index = sprite_get(planstring+string(m+1));
	planet[i].inactive_sprite = sprite_get(planstring+string(m+1));
	planet[i].active_sprite = sprite_get(planstring+string(m+1)+"_active");
	if planet[i].active_sprite == asset_get("net_disc_spr") 	planet[i].active_sprite = sprite_get("planet"+string(m+1)+"_active");
	planet[i].orbit_angle += i*(360/maxplanets);
	planet[i].maxplanets = maxplanets;
	
	hologram[i, 0] = 0; //Sprite index
	hologram[i, 1] = 0; //Image index
	hologram[i, 2] = 0; //x
	hologram[i, 3] = 0; //y
	hologram[i, 4] = 0; //alpha
	hologram[i, 5] = 0; //xscale
}


planet[0].weight = 0.2;
planet[1].weight = 0.4;
planet[2].weight = 0.7;



orbit_angle = 0;
orbit_speed = 1.5;

sun_color = 1;
sun_ins = noone;
sun_cooldown = 0;

fire_sprite = 0;

fall = 0;

uspecial_side = 0;

hitfx[0] = hit_fx_create(sprite_get("planet1_trail"), 3)
hitfx[1] = hit_fx_create(sprite_get("planet2_trail"), 8)
hitfx[2] = hit_fx_create(sprite_get("planet3_trail"), 15)
hitfx[3] = hit_fx_create(sprite_get("uspecial_fx"), 8)
hitfx[4] = hit_fx_create(sprite_get("roll_fx"), 12)
hitfx[5] = hit_fx_create(sprite_get("zoomline"), 10)
hitfx[6] = hit_fx_create(sprite_get("dair_fx"), 15)
hitfx[7] = hit_fx_create(sprite_get("sun_explode"), 15)
hitfx[8] = hit_fx_create(sprite_get("airdodge_fx"), 15)
hitfx[9] = hit_fx_create(sprite_get("hfx_flash"), 10)
hitfx[10] = hit_fx_create(sprite_get("hfx_dir"), 18)
hitfx[11] = hit_fx_create(sprite_get("hfx_planet1"), 12)
hitfx[12] = hit_fx_create(sprite_get("hfx_planet2"), 12)
hitfx[13] = hit_fx_create(sprite_get("hfx_planet3"), 12)
hitfx[14] = hit_fx_create(sprite_get("hfx_up"), 18)
hitfx[15] = hit_fx_create(sprite_get("sun_explode_big"), 20)


roll_x = x;
roll_y = y;

dair = 0;
planet_can_hit = array_create(20, 1)

waveland_cancel = 0;
//END CUSTOM

char_height = 52;
idle_anim_speed = .16666666666;
crouch_anim_speed = .1;
walk_anim_speed = .15;
dash_anim_speed = .3;
pratfall_anim_speed = .25;

walk_speed = 3;
walk_accel = 0.55;
walk_turn_time = 6;
initial_dash_time = 6;
initial_dash_speed = 5;
dash_speed = 6.25;
dash_turn_time = 8;
dash_turn_accel = 1.5;
dash_stop_time = 4;
dash_stop_percent = .25; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .5;
moonwalk_accel = 0.3;
moonwalk_conserve = 4;
oldFF = false;

jump_start_time = 5;
jump_speed = 4.8;

short_hop_speed = 2;
djump_speed = 0;
djump_accel = -0.5
djump_accel_start_time = 1
djump_accel_end_time = 13
leave_ground_max = 6.5; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 4.75; //the maximum hsp you can have when jumping from the ground
air_max_speed = 4.75; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .3;
prat_fall_accel = 1; //multiplier of air_accel while in pratfall
air_friction = .05;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 4;
walljump_vsp = 4.5;
walljump_time = 15;
max_fall = 8; //maximum fall speed without fastfalling
fast_fall = 16; //fast fall speed
gravity_speed = 0.1;
hitstun_grav = .53;
knockback_adj = 1.1; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 5;
wave_land_time = 16;
wave_land_adj = 1; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = 0; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 2;
crouch_active_frames = 9;
crouch_recovery_frames = 1.9;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 1;
dodge_recovery_frames = 5;

//tech animation frames
tech_active_frames = 3;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 0;
techroll_active_frames = 1;
techroll_recovery_frames = 4;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 1;
air_dodge_recovery_frames = 4;
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 0;
roll_forward_active_frames = 1;
roll_forward_recovery_frames = 4;
roll_back_startup_frames = 0;
roll_back_active_frames = 1;
roll_back_recovery_frames = 4;
roll_forward_max = 9; //roll speed
roll_backward_max = 9;

wall_frames = 1;

land_sound = asset_get("sfx_ice_chain");
landing_lag_sound = asset_get("sfx_ice_chain");
waveland_sound = asset_get("sfx_zetter_shine_charged");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_ell_small_missile_fire");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;
