//AR update

//100% respects for mister supersonic
if runesUpdated {
	if runeA {
		set_hitbox_value( AT_UAIR, 1, HG_ANGLE_FLIPPER, 5 );
		set_hitbox_value( AT_UAIR, 2, HG_ANGLE_FLIPPER, 5 );
		set_hitbox_value( AT_UAIR, 4, HG_ANGLE_FLIPPER, 5 );
	} else {
		reset_hitbox_value( AT_UAIR, 1, HG_ANGLE_FLIPPER );
		reset_hitbox_value( AT_UAIR, 2, HG_ANGLE_FLIPPER );
		reset_hitbox_value( AT_UAIR, 4, HG_ANGLE_FLIPPER );
	}
	if runeB {
		set_hitbox_value( AT_DTILT, 1, HG_FORCE_FLINCH, 1 );
		set_hitbox_value( AT_DTILT, 2, HG_FORCE_FLINCH, 1 );
	} else {
		reset_hitbox_value( AT_DTILT, 1, HG_FORCE_FLINCH );
		reset_hitbox_value( AT_DTILT, 2, HG_FORCE_FLINCH );
	}
	if runeC {
		set_window_value( AT_FSPECIAL, 2, AG_WINDOW_INVINCIBILITY, 1 );
	} else {
		set_window_value( AT_FSPECIAL, 2, AG_WINDOW_INVINCIBILITY, 0 );
	}
	if runeO { //changed
		initial_dash_time = 5;
		initial_dash_speed = 18;
	} else { //default
		initial_dash_time = 7;
		initial_dash_speed = 9;
	}
	if runeI {
		ground_friction = .1;
		dash_stop_percent = .7;
	} else {
		ground_friction = .7;
		dash_stop_percent = .35
	}
	if runeJ {
		set_hitbox_value( AT_DATTACK, 1, HG_EFFECT, 1 );
		set_hitbox_value( AT_DATTACK, 2, HG_EFFECT, 1 );
		set_hitbox_value( AT_FAIR, 1, HG_EFFECT, 1 );
		set_hitbox_value( AT_FAIR, 2, HG_EFFECT, 1 );
		set_hitbox_value( AT_FAIR, 4, HG_EFFECT, 1 );
		set_hitbox_value( AT_JAB, 5, HG_EFFECT, 1 );
		set_hitbox_value( AT_JAB, 6, HG_EFFECT, 1 );
		set_hitbox_value( AT_JAB, 8, HG_EFFECT, 1 );
	} else {
		reset_hitbox_value( AT_DATTACK, 1, HG_EFFECT );
		reset_hitbox_value( AT_DATTACK, 2, HG_EFFECT );
		reset_hitbox_value( AT_FAIR, 1, HG_EFFECT );
		reset_hitbox_value( AT_FAIR, 2, HG_EFFECT );
		reset_hitbox_value( AT_FAIR, 4, HG_EFFECT );
		reset_hitbox_value( AT_JAB, 5, HG_EFFECT );
		reset_hitbox_value( AT_JAB, 6, HG_EFFECT );
		reset_hitbox_value( AT_JAB, 8, HG_EFFECT );
	}
	with (oPlayer){
		//if (variable_instance_exists(id, "ar_rain_max")){
			if other.runeD{
				ar_rain_max = 3;
			} else {
				ar_rain_max = 6;
			}
		//}
	}
	runesUpdated = false;
}
if (!phone_disable){
	if (phone_manual_init >= 1){
		user_event(14);
	}
}

if (fakeparry_got){
	if (fakeparry_id != -4){
		spawn_hit_fx( fakeparry_id.x, fakeparry_id.y, fakeparry_1 );
		var fakeparry_2 = instance_create(fakeparry_id.x, fakeparry_id.y-34, "obj_article3");
		fakeparry_2.ar_a3_type = 3;
		fakeparry_2.player_id = id;
		fakeparry_2.player = player;
		fakeparry_id = -4;
		fakeparry_got = false;
	}
}

//fries
if ((state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && attack == AT_TAUNT_3){
	
	var himesprite = sprite_get("fries_hime");
	var himeid = noone;
	
	with (asset_get("oPlayer")){
		if (url=="1905208125"){
			if (place_meeting(x+(76*spr_dir),y,other.id) && other.spr_dir == spr_dir * -1){
					if ((state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && attack == AT_EXTRA_1) {
							himeid=id;
						if (other.window < 7 && window == 3){
							set_attack_value(AT_EXTRA_1, AG_SPRITE, himesprite);
							set_attack_value(AT_EXTRA_1, AG_NUM_WINDOWS, 14);
							
							set_window_value(AT_EXTRA_1, 5, AG_WINDOW_LENGTH, 4);
							set_window_value(AT_EXTRA_1, 5, AG_WINDOW_ANIM_FRAME_START, 33);
							set_window_value(AT_EXTRA_1, 5, AG_WINDOW_ANIM_FRAMES, 1);
							set_window_value(AT_EXTRA_1, 5, AG_WINDOW_HAS_SFX, 1);
							set_window_value(AT_EXTRA_1, 5, AG_WINDOW_SFX_FRAME, 3);
							set_window_value(AT_EXTRA_1, 5, AG_WINDOW_SFX, asset_get("mfx_levelup"));
							
							set_window_value(AT_EXTRA_1, 6, AG_WINDOW_LENGTH, 30);
							set_window_value(AT_EXTRA_1, 6, AG_WINDOW_ANIM_FRAME_START, 34);
							set_window_value(AT_EXTRA_1, 6, AG_WINDOW_ANIM_FRAMES, 4);

							//loop, wait for AR?
							set_window_value(AT_EXTRA_1, 7, AG_WINDOW_LENGTH, 6);
							set_window_value(AT_EXTRA_1, 7, AG_WINDOW_ANIM_FRAME_START, 37);
							set_window_value(AT_EXTRA_1, 7, AG_WINDOW_ANIM_FRAMES, 1);

							//fries offer
							set_window_value(AT_EXTRA_1, 8, AG_WINDOW_LENGTH, 30);
							set_window_value(AT_EXTRA_1, 8, AG_WINDOW_ANIM_FRAME_START, 38);
							set_window_value(AT_EXTRA_1, 8, AG_WINDOW_ANIM_FRAMES, 3);
							set_window_value(AT_EXTRA_1, 8, AG_WINDOW_HAS_SFX, 1);
							set_window_value(AT_EXTRA_1, 8, AG_WINDOW_SFX_FRAME, 29);
							set_window_value(AT_EXTRA_1, 8, AG_WINDOW_SFX, asset_get("sfx_orca_crunch"));

							//monch
							set_window_value(AT_EXTRA_1, 9, AG_WINDOW_LENGTH, 32);
							set_window_value(AT_EXTRA_1, 9, AG_WINDOW_ANIM_FRAME_START, 41);
							set_window_value(AT_EXTRA_1, 9, AG_WINDOW_ANIM_FRAMES, 4);
							set_window_value(AT_EXTRA_1, 9, AG_WINDOW_HAS_SFX, 1);
							set_window_value(AT_EXTRA_1, 9, AG_WINDOW_SFX_FRAME, 31);
							set_window_value(AT_EXTRA_1, 9, AG_WINDOW_SFX, asset_get("sfx_orca_bite"));

							//hand extend
							set_window_value(AT_EXTRA_1, 10, AG_WINDOW_LENGTH, 20);
							set_window_value(AT_EXTRA_1, 10, AG_WINDOW_ANIM_FRAME_START, 45);
							set_window_value(AT_EXTRA_1, 10, AG_WINDOW_ANIM_FRAMES, 2);
							set_window_value(AT_EXTRA_1, 10, AG_WINDOW_HAS_SFX, 1);
							set_window_value(AT_EXTRA_1, 10, AG_WINDOW_SFX_FRAME, 29);
							set_window_value(AT_EXTRA_1, 10, AG_WINDOW_SFX, asset_get("mfx_coin"));

							//pat1
							set_window_value(AT_EXTRA_1, 11, AG_WINDOW_LENGTH, 17);
							set_window_value(AT_EXTRA_1, 11, AG_WINDOW_ANIM_FRAME_START, 47);
							set_window_value(AT_EXTRA_1, 11, AG_WINDOW_ANIM_FRAMES, 2);
							set_window_value(AT_EXTRA_1, 11, AG_WINDOW_HAS_SFX, 1);
							set_window_value(AT_EXTRA_1, 11, AG_WINDOW_SFX_FRAME, 16);
							set_window_value(AT_EXTRA_1, 11, AG_WINDOW_SFX, asset_get("mfx_coin"));

							//pat2
							set_window_value(AT_EXTRA_1, 12, AG_WINDOW_LENGTH, 17);
							set_window_value(AT_EXTRA_1, 12, AG_WINDOW_ANIM_FRAME_START, 49);
							set_window_value(AT_EXTRA_1, 12, AG_WINDOW_ANIM_FRAMES, 2);

							//end
							set_window_value(AT_EXTRA_1, 13, AG_WINDOW_LENGTH, 22);
							set_window_value(AT_EXTRA_1, 13, AG_WINDOW_ANIM_FRAME_START, 52);
							set_window_value(AT_EXTRA_1, 13, AG_WINDOW_ANIM_FRAMES, 3);

							//back
							set_window_value(AT_EXTRA_1, 14, AG_WINDOW_LENGTH, 2);
							set_window_value(AT_EXTRA_1, 14, AG_WINDOW_ANIM_FRAME_START, 53);
							set_window_value(AT_EXTRA_1, 14, AG_WINDOW_ANIM_FRAMES, 1);
							
							window = 5;
							window_timer = 0;
						}
						if (window == 7 && window_timer == 5){
							window_timer = 0;
						}
						if (other.window == 12 && window == 7){
							window = 8;
							window_timer = 0;
							other.window = 13;
							other.window_timer = 0;
						}
						if (window == 14){
							window = 3;
							window_timer = 0;
							set_attack_value(AT_EXTRA_1, AG_SPRITE, sprite_get("taunt2"));
							set_attack_value(AT_EXTRA_1, AG_NUM_WINDOWS, 4);
						}
					}
			}
		}
	}
	if (himeid != noone){
		if (window == 6 && himeid.window == 7){
			set_attack_value(AT_TAUNT_3, AG_NUM_WINDOWS, 19);
			window = 10;
			window_timer = 0;
			x = himeid.x+(81*himeid.spr_dir);
		}
	}
}

if (runeO && state==22 && state_timer==0) {
	sound_play(sound_get("dash"));
	
	var ARafterimage = instance_create(x, y, "obj_article3"); //y-42
	ARafterimage.player_id = id;
	ARafterimage.player = player;
	ARafterimage.spr_dir = spr_dir;
	ARafterimage.ar_a3_type = 1;
}

if (get_player_color( player ) == 6){ //jis
if (outline_color[0] == 0 && outline_color[1] == 0 && outline_color[2] == 0){
outline_color=[27, 57, 24] //6,15,5 //13,27,12
init_shader();
outline_color=[0, 0, 0]
}
}
if (get_player_color( player ) == 7){ //towerofheaven
if (outline_color[0] == 0 && outline_color[1] == 0 && outline_color[2] == 0){
outline_color=[35, 67, 49]
init_shader();
}
}
if (get_player_color( player ) == 14){
	runeE = true;
}
	
if (Hikaru_Title = "Temporary Title"){
if (id % 5 == 0){
Hikaru_Title = "The Human(?) Emissary";
}
if (id % 5 == 1 || id % 5 == 2){
Hikaru_Title = "Nothing in the Rain";
}
if (id % 5 == 3 || id % 5 == 4 || id % 5 == 5){
Hikaru_Title = "Acid Illusions";
}
}

if (tcoart == asset_get("empty_sprite")){
/*
things i've taken into consideration when doing this:

"The Chosen One" is a given name. and still then, TCO himself
likely does not know of its name, OR refer to himself that way.
maybe it's just from me always seeing The Chosen One as the
stoic type?
i've noticed The Second Coming uses an orange stickman as his own
signature, so i have drawn a tiny grey stickman here as well.
i've chosen to use weird colors for it to be easier on eyes,
although using MSPaint default colors would be more in-character.

there's two drawings here. one is a rarer full-body portrait
and the other is a custom drawing i did for this that is based on
the ARmonocle emote i made for some discord server.

honestly? The Chosen One never really seemed like an artist type.
but i guess he's intended to be a general Alan Becker rep.

also drew it on vista mspaint because it's my art tool of choice
and it's pretty fitting too, isn't it

edit: i added a new "authentic" variant of the scribble.
i've used XP MSpaint and everything!
*/
	if (get_player_color( player ) == 5){
		tcoart = sprite_get("ar4tcoart");
		}
		else{
		if (id % 5 == 0){
		tcoart = sprite_get("ar1tcoart");
		}
		if (id % 5 == 1 || id % 5 == 2){
		tcoart = sprite_get("ar2tcoart");
		}
		if (id % 5 == 3 || id % 5 == 4 || id % 5 == 5){
		tcoart = sprite_get("ar3tcoart");
		}
	}
}

if (otto_bobblehead_sprite == asset_get("empty_sprite")){
	if (id % 5 == 0){
	otto_bobblehead_sprite = sprite_get("bobble_acidcraft");
	}else{
	otto_bobblehead_sprite = sprite_get("bobble_ar");
	}
}

if (get_window_value(AT_DATTACK,3,AG_WINDOW_SFX)==sound_get("SWB2")){
	if (get_player_color( player ) == 7){
		set_window_value(AT_DATTACK, 3, AG_WINDOW_SFX, sound_get("ea_da") );
		set_window_value(AT_TAUNT, 2, AG_WINDOW_SFX, sound_get("ea_t2"));
		set_window_value(AT_TAUNT, 3, AG_WINDOW_SFX, sound_get("ea_t2"));
		set_window_value(AT_TAUNT, 4, AG_WINDOW_SFX, sound_get("ea_t2"));
		set_window_value(AT_TAUNT, 5, AG_WINDOW_SFX, sound_get("ea_t2"));
	}
	if (get_player_color( player ) == 9){
		set_window_value(AT_DATTACK, 3, AG_WINDOW_SFX, sound_get("omega_da") );
		set_window_value(AT_JAB, 9, AG_WINDOW_SFX, sound_get("omega_j3") );
	}
}

if ((state == PS_PRATLAND||state==PS_PRATFALL) && attack == 17){
	if (get_gameplay_time() % 20 == 0){
	sound_play(sound_get("elec"));
	var afcr1 = x + ((random_func( 3, 30, true ))-15)
	var afcr2 = y - (random_func( 4, 60, true ))
	spawn_hit_fx( afcr1, afcr2, 20 );
	}
}
if (state == PS_WAVELAND){
	sound_stop(asset_get("sfx_quick_dodge"))
}

if (state_timer == 0 && state == PS_PARRY){
hsp = 0
sound_play(sound_get("SE034_low"));
spawn_hit_fx( x+18*spr_dir, y-50, 108 );
}

//73 104 74
//if (get_player_color( player ) == 6){
//	outline_color = [73, 104, 74];
//	init_shader()
//}

if (state == PS_SPAWN && get_player_color( player ) == 9){
	state = PS_ATTACK_GROUND;
	state_timer = 0;
    attack = AT_TAUNT_2;
	can_wall_cling = true;
}

if (attack!=AT_TAUNT_2 && can_wall_cling) {
	can_wall_cling = false;
}

if (move_cooldown[AT_FSPECIAL] == 1){
	if (get_player_color( player ) != 7){
		sound_play(sound_get("jischarge"));
	}else{
		sound_play(sound_get("ea_ssr"));
	}
	jiseffect=(3*6);
//	spawn_hit_fx( x, y, jischarge );
}
if (jiseffect>0){
	jiseffect--;
}

//print(string(get_stage_data( SD_ID )))
if (phone_manual_init == 1){
	if (get_stage_data( SD_ID ) == 416499||!phone_disable){
		phone_disable = false;
		user_event(14);
		phone_manual_init++;
	}
}
if (phone_manual_init >= 1 && !phone_disable){
	if (phone_cheats[cheat_mado] == 1) { runeE = false; }
	if (phone_cheats[cheat_mado] == 2) { runeE = true; }
	if (phone_cheats[cheat_jis] == 1) {
		if (runeO){
		sound_play(sound_get("gui_decline"));
		runeO = false;
		}else{
		sound_play(sound_get("jischarge"));
		runeO = true;
		}
		runesUpdated = true;
		white_flash_timer = 16;
		phone.cheats[cheat_jis].on = 0;
		phone_cheats[cheat_jis] = 0;
	}
}
if (phone_manual_init == 0){
	phone_manual_init++;
}



if swallowed {
swallowed = 0;
var ability_spr = sprite_get("kirby");
var ability_hurt = sprite_get("kirby_hurt");
var ability_light = sprite_get("lightning");
var sndscopcd = sound_get("scopCD");
var lightninghit = sound_get("Lightninghit_low")

with enemykirby {
	
set_attack_value(AT_EXTRA_3, AG_CATEGORY, 2);
set_attack_value(AT_EXTRA_3, AG_SPRITE, ability_spr);
set_attack_value(AT_EXTRA_3, AG_NUM_WINDOWS, 6);
set_attack_value(AT_EXTRA_3, AG_USES_CUSTOM_GRAVITY, 1);
set_attack_value(AT_EXTRA_3, AG_HURTBOX_SPRITE, ability_hurt);

//dsps  dspss dspan dspat dsph    dspr
//0-5:6 6-7:2 8-8:1 9-9:1 10-10:1 11-13:3

set_window_value(AT_EXTRA_3, 1, AG_WINDOW_LENGTH, 17);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_CUSTOM_GRAVITY, 0);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX, sndscopcd);

set_window_value(AT_EXTRA_3, 2, AG_WINDOW_LENGTH, 16);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_CUSTOM_GRAVITY, 0);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_VSPEED, 0);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_HSPEED, 0);

set_window_value(AT_EXTRA_3, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_CUSTOM_GRAVITY, 0);
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_VSPEED, 0);
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_HSPEED, 0);

set_window_value(AT_EXTRA_3, 4, AG_WINDOW_LENGTH, 3);
set_window_value(AT_EXTRA_3, 4, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_EXTRA_3, 4, AG_WINDOW_CUSTOM_GRAVITY, 0);
set_window_value(AT_EXTRA_3, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_3, 4, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_EXTRA_3, 4, AG_WINDOW_HSPEED, 0);

set_window_value(AT_EXTRA_3, 5, AG_WINDOW_LENGTH, 20);
set_window_value(AT_EXTRA_3, 5, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_EXTRA_3, 5, AG_WINDOW_CUSTOM_GRAVITY, 0);
set_window_value(AT_EXTRA_3, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_3, 5, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_EXTRA_3, 5, AG_WINDOW_HSPEED, 0);

set_window_value(AT_EXTRA_3, 6, AG_WINDOW_LENGTH, 20);
set_window_value(AT_EXTRA_3, 6, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_EXTRA_3, 6, AG_WINDOW_CUSTOM_GRAVITY, 0.5);
set_window_value(AT_EXTRA_3, 6, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_EXTRA_3, 6, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_EXTRA_3, 6, AG_WINDOW_HSPEED, 0);

set_window_value(AT_EXTRA_3, 7, AG_WINDOW_ANIM_FRAMES, 620);

set_num_hitboxes(AT_EXTRA_3, 1);

//this is lightning
set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_Y, 0);
set_hitbox_value(AT_EXTRA_3, 1, HG_WINDOW, 4);
set_hitbox_value(AT_EXTRA_3, 1, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_EXTRA_3, 1, HG_LIFETIME, 8);
set_hitbox_value(AT_EXTRA_3, 1, HG_WIDTH, 15);
set_hitbox_value(AT_EXTRA_3, 1, HG_HEIGHT, 128);
set_hitbox_value(AT_EXTRA_3, 1, HG_DAMAGE, 15);
set_hitbox_value(AT_EXTRA_3, 1, HG_ANGLE, 361);
set_hitbox_value(AT_EXTRA_3, 1, HG_SHAPE, 1);
set_hitbox_value(AT_EXTRA_3, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_EXTRA_3, 1, HG_KNOCKBACK_SCALING, 1.2);
set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_EXTRA_3, 1, HG_HITPAUSE_SCALING, 2);
set_hitbox_value(AT_EXTRA_3, 1, HG_EXTRA_HITPAUSE, 12);
set_hitbox_value(AT_EXTRA_3, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_EXTRA_3, 1, HG_VISUAL_EFFECT, 197);
set_hitbox_value(AT_EXTRA_3, 1, HG_HIT_SFX, lightninghit);
set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_SPRITE, ability_light);
set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_ANIM_SPEED, 0.5);
set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_GRAVITY, 0);
set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_VSPEED, 38);
set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_PARRY_STUN, false);
set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_DOES_NOT_REFLECT, true)
set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_DESTROY_EFFECT, 151);
set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_IS_TRANSCENDENT, true);


} //Kirby ability script ends here 
}

if (enemykirby != noone) { //if kirby is in a match & has swallowed the character
var sndscopcd = sound_get("scopCD");
var sndlghtn = sound_get("lightning");
var ekid = enemykirby;
var kirbicon = sprite_get("ability_icon_ar");
//var ARartecle = asset_get("obj_article2");

with oPlayer { //Run through all players
if (id == ekid){
	newicon = kirbicon
if ((state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && attack == AT_EXTRA_3) {
//your code here
	can_move = false;
	can_fast_fall = false;
	move_cooldown[AT_EXTRA_3] = 10;

if (attack==AT_EXTRA_3 && window == 4 && window_timer == 1) {
	sound_stop( sndscopcd );
	sound_play( sndlghtn );
	outline_color = [ 64, 64, 0 ];
    init_shader();
    outline_color = [ 0, 0, 0 ];
	spawn_hit_fx( x, y-80, 251);
    }
		
if (attack==AT_EXTRA_3 && window == 5 && window_timer == 1) {
	outline_color = [ 48, 48, 0 ];
    init_shader();
    outline_color = [ 0, 0, 0 ];
}

if (attack==AT_EXTRA_3 && window == 5 && window_timer == 5) {
    init_shader();
	var lg_temp_y = 0;
	var max_temp_y = 300;
	while ((lg_temp_y < max_temp_y) && (!position_meeting(x,y+lg_temp_y, asset_get ("par_block"))) && (!position_meeting(x,y+lg_temp_y, asset_get("par_jumpthrough")))){
		lg_temp_y++;
	}
	spawn_hit_fx( x, y+lg_temp_y, 151 );
}

if (!free && attack==AT_EXTRA_3 && window <=3) { //>
	vsp = -10;
	sound_play( asset_get( "sfx_jumpground" ) );
}

//NEEDS POLISH:
//how the heck do i ease thing well
if (free && attack==AT_EXTRA_3 && window <= 3) { //>
	vsp = (vsp / 1.1 )//(1 + (window_timer / 10)));
	hsp = (hsp / 1.1 )//(1 + (window_timer / 10)));
}

} //yourcodehere_end
} //ifekid_end
} //with_end
} //ifenemykirby_end

//trummelalto codec attempt
if (trummelcodecneeded){
	if (id % 151 == 0 || ardev){
	//???
    trummelcodec = 17;
    trummelcodecmax = 12;
    trummelcodecsprite1 = sprite_get("static");
    trummelcodecsprite2 = asset_get("empty_sprite");

    trummelcodecspeaker[0] = 0;
    trummelcodecexpression[0] = 0;
	
    trummelcodecline[0,1] = "That's Acid R-";
    trummelcodecline[0,2] = "";
    trummelcodecline[0,3] = "";
    trummelcodecline[0,4] = "";
	
    trummelcodecspeaker[1] = 3;
    trummelcodecexpression[1] = 2;
	
    trummelcodecline[1,1] = ":,;:to..,; to whomever";
    trummelcodecline[1,2] = "receives this call...";
    trummelcodecline[1,3] = "We have a statement";
    trummelcodecline[1,4] = "shall we declare...";
	
    trummelcodecspeaker[2] = 1;
    trummelcodecexpression[2] = 0;
	
    trummelcodecline[2,1] = "What's this?";
    trummelcodecline[2,2] = "Why is our-";
    trummelcodecline[2,3] = "";
    trummelcodecline[2,4] = "";
	
    trummelcodecspeaker[3] = 3;
    trummelcodecexpression[3] = 0;

    trummelcodecline[3,1] = "Your investigators at";
    trummelcodecline[3,2] = "the levels of the Abyss";
    trummelcodecline[3,3] = "are approaching the";
    trummelcodecline[3,4] = "depth you shouldn't.";

    trummelcodecspeaker[4] = 1;
    trummelcodecexpression[4] = 4;

    trummelcodecline[4,1] = "Abyss? Are you-";
    trummelcodecline[4,2] = "";
    trummelcodecline[4,3] = "";
    trummelcodecline[4,4] = "";
	
    trummelcodecspeaker[5] = 3;
    trummelcodecexpression[5] = 1;

    trummelcodecline[5,1] = "We are Chaos.";
    trummelcodecline[5,2] = "Black within white.";
    trummelcodecline[5,3] = "Light within dusk.";
    trummelcodecline[5,4] = "";

    trummelcodecspeaker[6] = 3;
    trummelcodecexpression[6] = 2;

    trummelcodecline[6,1] = "They have traversed too";
    trummelcodecline[6,2] = "far into the entrance, and";
    trummelcodecline[6,3] = "for it, soon we must halt";
    trummelcodecline[6,4] = "their advance ourself.";
	
    trummelcodecspeaker[7] = 3;
    trummelcodecexpression[7] = 0;

    trummelcodecline[7,1] = "Be warned, for we are";
    trummelcodecline[7,2] = "observing. We are in";
    trummelcodecline[7,3] = "control, and our reign";
    trummelcodecline[7,4] = "above all else.";
	
    trummelcodecspeaker[8] = 3;
    trummelcodecexpression[8] = 0;
	
    trummelcodecline[8,1] = "";
    trummelcodecline[8,2] = "Because night is longest";
    trummelcodecline[8,3] = "when day does not exist.";
    trummelcodecline[8,4] = "";
	
    trummelcodecspeaker[9] = 3;
    trummelcodecexpression[9] = 1;

    trummelcodecline[9,1] = "You are all caught in";
    trummelcodecline[9,2] = "our web.";
    trummelcodecline[9,3] = "And the web consumes you";
    trummelcodecline[9,4] = "all.";
	
    trummelcodecspeaker[10] = 1;
    trummelcodecexpression[10] = 5;
	
    trummelcodecline[10,1] = "...It's gone?";
    trummelcodecline[10,2] = "";
    trummelcodecline[10,3] = "That was... odd,";
    trummelcodecline[10,4] = "to say the least.";
	
    trummelcodecspeaker[11] = 2;
    trummelcodecexpression[11] = 0;
	
    trummelcodecline[11,1] = "soundin like some";
    trummelcodecline[11,2] = "arg wannabe";
    trummelcodecline[11,3] = "";
    trummelcodecline[11,4] = "";
	
    trummelcodecspeaker[12] = 0;
    trummelcodecexpression[12] = 0;

    trummelcodecline[12,1] = "Well... OK. So this is";
    trummelcodecline[12,2] = "Acid Rainbows. She's";
    trummelcodecline[12,3] = "quick, but weak.";
    trummelcodecline[12,4] = "Avoid her cloud.";
	
	}
	else{
    trummelcodec = 17;
    trummelcodecmax = 11;
    trummelcodecsprite1 = asset_get("empty_sprite");
    trummelcodecsprite2 = asset_get("empty_sprite");
	
	//i will write with lots of assumptions and poor english
	//i apologize... in advance
	
	//2020/03/06 - revised some parts

    trummelcodecspeaker[0] = 1;
    trummelcodecexpression[0] = 4;

    trummelcodecline[0,1] = "Hey, what's this species";
    trummelcodecline[0,2] = "supposed to be?";
    trummelcodecline[0,3] = "Whatever it is, they're";
    trummelcodecline[0,4] = "copying our gimmick too!";

    trummelcodecspeaker[1] = 0;
    trummelcodecexpression[1] = 0;

    trummelcodecline[1,1] = "That's Acid Rainbows.";
    trummelcodecline[1,2] = "She's a 'Human'...";
    trummelcodecline[1,3] = "I thought you've seen";
    trummelcodecline[1,4] = "human-kind already?";
//  trummelcodecline[1,3] = "A species you won't see";
//  trummelcodecline[1,4] = "native to this world.";
	
    trummelcodecspeaker[2] = 1;
    trummelcodecexpression[2] = 1;

    trummelcodecline[2,1] = "I figure humans can";
    trummelcodecline[2,2] = "have plain, empty faces";
    trummelcodecline[2,3] = "too, then. what odd";
    trummelcodecline[2,4] = "species they are!";
	
    trummelcodecspeaker[3] = 0;
    trummelcodecexpression[3] = 2;

    trummelcodecline[3,1] = "With the increasing";
    trummelcodecline[3,2] = "amount of unfamiliar";
    trummelcodecline[3,3] = "faces, I'd bet we'll see";
    trummelcodecline[3,4] = "more of human-kind.";
	
    trummelcodecspeaker[4] = 1;
    trummelcodecexpression[4] = 0;

    trummelcodecline[4,1] = "Okay, so the sighting";
    trummelcodecline[4,2] = "reports say she uses";
    trummelcodecline[4,3] = "a paintbrush to paint";
    trummelcodecline[4,4] = "a lifelike raincloud.";
	
    trummelcodecspeaker[5] = 1;
    trummelcodecexpression[5] = 0;

    trummelcodecline[5,1] = "Her cloud is a raincloud";
    trummelcodecline[5,2] = "like ours, then. Seems";
    trummelcodecline[5,3] = "she can only have one";
    trummelcodecline[5,4] = "of them out at once.";
	
    trummelcodecspeaker[6] = 0;
    trummelcodecexpression[6] = 0;

    trummelcodecline[6,1] = "You should watch out,";
    trummelcodecline[6,2] = "though. It rains acid-";
    trummelcodecline[6,3] = "rain, as her name";
    trummelcodecline[6,4] = "suggests.";
	
    trummelcodecspeaker[7] = 0;
    trummelcodecexpression[7] = 0;

    trummelcodecline[7,1] = "Her cloud can cast a";
    trummelcodecline[7,2] = "lightning bolt as well,";
    trummelcodecline[7,3] = "so it's quite unsafe to";
    trummelcodecline[7,4] = "be under that cloud.";
	
	trummelcodecspeaker[8] = 1;
    trummelcodecexpression[8] = 3;

    trummelcodecline[8,1] = "Best I don't stay";
    trummelcodecline[8,2] = "too long below it,";
    trummelcodecline[8,3] = "then. Got it.";
    trummelcodecline[8,4] = "";
		
/*	trummelcodecspeaker[8] = 2;
    trummelcodecexpression[8] = 0;

    trummelcodecline[8,1] = "you wa shock";
    trummelcodecline[8,2] = "";
    trummelcodecline[8,3] = "";
    trummelcodecline[8,4] = "";  */
	
	trummelcodecspeaker[9] = 1;
    trummelcodecexpression[9] = 2;

    trummelcodecline[9,1] = "Now, from what I'm";
    trummelcodecline[9,2] = "seeing, looks like she";
    trummelcodecline[9,3] = "doesn't deal too hard of";
    trummelcodecline[9,4] = "a damage...";
	
	trummelcodecspeaker[10] = 1;
    trummelcodecexpression[10] = 5;

    trummelcodecline[10,1] = "But with the speed she's";
    trummelcodecline[10,2] = "got, it could be enough";
    trummelcodecline[10,3] = "to get us beat up in";
    trummelcodecline[10,4] = "no time!";
	
    trummelcodecspeaker[11] = 1;
    trummelcodecexpression[11] = 4;

    trummelcodecline[11,1] = "Try not to get caught in";
    trummelcodecline[11,2] = "her chain of hits, and";
    trummelcodecline[11,3] = "let's show this";
    trummelcodecline[11,4] = "copycat a lesson!";	
	}
}