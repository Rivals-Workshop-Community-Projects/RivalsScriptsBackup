set_victory_bg(sprite_get("bg"));
set_victory_theme(sound_get("patashu"));

hurtbox_spr = sprite_get("idlehurtbox");
crouchbox_spr = sprite_get("crouchhurtbox");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

//print_debug("Character Init Time setting is "+string(get_match_setting(SET_TIMER)))
updated = 0;

//print_debug(string(sound_play(asset_get("mfx_player_ready"))));

//small_sprites = true;

//CUSTOM
trummelcodecneeded = false;
grabbing = 0;
grab_ids = array_create(0);

maxplanets = 3;

uspecial_grav = 0;
uspecial_used = 0;

tossed_planet = 0;


var planstring = "planet";
if get_player_color(player) == 8 planstring = "planetO"
if get_player_color(player) == 5 planstring = "planetP"
if get_player_color(player) == 10 planstring = "planetpk"
if get_player_color(player) == 16 planstring = "planet5"

if get_player_color(player) == 7 {

	switch(get_match_setting(SET_SEASON)) {
		case 1: planstring = "planetHV"; break;
		case 2: planstring = "planetHS"; break;
		case 4: planstring = "planetHX"; anim_time = 0; set_color_profile_slot(7, 0, 252, 246, 216); break;		
		default: break;
	}
}

for (var i = 0; i < maxplanets; i++) {
	var m = i mod 3;
	planet[i] = instance_create(x,y,"obj_article1")
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
if has_rune("A") {
	m = 0;
	planet[i] = instance_create(x,y,"obj_article1")
	planet[i].type = m;
	planet[i].numb = 3;
	planet[i].orbit_distance += i*16
	planet[i].sprite_index = planet[m].sprite_index
	planet[i].inactive_sprite = planet[m].inactive_sprite
	planet[i].active_sprite = planet[m].active_sprite
	planet[i].orbit_angle += i*(360/maxplanets);
	planet[i].maxplanets = maxplanets;
	planet[i].weight = 0.2;
	hologram[i, 5] = 0; //xscale	
	i++;
	maxplanets++;
}
if has_rune("G") {
	m = 1;
	planet[i] = instance_create(x,y,"obj_article1")
	planet[i].type = m;
	planet[i].numb = 4;
	planet[i].orbit_distance += i*16
	planet[i].sprite_index = planet[m].sprite_index
	planet[i].inactive_sprite = planet[m].inactive_sprite
	planet[i].active_sprite = planet[m].active_sprite
	planet[i].orbit_angle += i*(360/maxplanets);
	planet[i].maxplanets = maxplanets;
	planet[i].weight = 0.4;
	hologram[i, 5] = 0; //xscale	
	i++;
	maxplanets++;
}
if has_rune("L") {
	m = 2;
	planet[i] = instance_create(x,y,"obj_article1")
	planet[i].type = m;
	planet[i].numb = 5;
	planet[i].orbit_distance += i*16
	planet[i].sprite_index = planet[m].sprite_index
	planet[i].inactive_sprite = planet[m].inactive_sprite
	planet[i].active_sprite = planet[m].active_sprite
	planet[i].orbit_angle += i*(360/maxplanets);
	planet[i].maxplanets = maxplanets;
	planet[i].weight = 0.7;
	hologram[i, 5] = 0; //xscale	
	i++;
	maxplanets++;
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

star_x[2] = 0;
star_y[2] = 0;
star_dir = 90;
starsleft = 2;
max_stars = 2;
minstar = 2;
maxstar = 2;
star_length = 80;

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
jump_speed = 5;

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
wave_friction = 0.1; //grounded deceleration when wavelanding

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

//trummel codec
//pieced together from phone code
//default speakers:
SPK_TRUM = 0; //trummel speaker
SPK_ALTO = 1; //alto speak;s

trummel_codecs = [];
initCodec(0);
initCodecPage(1, 0, 0, "...Hm. I didn't think they were real. They've popped up here and there in myths, but...");
initCodecPage(0, 0, 0, "bugs are real??

      oh man");
initCodecPage(1, 0, 0, "Supposedly, they're a bad omen. If you see them, something horrible is about to happen.");
initCodecPage(0, 0, 7, "oh like that one time we were at that party and you were talking to that cute girl and then you sp");
initCodecPage(1, 0, 0, "WORSE THAN THAT.");
initCodecPage(0, 0, 0, "dear god

how do we beat it up tho");
initCodecPage(1, 0, 0, "For one, what they have in horizontal range they lack in vertical. And once they have their sun out, they're left fairly vulnerable.");
initCodecPage(1, 0, 0, "Let's try to not get overwhelmed by their projectiles. Wait until they shoot their planets out, then go in. Patience is key.");
initCodecPage(0, 0, 0, "mmk
sorry buggo but we gotta beat ya up to save the world or whatever");
initCodecPage(1, 0, 0, "If that's how you cope, sure. I'll go with it.");
//steve compatibility (death message)
steve_death_message = "Synne was defeated";
 
//otto compatibility (bobblehead)
otto_bobblehead_sprite = sprite_get("_pho_example_bobble_head");
otto_bobblebody_sprite = sprite_get("_pho_example_bobble_body"); // you only need to change this one if you REALLY want to. most chars just use the head sprite
 
 
#define initCodec(cd_gimmick)
 
var new_cdc = {
    gimmick: cd_gimmick,
    pages: []
};
 
array_push(trummel_codecs, new_cdc);
 
 
 
#define initCodecPage(cd_speaker, cd_expression, cd_gimmick, cd_text)
 
var new_page = {
    speaker: cd_speaker,
    expression: cd_expression,
    gimmick: cd_gimmick,
    text: cd_text
};
 
array_push(trummel_codecs[array_length(trummel_codecs) - 1].pages, new_page);
 
 
 
#define initSpeaker(idx, speak_name, speak_sprite)
 
trummel_speakers[idx] = {
    name: speak_name,        // Name displayed while talking
    sprite: speak_sprite    // Sprite of face
};
 
return idx * -1;
