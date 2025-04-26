stance = get_synced_var(player) == 0?"pizzaface":"pizzahead";
small_sprites = true;

set_victory_sidebar(sprite_get("result_small"));

if stance == "pizzaface"{
	set_victory_theme(sound_get("faceVictory")); 
	hurtbox_spr = sprite_get("pizzaface_hurtbox");
	crouchbox_spr = sprite_get("pizzaface_crouchbox");
	mask_index = sprite_get("pizzaface_mask");
	air_hurtbox_spr = -1;
	hitstun_hurtbox_spr = -1;
	set_ui_element(UI_HUD_ICON, sprite_get("pizzaface_hud"));
	set_ui_element(UI_HUDHURT_ICON, sprite_get("pizzaface_hurt_hud"));
	set_ui_element(UI_OFFSCREEN, sprite_get("pizzaface_offscreen"));
	sprite_change_offset("plat", 71, 110);
	
	char_height = 95;
	idle_anim_speed = .28;
	crouch_anim_speed = .2;
	walk_anim_speed = .125;
	dash_anim_speed = .23;
	pratfall_anim_speed = .25;
	crouch_startup_frames = 4;
	crouch_active_frames = 1;
	crouch_recovery_frames = 3;
	
	walk_speed = 3.00;
	walk_accel = 0.25;
	walk_turn_time = 6;
	initial_dash_time = 8;
	initial_dash_speed = 7;
	dash_speed = 5.75;
	dash_turn_time = 10;
	dash_turn_accel = 1.5;
	dash_stop_time = 4;
	dash_stop_percent = 0.25; //the value to multiply your hsp by when going into idle from dash or dashstop
	ground_friction = 0.5;
	moonwalk_accel = 1.3;
	
	jump_start_time = 5;
	jump_speed = 12;
	short_hop_speed = 5.5;
	djump_speed = 11;
	leave_ground_max = 7; //the maximum hsp you can have when you go from grounded to aerial without jumping
	max_jump_hsp = 6; //the maximum hsp you can have when jumping from the ground
	air_max_speed = 5; //the maximum hsp you can accelerate to when in a normal aerial state
	jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
	air_accel = 0.25;
	prat_fall_accel = 1; //multiplier of air_accel while in pratfall
	air_friction = 0.02;
	max_djumps = 1;
	double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
	walljump_hsp = 5;
	walljump_vsp = 10;
	walljump_time = 30;
	max_fall = 9; //maximum fall speed without fastfalling
	fast_fall = 14; //fast fall speed
	gravity_speed = 0.55;
	hitstun_grav = 0.5;
	knockback_adj = 0.95; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier
	
	land_time = 4; //normal landing frames
	prat_land_time = 12;
	wave_land_time = 8;
	wave_land_adj = 1.25; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
	wave_friction = 0.05; //grounded deceleration when wavelanding
	
	//crouch animation frames
	
	
	//parry animation frames
	dodge_startup_frames = 1;
	dodge_active_frames = 8;
	dodge_recovery_frames = 5;
	
	//tech animation frames
	tech_active_frames = 4;
	tech_recovery_frames = 3;
	
	//tech roll animation frames
	techroll_startup_frames = 2
	techroll_active_frames = 13;
	techroll_recovery_frames = 2;
	techroll_speed = 10;
	
	//airdodge animation frames
	air_dodge_startup_frames = 1;
	air_dodge_active_frames = 6;
	air_dodge_recovery_frames = 2;
	air_dodge_speed = 8.5;
	
	//roll animation frames
	roll_forward_startup_frames = 2;
	roll_forward_active_frames = 13;
	roll_forward_recovery_frames = 2;
	roll_back_startup_frames = 2;
	roll_back_active_frames = 13;
	roll_back_recovery_frames = 2;
	roll_forward_max = 9; //roll speed
	roll_backward_max = 9;
	
	land_sound = asset_get("sfx_land_med");
	landing_lag_sound = asset_get("sfx_land");
	waveland_sound = asset_get("sfx_waveland_zet");
	jump_sound = sound_get("sfx_jump");
	djump_sound = sound_get("pizzafacejump");
	air_dodge_sound = asset_get("sfx_quick_dodge");
	
	//visual offsets for when you're in Ranno's bubble
	bubble_x = 0;
	bubble_y = 8;
}

else{
	set_victory_theme(sound_get("headVictory")); 
    hurtbox_spr = sprite_get("pizzahead_hurtbox");
	crouchbox_spr = sprite_get("pizzahead_crouchbox");
	mask_index = sprite_get("pizzahead_mask");
	air_hurtbox_spr = -1;
	hitstun_hurtbox_spr = -1;
	set_ui_element(UI_HUD_ICON, sprite_get("pizzahead_hud"));
	set_ui_element(UI_HUDHURT_ICON, sprite_get("pizzahead_hurt_hud"));
	set_ui_element(UI_OFFSCREEN, sprite_get("pizzahead_offscreen"));
	sprite_change_offset("plat", 75, 112);
	
	char_height = 95;
	idle_anim_speed = .23;
	crouch_anim_speed = .2;
	walk_anim_speed = .37;
	dash_anim_speed = .27;
	pratfall_anim_speed = .25;
	crouch_startup_frames = 2;
	crouch_active_frames = 1;
	crouch_recovery_frames = 2;
	
	walk_speed = 4.00;
	walk_accel = 0.5;
	walk_turn_time = 6;
	initial_dash_time = 8;
	initial_dash_speed = 9;
	dash_speed = 7;
	dash_turn_time = 8;
	dash_turn_accel = 2;
	dash_stop_time = 6;
	dash_stop_percent = 0.5; //the value to multiply your hsp by when going into idle from dash or dashstop
	ground_friction = 0.5;
	moonwalk_accel = 1.3;
	
	jump_start_time = 5;
	jump_speed = 12;
	short_hop_speed = 5.5;
	djump_speed = 10;
	leave_ground_max = 7; //the maximum hsp you can have when you go from grounded to aerial without jumping
	max_jump_hsp = 6; //the maximum hsp you can have when jumping from the ground
	air_max_speed = 5; //the maximum hsp you can accelerate to when in a normal aerial state
	jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
	air_accel = 0.3;
	prat_fall_accel = 1; //multiplier of air_accel while in pratfall
	air_friction = 0.04;
	max_djumps = 1;
	double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
	walljump_hsp = 7;
	walljump_vsp = 8;
	walljump_time = 30;
	max_fall = 11; //maximum fall speed without fastfalling
	fast_fall = 16; //fast fall speed
	gravity_speed = 0.6;
	hitstun_grav = 0.5;
	knockback_adj = 1.05; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier
	
	land_time = 4; //normal landing frames
	prat_land_time = 12;
	wave_land_time = 8;
	wave_land_adj = 1.25; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
	wave_friction = 0.05; //grounded deceleration when wavelanding
	
	//parry animation frames
	dodge_startup_frames = 1;
	dodge_active_frames = 6;
	dodge_recovery_frames = 5;
	
	//tech animation frames
	tech_active_frames = 3;
	tech_recovery_frames = 2;
	
	//tech roll animation frames
	techroll_startup_frames = 1
	techroll_active_frames = 4;
	techroll_recovery_frames = 3;
	techroll_speed = 10;
	
		//airdodge animation frames
	air_dodge_startup_frames = 1;
	air_dodge_active_frames = 2;
	air_dodge_recovery_frames = 2;
	air_dodge_speed = 9;
	
		//roll animation frames
	roll_forward_startup_frames = 1;
	roll_forward_active_frames = 4;
	roll_forward_recovery_frames = 3;
	roll_back_startup_frames = 1;
	roll_back_active_frames = 4;
	roll_back_recovery_frames = 3;
	roll_forward_max = 9; //roll speed
	roll_backward_max = 9;
	
	land_sound = asset_get("sfx_land_med");
	landing_lag_sound = asset_get("sfx_land");
	waveland_sound = asset_get("sfx_waveland_zet");
	jump_sound = sound_get("sfx_jump");
	djump_sound = sound_get("pizzaheadjump");
	air_dodge_sound = asset_get("sfx_quick_dodge");
	
}

xprev = 0;
yprev = 0;

bits = [];

minion_number = 0;
active_minion = noone;
minion_hit = hit_fx_create(sprite_get("summonhitvfx"), 12);
minion_deathparticles = hit_fx_create(sprite_get("summondeathparticles"), 12);

//dair variables
dair_angle = 0;
grabp = noone; //grabbed player
ram_sound = noone;

prev_spr_dir = spr_dir;
afterimage_timer = 0;
particles = [];
afterimage_array = 0;

nspecial2_charge = 0;
nspecial2_real_length = 0;

next_item_tossed = random_func(0, 5, true);
current_item_tossing = next_item_tossed;
pizzaHeadTV = noone;
TV_stompVFX = hit_fx_create(sprite_get("TV_stompvfx"), 24);
TV_debrisVFX = hit_fx_create(sprite_get("pizzahead_dspecial2_TV_debris"), 3);
cheeseBulletEnd = hit_fx_create(sprite_get("uzi_bullets_destroyed"), 8);
towerX = 0;
towerY = 0;
towerLifetime = 300;
towerSprDir = spr_dir;
knightGroundHit = hit_fx_create(sprite_get("forknight_groundhit_vfx"), 18);
dynamiteAirExplosion = hit_fx_create(sprite_get("dynamite_explosion_vfx"), 28);
dynamiteGroundExplosion = hit_fx_create(sprite_get("dynamiteExplosionGround"), 28);
ratGroundVFX = hit_fx_create(sprite_get("ratball_impact"), 9);
televisionSound = sound_get("pizzaheadgrabtv");
machswat_sfx = sound_get("fspecial");
cogDies = hit_fx_create(sprite_get("nspecial_projectile_destroyed"), 60);
uspecialBoom = hit_fx_create(sprite_get("explosion"), 26)

//Runes
faceFloatTime = (has_rune("G") * 180);
faceFloating = false;
cameFromTaunt = false;
cameFromNspecial = false;


//Fixing Colors
var real_player = (room == asset_get("network_char_select") && object_index != oTestPlayer) ? 0 : player;
var alt_palette = get_player_color( real_player );

//Clothes
faceCloth = hit_fx_create(sprite_get("pizzaface_halloween_idle_end"), 25);
headCloth = hit_fx_create(sprite_get("pizzahead_halloween_idle_end"), 15);
if (get_player_color(player) == 9){
    hasAltCloth = 1;
} else {
    hasAltCloth = 0;
}
miiverse_post = sprite_get("miiverse"); 

switch ( alt_palette ) {
	case 27:

        for (var i = 0; i <= 7; i++){
			var rand1 = random_func_2((1 * current_second) + i, 256, true);
			var rand2 = random_func_2((2 * current_second) + i, 192, true);
			var rand3 = random_func_2((3 * current_second) + i, 192, true);

            var hsv = make_color_hsv(rand1, rand2 + 64, rand3 + 64);
            set_color_profile_slot( 27, i, color_get_red(hsv), color_get_blue(hsv), color_get_green(hsv));
            set_article_color_slot(i, color_get_red(hsv), color_get_blue(hsv), color_get_green(hsv));
        }

    break;

}