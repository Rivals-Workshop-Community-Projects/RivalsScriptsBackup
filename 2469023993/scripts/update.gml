if swift_mode = true{
	move_cooldown[AT_DSPECIAL] = 300;
	move_cooldown[AT_TAUNT] = 10;
	move_cooldown[AT_TAUNT_2] = 10;
	swift_timer++;
	walk_speed = 5;
	walk_anim_speed = .175;
	wave_land_adj = 1.5;
	dash_speed = 10;
	dash_anim_speed = .3;
	initial_dash_speed = 10.5;
	air_dodge_speed = 9;
	air_max_speed = 6;
	air_accel = 0.45;
	jump_speed = 9.5;
	djump_speed = 8.5;
	leave_ground_max = 7.5;
	max_jump_hsp = 7.5;
	short_hop_speed = 5.75;
	walljump_hsp = 8;
	walljump_vsp = 9;
	waveland_sound = asset_get("sfx_waveland_ori");
	nspecial_reticle_success_sound = sound_get("lock_plus");
}

if swift_timer > 700{
	swift_mode = false;
}

if swift_mode = false{
	walk_speed = 3.5;
	walk_anim_speed = .125;
	wave_land_adj = 1.35;
	dash_speed = 8;
	dash_anim_speed = .25;
	initial_dash_speed = 8.5;
	air_dodge_speed = 7.5;
	air_max_speed = 5;
	air_accel = 0.3;
	jump_speed = 10.5;
	djump_speed = 9.5;
	leave_ground_max = 6;
	max_jump_hsp = 6;
	short_hop_speed = 6;
	walljump_hsp = 7;
	walljump_vsp = 10;
	waveland_sound = asset_get("sfx_waveland_fors");
	nspecial_reticle_success_sound = sound_get("lock_frontier")
}

if swift_timer = 700{
	sound_play(sound_get("swiftoff"));
	sound_stop(sound_get("swifton"));
}

if (move_cooldown[AT_DSPECIAL] > 0){
    nitrus = 1;
} else {
	nitrus = 0;
}

if nitrus = 1 && swift_mode = true{
	nitrus = 2;
}


with(asset_get("oPlayer")) {
	//Move back all other frames
	for(var i = array_length_1d(blur) - 1; i > 0; i--) {
		blur[@ i] = blur[i - 1];
	}
	blur[@ i] = [
		sprite_index,
		image_index,
		x,
		y,
		image_xscale,
		image_yscale,
		image_angle,
		image_blend,
		image_alpha,
	];
}
if state == PS_AIR_DODGE or state == PS_PARRY_START or state == PS_PARRY or state == PS_ROLL_BACKWARD or state == PS_ROLL_FORWARD or state == PS_TECH_GROUND or state == PS_TECH_BACKWARD or state == PS_TECH_FORWARD or state == PS_WALL_TECH{
	can_swift = false;
	} else{
	can_swift = true;
}

if state == PS_WALL_JUMP && !clinging {
    if state_timer == 0 walljump_timer = 0
    else walljump_timer++
}

if swallowed {
    swallowed = 0
    var ability_spr = sprite_get("kirbothrow");
	var ability_hurt = sprite_get("kirbothrow_hurt");
	var box_proj = sprite_get("kirbo_proj");
	var ability_sfx = sound_get("shadowfling");
	var ability_sfx2 = sound_get("shadowrefresh");
	var ability_sfx3 = sound_get("kirbocore");
	var myicon = sprite_get("kirbyicon");
	
	with enemykirby {
		newicon = myicon;
        set_attack_value(AT_EXTRA_3, AG_CATEGORY, 2);
		set_attack_value(AT_EXTRA_3, AG_SPRITE, ability_spr);
		set_attack_value(AT_EXTRA_3, AG_NUM_WINDOWS, 4);
		set_attack_value(AT_EXTRA_3, AG_HAS_LANDING_LAG, 4);
		set_attack_value(AT_EXTRA_3, AG_OFF_LEDGE, 1);
		set_attack_value(AT_EXTRA_3, AG_AIR_SPRITE, ability_spr);
		set_attack_value(AT_EXTRA_3, AG_HURTBOX_SPRITE, ability_hurt);

		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_TYPE, 1);
		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_LENGTH, 14);
		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAMES, 2);
		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_HAS_SFX, 1);
		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX, asset_get("sfx_ori_glide_end"));
		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX_FRAME, 1);
		
		set_window_value(AT_EXTRA_3, 2, AG_WINDOW_TYPE, 1);
		set_window_value(AT_EXTRA_3, 2, AG_WINDOW_LENGTH, 7);
		set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAMES, 1);
		set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAME_START, 2);
		set_window_value(AT_EXTRA_3, 2, AG_WINDOW_HAS_SFX, 1);
		set_window_value(AT_EXTRA_3, 2, AG_WINDOW_SFX, ability_sfx3);
		set_window_value(AT_EXTRA_3, 2, AG_WINDOW_SFX_FRAME, 6);

		set_window_value(AT_EXTRA_3, 3, AG_WINDOW_TYPE, 1);
		set_window_value(AT_EXTRA_3, 3, AG_WINDOW_LENGTH, 16);
		set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAMES, 5);
		set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAME_START, 3);
		set_window_value(AT_EXTRA_3, 3, AG_WINDOW_HAS_SFX, 1);
		set_window_value(AT_EXTRA_3, 3, AG_WINDOW_SFX, ability_sfx);
		set_window_value(AT_EXTRA_3, 3, AG_WINDOW_SFX_FRAME, 1);
		set_window_value(AT_EXTRA_3, 3, AG_WINDOW_VSPEED, 3);
		set_window_value(AT_EXTRA_3, 3, AG_WINDOW_VSPEED_TYPE, 1);
		set_window_value(AT_EXTRA_3, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
		set_window_value(AT_EXTRA_3, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.25);
		set_window_value(AT_EXTRA_3, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.25);

		set_window_value(AT_EXTRA_3, 4, AG_WINDOW_TYPE, 1);
		set_window_value(AT_EXTRA_3, 4, AG_WINDOW_LENGTH, 16);
		set_window_value(AT_EXTRA_3, 4, AG_WINDOW_ANIM_FRAMES, 3);
		set_window_value(AT_EXTRA_3, 4, AG_WINDOW_ANIM_FRAME_START, 8);
		set_window_value(AT_EXTRA_3, 4, AG_WINDOW_HAS_SFX, 1);
		set_window_value(AT_EXTRA_3, 4, AG_WINDOW_SFX, ability_sfx2);
		set_window_value(AT_EXTRA_3, 4, AG_WINDOW_SFX_FRAME, 14);

		set_num_hitboxes(AT_EXTRA_3, 1);

		set_hitbox_value(AT_EXTRA_3, 1, HG_PARENT_HITBOX, 1);
		set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_TYPE, 2);
		set_hitbox_value(AT_EXTRA_3, 1, HG_WINDOW, 3);
		set_hitbox_value(AT_EXTRA_3, 1, HG_LIFETIME, 35);
		set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_X, 32);
		set_hitbox_value(AT_EXTRA_3, 1, HG_WIDTH, 90);
		set_hitbox_value(AT_EXTRA_3, 1, HG_HEIGHT, 60);
		set_hitbox_value(AT_EXTRA_3, 1, HG_PRIORITY, 10);
		set_hitbox_value(AT_EXTRA_3, 1, HG_DAMAGE, 11);
		set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_KNOCKBACK, 9);
		set_hitbox_value(AT_EXTRA_3, 1, HG_FINAL_BASE_KNOCKBACK, 6);
		set_hitbox_value(AT_EXTRA_3, 1, HG_KNOCKBACK_SCALING, 0.65);
		set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_HITPAUSE, 10);
		set_hitbox_value(AT_EXTRA_3, 1, HG_HITPAUSE_SCALING, 0.5);
		set_hitbox_value(AT_EXTRA_3, 1, HG_EXTENDED_PARRY_STUN, 30);
		set_hitbox_value(AT_EXTRA_3, 1, HG_HIT_SFX, asset_get("sfx_ori_energyhit_heavy"));
		set_hitbox_value(AT_EXTRA_3, 1, HG_ANGLE, 90);
		set_hitbox_value(AT_EXTRA_3, 1, HG_VISUAL_EFFECT, 112);
		set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_SPRITE, box_proj);
		set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_MASK, box_proj);
		set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
		set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_ANIM_SPEED, .5);
		set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_HSPEED, 15);
		set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
		set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
		set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_UNBASHABLE, 1);
		set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_IS_TRANSCENDENT, 1);
		set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
		set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_AIR_FRICTION, .65);
		set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_DESTROY_EFFECT, 256);
		set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_PARRY_STUN, 1);
	}
}

//Amber hug compatibility
if (amber_startHug == true) //Amber will set this bool to true when this player accepts the hug
{
	with (amber_herObj) //Access Amber's player object and set the values
	{
		//Set the window values for Amber's hugging. DO NOT change Amber's sprites
		//in the attack_values
	    set_attack_value(AT_EXTRA_3, AG_NUM_WINDOWS, 3);
	    set_attack_value(AT_EXTRA_3, AG_CATEGORY, 2);
	    set_attack_value(AT_EXTRA_3, AG_HURTBOX_SPRITE, asset_get("hurtbox"));
	    
	    //Enter
	    set_window_value(AT_EXTRA_3, 1, AG_WINDOW_TYPE, 1);
	    set_window_value(AT_EXTRA_3, 1, AG_WINDOW_LENGTH, 9);
	    set_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAMES, 3);
	    set_window_value(AT_EXTRA_3, 1, AG_WINDOW_HAS_SFX, 1);
	    set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX, asset_get("sfx_diamond_collect")); 
	    set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX_FRAME, 8);
	    set_window_value(AT_EXTRA_3, 1, AG_WINDOW_HSPEED, 0);
	    set_window_value(AT_EXTRA_3, 1, AG_WINDOW_VSPEED_TYPE, 1);
	    set_window_value(AT_EXTRA_3, 1, AG_WINDOW_VSPEED, 0);
	    set_window_value(AT_EXTRA_3, 1, AG_WINDOW_VSPEED_TYPE, 0);
	    
	    //Loop
	    set_window_value(AT_EXTRA_3, 2, AG_WINDOW_TYPE, 9);
	    set_window_value(AT_EXTRA_3, 2, AG_WINDOW_LENGTH, 30);
	    set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAMES, 10);
	    set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAME_START, 3);
	    set_window_value(AT_EXTRA_3, 2, AG_WINDOW_HAS_SFX, 0);
	    set_window_value(AT_EXTRA_3, 2, AG_WINDOW_VSPEED, 0);
	    set_window_value(AT_EXTRA_3, 2, AG_WINDOW_VSPEED_TYPE, 0);
	    
	    //Exit
	    set_window_value(AT_EXTRA_3, 3, AG_WINDOW_TYPE, 1);
	    set_window_value(AT_EXTRA_3, 3, AG_WINDOW_LENGTH, 9);
	    set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAMES, 3);
	    set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAME_START, 14);
	    set_window_value(AT_EXTRA_3, 3, AG_WINDOW_VSPEED, 0);
	    set_window_value(AT_EXTRA_3, 3, AG_WINDOW_VSPEED_TYPE, 0);
	    
	    //Important. Puts Amber in startup hug state (2).
	    //Editing this variable not recommended
	    amberHugState = 2; 
	}
	//Important. Puts this character in startup hug state (2).
    //Editing this variable not recommended
	oPlayerHugAmberState = 2;
	
	//Set this bool back to false so that this doesn't loop
    amber_startHug = false;
}

if (state == PS_SPAWN && state_timer <= 100 && radio == 0 && up_down && shield_down && special_down && attack_down && strong_down && taunt_pressed){
	radio = 1;
	sound_play(sound_get("light_confirm"));
	sound_play(sound_get("LETSGO"));
}


//!!!!!!!! DELTA CODE STARTS HERE

//Trigger for the reticle to execute
var is_attacking = (state == PS_ATTACK_AIR or state == PS_ATTACK_GROUND);
var is_in_nspecial = (attack == AT_NSPECIAL and window == 3 and window_timer == 0);
if (is_attacking and is_in_nspecial)
{
	nspecial_storage = []
	
	//Look for player
	var detected_player = detect_player(x);
	nspecial_use_swift_mode = swift_mode;
	
	if (detected_player == noone) {
		//Failed
		sound_play(nspecial_reticle_failed_sound);
	}
	else {
		//Succeeded
		sound_play(nspecial_reticle_success_sound);
		nspecial_reticle_position.reticle_x = floor(detected_player.x + detected_player.hsp)
		nspecial_reticle_position.reticle_y = floor(detected_player.y - (detected_player.char_height / 2) + detected_player.vsp)
		nspecial_reticle_window = 0
	}
}

//Reticle is active.
if (nspecial_reticle_window > -1) {
	
	//Advance window timer and window, ending the reticle's animation when it finishes.
	nspecial_reticle_window_timer += !hitpause;
	if nspecial_reticle_window_timer >= nspecial_reticle_window_config[nspecial_reticle_window].length[nspecial_use_swift_mode] {
		nspecial_reticle_window += 1;
		nspecial_reticle_window_timer = 0;
		
		if nspecial_reticle_window >= array_length(nspecial_reticle_window_config) {
			nspecial_reticle_window = -1;
			nspecial_reticle_window_timer = 0;
		}
	}
	
	//Window-specific code
	switch (nspecial_reticle_window) {
		case 0:
			if nspecial_reticle_window_timer == 1 and !hitpause {
				sound_play(sound_get("explosion_build"), false, noone, 1, nspecial_use_swift_mode ? 1.3 : 1.1)
			}
		break;
		case 1:
			if nspecial_reticle_window_timer == nspecial_reticle_window_config[1].length[nspecial_use_swift_mode] - 4 and !hitpause {
				sound_play(asset_get("sfx_mol_flare_shoot"), false, noone, 1, 1.1)
				sound_play(asset_get("sfx_mol_spark_explode2"), false, noone, 1, 1.1)
				
				spawn_hit_fx(nspecial_reticle_position.reticle_x, nspecial_reticle_position.reticle_y, nspecial_projectile_vfx)
			}
		break;
		case 2:
			if nspecial_reticle_window_timer == 0 and !hitpause {
				create_hitbox(AT_NSPECIAL, 1, nspecial_reticle_position.reticle_x, nspecial_reticle_position.reticle_y)
			}
		break;
	}
}


#define detect_player
var x_pos = argument_count > 0 ? argument[0] : 0;;

//For the instance_nearest function to work, we can't detect outselves.
var xx = x_pos;
x = -10000;

var player_asset = asset_get("oPlayer");
var closest_player = instance_nearest(xx,y,player_asset)

//If we are the closest player, fail. There is only one player.
//If we already visited the closest player, fail. We have already ruled out this option.
//If the closest player is not within the threshold distance, fail. The other players are disqualified.
if (closest_player == id or array_find_index(nspecial_storage, closest_player) != -1 or
	point_distance(xx,y - (char_height/2),closest_player.x,closest_player.y - (closest_player.char_height/2) ) > nspecial_distance_threshold[nspecial_use_swift_mode]) {
	x = xx;
	return noone;
}
else {
	//If we are not facing the closest player, move onto next player.
	if sign(closest_player.x - xx) != spr_dir {
		var yy = closest_player.y
		closest_player.y = -100000
		
		array_push(nspecial_storage, closest_player)
		var new_closest = detect_player(xx)
		
		closest_player.y = yy;
		
		//If the closest player before was the only closest player, fail.
		if new_closest == noone {
			x = xx;
			return noone;
		}
		else {
			closest_player = new_closest
		}
	}
	
	//Succeeded -- return the closest player
	x = xx;
	return closest_player;
}