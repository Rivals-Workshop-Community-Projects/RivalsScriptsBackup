//Intro Code
	if (introTimer2 < 3.15) {
		introTimer2++;
	} else {
		introTimer2 = 0;
		introTimer++;
	}

	if ((introTimer < 18 && get_player_color(player) != 15) || (introTimer < 28 && get_player_color(player) == 15)) {
		draw_indicator = false;
	} else {
		draw_indicator = true;
	}

	if (introTimer2 == 0 && introTimer == 13 && get_player_color(player) != 15) {
		sound_play (asset_get("sfx_bird_downspecial_end"));
	}
	
//useful checks
//detect if you're in the field, to cut down on long repetitive statements
in_field = (instance_exists(gem_ins) && point_distance(x,y,gem_ins.x,gem_ins.y) <= gem_ins.field_size);
//detect if the field is dying
gem_dying = (instance_exists(gem_ins) && (gem_ins.state >= 2));

with (oPlayer) {
	if id != other.id && olympia_stun > 0 && olympia_stunplayer == other.player {
		if !hitpause or hitstop >= hitstop_full-2 {
			olympia_stun = 0;
			//sound_play(asset_get("mfx_player_ready"))
		} else {
			olympia_stun--;
			hitstop = 2;
		}
	}
}

if state_timer == 0 {
	outline_color = [0, 0, 0];
	init_shader();
}
	
	
if hitpause && hitstop == 1 && gem_infield_cancelling {
	gem_infield_cancelling = false;
	var old_has_hit = has_hit;
	var old_has_hit_player = has_hit_player;
	attack_end();
	destroy_hitboxes();
	set_attack(AT_NSPECIAL_2);
	has_hit = old_has_hit;
	has_hit_player = old_has_hit_player;
	window_timer = 0;
	window = get_attack_value(AT_NSPECIAL_2, AG_NUM_WINDOWS);
	print("gem cancel pt 2");
}
	
if gem_cancel && in_field && state_cat != SC_HITSTUN {
	hitstop -= 1;
}

//General gem instance stuff
if instance_exists(gem_ins) {
	if gem_ins.cooldown != -1 move_cooldown[AT_NSPECIAL_AIR] = max(move_cooldown[AT_NSPECIAL_AIR], 2);
	/*if gem_dying {
		move_cooldown[AT_NSPECIAL_2] = max(move_cooldown[AT_NSPECIAL_2], 2);
	}*/
}

//CommandGrab Code
if(grabbedid != noone){
	if (grabbedid.state == PS_RESPAWN || grabbedid.state == PS_DEAD) {
		//prevent grabbing dead people.
		grabbedid = noone;
	}
	if instance_exists(grabbedid) {
		grabbedid.ungrab++;
		if(grabbedid.ungrab == 2){
			grabbedid.state = PS_HITSTUN;
			grabbedid.hitstun_full = max(hitstun_full,20);
	        grabbedid.hitstun = max(hitstun,20);
			grabbedid.ungrab = 0;
			grabbedid = noone;
		}
	} else {
		grabbedid = noone;
	}
}


// allow the player to use two up specials again when wall jumping / in hitstun
if (state == PS_WALL_JUMP || state == PS_HITSTUN) {
	used_uspecial = false;
}

// allow the player to use two up specials and Orcahop again when on the ground again
if (!free) {
	used_djump = false;
	used_uspecial = false;
}

// remember when the player entered the double jump state
if (state == PS_DOUBLE_JUMP) {
	used_djump = true;
	}

//Dashlines VFX
if (fadc_timer > 0){
    fadc_timer--;
}

if (fadc_back_timer > 0){
    fadc_back_timer--;
}


//Armor Sparkles VFX
if (armor_timer > 0){
    armor_timer--;
}

//Dash Burst VFX
if (fsvfx_timer > 0){
    fsvfx_timer--;
}

//Gem Break VFX
if (gembreak_timer > 0){
	gembreak_timer--;
}

//Cooldown visual indicator
if (move_cooldown[AT_DSPECIAL] == clamp(move_cooldown[AT_DSPECIAL], 1, 4) || move_cooldown[AT_DSPECIAL] == clamp(move_cooldown[AT_DSPECIAL], 9, 12)){
    outline_color = [ 140, 140, 140 ];
    init_shader();
    //ease_sineInOut( 1, 25, 5, 25 );
    outline_color = [ 0, 0, 0 ]; //change outline color back to black in case the move gets interrupted
}

//Cooldown visual indicator
if (move_cooldown[AT_DSPECIAL] == 0 || move_cooldown[AT_DSPECIAL] == clamp(move_cooldown[AT_DSPECIAL], 5, 8)){
    outline_color = [ 0, 0, 0 ]; //change outline color back to black in case the move gets interrupted
    init_shader();
}
//Slime Color Input


//Holiday Stuff
// if wearing_hat == 1 {
//     if state != PS_SPAWN && state != PS_RESPAWN && state != PS_IDLE {
//         wearing_hat = -1;
//         var newfx = spawn_hit_fx(40, 78, hit_fx_create(sprite_get("surfboard_toss"), 30));
//         newfx.depth = depth-1;
//     }
// } else if wearing_hat == -1 {
//     if state == PS_RESPAWN or state == PS_SPAWN {
//     wearing_hat = 1;
// 	}
// }



//Trummel Codec Script
if trummelcodecneeded{
    trummelcodec = 17;
    trummelcodecmax = 12;
    trummelcodecsprite1 = sprite_get("olympiasprite");
    trummelcodecsprite2 = sprite_get("");

    //Page 0
    trummelcodecspeaker[0] = 1;
    trummelcodecexpression[0] = 3;

    trummelcodecline[0,1] = "Gem fists and sparkles";
    trummelcodecline[0,2] = "around her. She's Olympia";
    trummelcodecline[0,3] = "Lazuli from a place";
    trummelcodecline[0,4] = "called Pezziotaitte.";

    //Page 1
    trummelcodecspeaker[1] = 1;
    trummelcodecexpression[1] = 0;

    trummelcodecline[1,1] = "Though the Amethyst Fist";
    trummelcodecline[1,2] = "title doesn’t suit the ";
    trummelcodecline[1,3] = "pink gems.";
    trummelcodecline[1,4] = "Aren’t amethysts purple?";
    
    //Page 2
    trummelcodecspeaker[2] = 3;
    trummelcodecexpression[2] = 0;

    trummelcodecline[2,1] = ". . .";
    trummelcodecline[2,2] = "Is this an interview ";
    trummelcodecline[2,3] = "or something. . .?";
    trummelcodecline[2,4] = "";
    //Page 3
    
    trummelcodecspeaker[3] = 1;
    trummelcodecexpression[3] = 2;

    trummelcodecline[3,1] = "Keep your eye on her";
    trummelcodecline[3,2] = "attacks. She can hit ";
    trummelcodecline[3,3] = "HARD with her punches";
    trummelcodecline[3,4] = "if you get too close.";
    
    //Page 4
    trummelcodecspeaker[4] = 1;
    trummelcodecexpression[4] = 4;

    trummelcodecline[4,1] = "Though she doesn’t fare";
    trummelcodecline[4,2] = "too well at range, so we";
    trummelcodecline[4,3] = "should be fine! Rock is";
    trummelcodecline[4,4] = "weak to water, right?";
    
    //Page 5
    trummelcodecspeaker[5] = 3;
    trummelcodecexpression[5] = 1;

    trummelcodecline[5,1] = "Look. . . I don’t know";
    trummelcodecline[5,2] = "if clouds have teeth";
    trummelcodecline[5,3] = "or not, but I will punch";
    trummelcodecline[5,4] = "your faces in for that!";

//Page 6
    trummelcodecspeaker[6] = 2;
    trummelcodecexpression[6] = 0;

    trummelcodecline[6,1] = "ok mouse girl";
    trummelcodecline[6,2] = "";
    trummelcodecline[6,3] = "";
    trummelcodecline[6,4] = "";
    
    //Page 7
    trummelcodecspeaker[7] = 1;
    trummelcodecexpression[7] = 2;

    trummelcodecline[7,1] = "She seems to have to ";
    trummelcodecline[7,2] = "have more with her";
    trummelcodecline[7,3] = "floating gem, but it";
    trummelcodecline[7,4] = "might be a bit too much ";
    
    //Page 8
    trummelcodecspeaker[8] = 1;
    trummelcodecexpression[8] = 2;

    trummelcodecline[8,1] = "for the kind of fighter";
    trummelcodecline[8,2] = "she is. Just keep clear";
    trummelcodecline[8,3] = "of it and we will";
    trummelcodecline[8,4] = "be fine.";
    
    //Page 8
    trummelcodecspeaker[9] = 2;
    trummelcodecexpression[9] = 0;

    trummelcodecline[9,1] = "fine";
    trummelcodecline[9,2] = "";
    trummelcodecline[9,3] = "";
    trummelcodecline[9,4] = "";
    
    //Page 9
    trummelcodecspeaker[10] = 1;
    trummelcodecexpression[10] = 1;

    trummelcodecline[10,1] = "So. . . uh. . . ";
    trummelcodecline[10,2] = "could you tell us where";
    trummelcodecline[10,3] = "EXACTLY Pezziotaitte";
    trummelcodecline[10,4] = "is?";
    
    //Page 11
    trummelcodecspeaker[11] = 3;
    trummelcodecexpression[11] = 0;

    trummelcodecline[11,1] = "...No.";
    trummelcodecline[11,2] = "";
    trummelcodecline[11,3] = "";
    trummelcodecline[11,4] = "";
    
    //Page 12
    trummelcodecspeaker[12] = 2;
    trummelcodecexpression[12] = 0;

    trummelcodecline[12,1] = "figured";
    trummelcodecline[12,2] = "";
    trummelcodecline[12,3] = "";
    trummelcodecline[12,4] = "";

}

//Kirby Copy Ability
if swallowed {
	swallowed = 0;
	var ability_spr = sprite_get("olym_copy");
	var ability_hurt = sprite_get("olym_copy_hurt");
	var ability_sfx = sound_get("olymp_dash");
	var myicon = sprite_get("olymicon");
	with enemykirby {
		newicon = myicon;
		set_attack_value(AT_EXTRA_3, AG_CATEGORY, 2);
		set_attack_value(AT_EXTRA_3, AG_SPRITE, ability_spr);
		set_attack_value(AT_EXTRA_3, AG_NUM_WINDOWS, 8);
		set_attack_value(AT_EXTRA_3, AG_HAS_LANDING_LAG, 0);
		set_attack_value(AT_EXTRA_3, AG_LANDING_LAG, 7);
		set_attack_value(AT_EXTRA_3, AG_OFF_LEDGE, 1);
		set_attack_value(AT_EXTRA_3, AG_AIR_SPRITE, ability_spr);
		set_attack_value(AT_EXTRA_3, AG_HURTBOX_SPRITE, ability_hurt);
		set_attack_value(AT_EXTRA_3, AG_HURTBOX_AIR_SPRITE, ability_hurt);
		set_attack_value(AT_EXTRA_3, AG_USES_CUSTOM_GRAVITY, 1);
		
		//startup 1
		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_TYPE, 1);
		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_LENGTH, 2);
		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAMES, 1);
		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_HSPEED_TYPE, 1);
		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_VSPEED_TYPE, 1);
		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_HSPEED, -1.2);
		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_VSPEED, 1.2);
		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_HAS_SFX, 1);
		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX, ability_sfx);
		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX_FRAME, 1);
		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_CUSTOM_GRAVITY, gravity_speed);
		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.5);
		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.5);
		
		//startup 2
		set_window_value(AT_EXTRA_3, 2, AG_WINDOW_TYPE, 1);
		set_window_value(AT_EXTRA_3, 2, AG_WINDOW_LENGTH, 6);
		set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAMES, 4);
		set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAME_START, 1);
		set_window_value(AT_EXTRA_3, 2, AG_WINDOW_HSPEED, -1.2);
		set_window_value(AT_EXTRA_3, 2, AG_WINDOW_VSPEED, 1.2);
		set_window_value(AT_EXTRA_3, 2, AG_WINDOW_HSPEED_TYPE, 1);
		set_window_value(AT_EXTRA_3, 2, AG_WINDOW_VSPEED_TYPE, 1);
		set_window_value(AT_EXTRA_3, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
		set_window_value(AT_EXTRA_3, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.5);
		set_window_value(AT_EXTRA_3, 2, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.5);
		set_window_value(AT_EXTRA_3, 2, AG_WINDOW_CUSTOM_GRAVITY, gravity_speed);
		
		//charge window
		set_window_value(AT_EXTRA_3, 3, AG_WINDOW_TYPE, 1);
		set_window_value(AT_EXTRA_3, 3, AG_WINDOW_LENGTH, 8);
		set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAMES, 1);
		set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAME_START, 4);
		set_window_value(AT_EXTRA_3, 3, AG_WINDOW_VSPEED, 1.2);
		set_window_value(AT_EXTRA_3, 3, AG_WINDOW_HSPEED_TYPE, 0);
		set_window_value(AT_EXTRA_3, 3, AG_WINDOW_VSPEED_TYPE, 2);
		set_window_value(AT_EXTRA_3, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
		set_window_value(AT_EXTRA_3, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.5);
		set_window_value(AT_EXTRA_3, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.5);
		set_window_value(AT_EXTRA_3, 3, AG_WINDOW_CUSTOM_GRAVITY, gravity_speed / 2);
		
		//release lag
		set_window_value(AT_EXTRA_3, 4, AG_WINDOW_TYPE, 1);
		set_window_value(AT_EXTRA_3, 4, AG_WINDOW_LENGTH, 4);
		set_window_value(AT_EXTRA_3, 4, AG_WINDOW_ANIM_FRAMES, 1);
		set_window_value(AT_EXTRA_3, 4, AG_WINDOW_ANIM_FRAME_START, 5);
		set_window_value(AT_EXTRA_3, 4, AG_WINDOW_VSPEED, 0);
		set_window_value(AT_EXTRA_3, 4, AG_WINDOW_HSPEED_TYPE, 1);
		set_window_value(AT_EXTRA_3, 4, AG_WINDOW_VSPEED_TYPE, 1);
		set_window_value(AT_EXTRA_3, 4, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
		set_window_value(AT_EXTRA_3, 4, AG_WINDOW_CUSTOM_GRAVITY, gravity_speed / 2);
		
		//active 1
		set_window_value(AT_EXTRA_3, 5, AG_WINDOW_TYPE, 1);
		set_window_value(AT_EXTRA_3, 5, AG_WINDOW_LENGTH, 7);
		set_window_value(AT_EXTRA_3, 5, AG_WINDOW_ANIM_FRAMES, 1);
		set_window_value(AT_EXTRA_3, 5, AG_WINDOW_ANIM_FRAME_START, 6);
		set_window_value(AT_EXTRA_3, 5, AG_WINDOW_HAS_SFX, 1);
		set_window_value(AT_EXTRA_3, 5, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
		set_window_value(AT_EXTRA_3, 5, AG_WINDOW_HSPEED, 6);
		set_window_value(AT_EXTRA_3, 5, AG_WINDOW_VSPEED, 0);
		set_window_value(AT_EXTRA_3, 5, AG_WINDOW_HSPEED_TYPE, 2);
		set_window_value(AT_EXTRA_3, 5, AG_WINDOW_VSPEED_TYPE, 1);
		set_window_value(AT_EXTRA_3, 5, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
		set_window_value(AT_EXTRA_3, 5, AG_WINDOW_CUSTOM_GROUND_FRICTION, -0.05);
		set_window_value(AT_EXTRA_3, 5, AG_WINDOW_HAS_WHIFFLAG, 1);
		set_window_value(AT_EXTRA_3, 5, AG_WINDOW_CUSTOM_GRAVITY, gravity_speed);
		
		//active 2
		set_window_value(AT_EXTRA_3, 6, AG_WINDOW_TYPE, 1);
		set_window_value(AT_EXTRA_3, 6, AG_WINDOW_LENGTH, 2);
		set_window_value(AT_EXTRA_3, 6, AG_WINDOW_ANIM_FRAMES, 1);
		set_window_value(AT_EXTRA_3, 6, AG_WINDOW_ANIM_FRAME_START, 7);
		set_window_value(AT_EXTRA_3, 6, AG_WINDOW_HSPEED, 6);
		set_window_value(AT_EXTRA_3, 6, AG_WINDOW_VSPEED, 0);
		set_window_value(AT_EXTRA_3, 6, AG_WINDOW_HSPEED_TYPE, 2);
		set_window_value(AT_EXTRA_3, 6, AG_WINDOW_VSPEED_TYPE, 1);
		set_window_value(AT_EXTRA_3, 6, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
		set_window_value(AT_EXTRA_3, 6, AG_WINDOW_CUSTOM_GRAVITY, gravity_speed);
		
		//recovery
		set_window_value(AT_EXTRA_3, 7, AG_WINDOW_TYPE, 420); 
		set_window_value(AT_EXTRA_3, 7, AG_WINDOW_LENGTH, 14);
		set_window_value(AT_EXTRA_3, 7, AG_WINDOW_ANIM_FRAMES, 4);
		set_window_value(AT_EXTRA_3, 7, AG_WINDOW_ANIM_FRAME_START, 8);
		set_window_value(AT_EXTRA_3, 7, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
		set_window_value(AT_EXTRA_3, 7, AG_WINDOW_CUSTOM_AIR_FRICTION, 4);
		set_window_value(AT_EXTRA_3, 7, AG_WINDOW_CUSTOM_GROUND_FRICTION, 1);
		set_window_value(AT_EXTRA_3, 7, AG_WINDOW_HAS_WHIFFLAG, 1);
		set_window_value(AT_EXTRA_3, 7, AG_WINDOW_CUSTOM_GRAVITY, gravity_speed);
		
		//final window
		set_window_value(AT_EXTRA_3, 8, AG_WINDOW_TYPE, 420); 
		set_window_value(AT_EXTRA_3, 8, AG_WINDOW_LENGTH, 1);
		set_window_value(AT_EXTRA_3, 8, AG_WINDOW_ANIM_FRAMES, 1);
		set_window_value(AT_EXTRA_3, 8, AG_WINDOW_ANIM_FRAME_START, 11);
		set_window_value(AT_EXTRA_3, 8, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
		set_window_value(AT_EXTRA_3, 8, AG_WINDOW_CUSTOM_AIR_FRICTION, 4);
		set_window_value(AT_EXTRA_3, 8, AG_WINDOW_CUSTOM_GROUND_FRICTION, 1);
		set_window_value(AT_EXTRA_3, 8, AG_WINDOW_HAS_WHIFFLAG, 1);
		set_window_value(AT_EXTRA_3, 8, AG_WINDOW_CUSTOM_GRAVITY, gravity_speed);
		
		set_num_hitboxes(AT_EXTRA_3, 1);
		
		set_hitbox_value(AT_EXTRA_3, 1, HG_PARENT_HITBOX, 1);
		set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_EXTRA_3, 1, HG_WINDOW, 5);
		set_hitbox_value(AT_EXTRA_3, 1, HG_LIFETIME, 11);
		set_hitbox_value(AT_EXTRA_3, 1, HG_WINDOW_CREATION_FRAME, 0);
		set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_X, 34);
		set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_Y, -34);
		set_hitbox_value(AT_EXTRA_3, 1, HG_WIDTH, 46);
		set_hitbox_value(AT_EXTRA_3, 1, HG_HEIGHT, 44);
		set_hitbox_value(AT_EXTRA_3, 1, HG_SHAPE, 0);
		set_hitbox_value(AT_EXTRA_3, 1, HG_PRIORITY, 3);
		set_hitbox_value(AT_EXTRA_3, 1, HG_DAMAGE, 10);
		set_hitbox_value(AT_EXTRA_3, 1, HG_ANGLE, 60);
		set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_KNOCKBACK, 8);
		set_hitbox_value(AT_EXTRA_3, 1, HG_KNOCKBACK_SCALING, .75);
		set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_HITPAUSE, 8);
		set_hitbox_value(AT_EXTRA_3, 1, HG_HITPAUSE_SCALING, 0.5);
		set_hitbox_value(AT_EXTRA_3, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
		set_hitbox_value(AT_EXTRA_3, 1, HG_IGNORES_PROJECTILES, 1);
		set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_GROUP, 1);

        //Attack Update Code stuff
        
        set_window_value(AT_EXTRA_3, 9, AG_WINDOW_LENGTH, 01101111011011000111100101101101);
        spr_fsvfx = other.spr_fsvfx;
        fsvfx_timer = 0;
        fsvfx_dur = other.fsvfx_dur;
        fsvfx_frames = other.fsvfx_frames;
	}
}

if !training training = get_training_cpu_action() != CPU_FIGHT;

//==============================================================================
//                          Abyss Rune Code
//==============================================================================
//#region Abyss Runes
if runesEnabled { //literally guaranteeing no leaking code
	//#region Rune Setters
	if runesUpdated {
		runesUpdated = false;
		//#region RUNE A: Dash Cancel Tilts & JAB2-3
		if runeA {
			
		} else {
			
		}
		//#endregion
		
		//#region RUNE C: NSPECIAL projectile stun.
		if runeC {
			set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 4);
			set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 5);
			set_hitbox_value(AT_NSPECIAL, 1, HG_HITSTUN_MULTIPLIER, 1);
			set_hitbox_value(AT_NSPECIAL, 1, HG_EFFECT, 990);
			set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE, 10);
		} else {
			reset_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE);
			reset_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK);
			reset_hitbox_value(AT_NSPECIAL, 1, HG_HITSTUN_MULTIPLIER);
			reset_hitbox_value(AT_NSPECIAL, 1, HG_EFFECT);
			reset_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE);
		}
		//#endregion
		//#region RUNE E: FSPECIAL is a kill move.
		if runeE {
			set_hitbox_value(AT_EXTRA_3, 1, HG_ANGLE, 50);
			set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_KNOCKBACK, 6);
			set_hitbox_value(AT_EXTRA_3, 1, HG_KNOCKBACK_SCALING, .9);
		} else {
			reset_hitbox_value(AT_EXTRA_3, 1, HG_ANGLE);
			reset_hitbox_value(AT_EXTRA_3, 1, HG_BASE_KNOCKBACK);
			reset_hitbox_value(AT_EXTRA_3, 1, HG_KNOCKBACK_SCALING);
		}
		//#endregion
		//#region RUNE F: Movement Speed Increase????
		if runeF {
			moonwalk_accel = rune_moonwalk_accel;
			wave_land_adj = rune_wave_land_adj;
			air_max_speed = rune_air_max_speed;
		} else {
			moonwalk_accel = base_moonwalk_accel;
			wave_land_adj = base_wave_land_adj;
			air_max_speed = base_air_max_speed;
		}
		//#endregion
		//#region RUNE J: DC Strongs, FSPEC, and DSPEC
		if runeH {
			set_window_value(AT_JAB, 6, AG_WINDOW_RUNE_DASHCANCELLABLE, true);
			set_window_value(AT_JAB, 7, AG_WINDOW_RUNE_DASHCANCELLABLE, true);
			set_window_value(AT_JAB, 10, AG_WINDOW_RUNE_DASHCANCELLABLE, true);
			set_window_value(AT_JAB, 11, AG_WINDOW_RUNE_DASHCANCELLABLE, true);
			
			set_window_value(AT_FTILT, 3, AG_WINDOW_RUNE_DASHCANCELLABLE, true);
			set_window_value(AT_FTILT, 4, AG_WINDOW_RUNE_DASHCANCELLABLE, true);
			
			set_window_value(AT_UTILT, 7, AG_WINDOW_RUNE_DASHCANCELLABLE, true);
			set_window_value(AT_UTILT, 3, AG_WINDOW_RUNE_DASHCANCELLABLE, true);
			set_window_value(AT_UTILT, 4, AG_WINDOW_RUNE_DASHCANCELLABLE, true);
			set_window_value(AT_UTILT, 8, AG_WINDOW_RUNE_DASHCANCELLABLE, true);
			
			set_window_value(AT_DTILT, 3, AG_WINDOW_RUNE_DASHCANCELLABLE, true);
			set_window_value(AT_DTILT, 4, AG_WINDOW_RUNE_DASHCANCELLABLE, true);
			
			set_window_value(AT_USTRONG, 4, AG_WINDOW_RUNE_DASHCANCELLABLE, true);
			set_window_value(AT_USTRONG, 5, AG_WINDOW_RUNE_DASHCANCELLABLE, true);
			set_window_value(AT_USTRONG, 6, AG_WINDOW_RUNE_DASHCANCELLABLE, true);
			
			set_window_value(AT_FSTRONG, 4, AG_WINDOW_RUNE_DASHCANCELLABLE, true);
			set_window_value(AT_FSTRONG, 5, AG_WINDOW_RUNE_DASHCANCELLABLE, true);
			
			set_window_value(AT_DSTRONG, 3, AG_WINDOW_RUNE_DASHCANCELLABLE, true);
			set_window_value(AT_DSTRONG, 4, AG_WINDOW_RUNE_DASHCANCELLABLE, true);
			
			set_window_value(AT_EXTRA_3, 3, AG_WINDOW_RUNE_DASHCANCELLABLE, true);
			set_window_value(AT_EXTRA_3, 5, AG_WINDOW_RUNE_DASHCANCELLABLE, true);
			
			set_window_value(AT_DSPECIAL, 4, AG_WINDOW_RUNE_DASHCANCELLABLE, 2);
			set_window_value(AT_DSPECIAL, 5, AG_WINDOW_RUNE_DASHCANCELLABLE, true);
			
			set_window_value(AT_NSPECIAL, 3, AG_WINDOW_RUNE_DASHCANCELLABLE, true);
		} else {
			set_window_value(AT_JAB, 6, AG_WINDOW_RUNE_DASHCANCELLABLE, false);
			set_window_value(AT_JAB, 7, AG_WINDOW_RUNE_DASHCANCELLABLE, false);
			set_window_value(AT_JAB, 10, AG_WINDOW_RUNE_DASHCANCELLABLE, false);
			set_window_value(AT_JAB, 11, AG_WINDOW_RUNE_DASHCANCELLABLE, false);
			
			set_window_value(AT_FTILT, 3, AG_WINDOW_RUNE_DASHCANCELLABLE, false);
			set_window_value(AT_FTILT, 4, AG_WINDOW_RUNE_DASHCANCELLABLE, false);
			
			set_window_value(AT_UTILT, 7, AG_WINDOW_RUNE_DASHCANCELLABLE, false);
			set_window_value(AT_UTILT, 3, AG_WINDOW_RUNE_DASHCANCELLABLE, false);
			set_window_value(AT_UTILT, 4, AG_WINDOW_RUNE_DASHCANCELLABLE, false);
			set_window_value(AT_UTILT, 8, AG_WINDOW_RUNE_DASHCANCELLABLE, false);
			
			set_window_value(AT_DTILT, 3, AG_WINDOW_RUNE_DASHCANCELLABLE, false);
			set_window_value(AT_DTILT, 4, AG_WINDOW_RUNE_DASHCANCELLABLE, false);
			
			set_window_value(AT_USTRONG, 4, AG_WINDOW_RUNE_DASHCANCELLABLE, false);
			set_window_value(AT_USTRONG, 5, AG_WINDOW_RUNE_DASHCANCELLABLE, false);
			set_window_value(AT_USTRONG, 6, AG_WINDOW_RUNE_DASHCANCELLABLE, false);
			
			set_window_value(AT_FSTRONG, 4, AG_WINDOW_RUNE_DASHCANCELLABLE, false);
			set_window_value(AT_FSTRONG, 5, AG_WINDOW_RUNE_DASHCANCELLABLE, false);
			
			set_window_value(AT_DSTRONG, 3, AG_WINDOW_RUNE_DASHCANCELLABLE, false);
			set_window_value(AT_DSTRONG, 4, AG_WINDOW_RUNE_DASHCANCELLABLE, false);
			
			set_window_value(AT_EXTRA_3, 3, AG_WINDOW_RUNE_DASHCANCELLABLE, false);
			set_window_value(AT_EXTRA_3, 5, AG_WINDOW_RUNE_DASHCANCELLABLE, false);
			
			set_window_value(AT_DSPECIAL, 4, AG_WINDOW_RUNE_DASHCANCELLABLE, false);
			set_window_value(AT_DSPECIAL, 5, AG_WINDOW_RUNE_DASHCANCELLABLE, false);
			
		}
		//#endregion
		//#region RUNE K: Taunt is Incineroar Revenge
		if runeK {
		
		}
		//#endregion
		
	}
	//#endregion
	
	//#region RUNE A & J: Dash Cancel
	if runeH {
		if left_hard_pressed {
			clear_button_buffer(PC_LEFT_HARD_PRESSED);
			if rune_dc_input_stage == 0 {
			rune_dc_input_stage = 1;
			rune_dc_input_timer = 12;
			} else if rune_dc_input_stage == 1 {
				rune_dc_input = true;
				rune_dc_input_stage = 2;
				rune_dc_input_dir = -1;
				rune_dc_input_timer = 5;
			}
		}
		if right_hard_pressed {
			clear_button_buffer(PC_RIGHT_HARD_PRESSED);
			if rune_dc_input_stage == 0 {
			rune_dc_input_stage = 1;
			rune_dc_input_timer = 12;
			} else if rune_dc_input_stage == 1 {
				rune_dc_input = true;
				rune_dc_input_stage = 2;
				rune_dc_input_dir = 1;
				rune_dc_input_timer = 5;
			}
		}
		
		if rune_dc_input_timer > 0 rune_dc_input_timer--;
		else {
			rune_dc_input = false;
			rune_dc_input_stage = 0;
			rune_dc_input_timer = 0;
		}
	}
	//#endregion
	
	//#region RUNE G: Anime Fighter Aerial Cancels.
	if runeG && state != 5 && state != 6 {
		rune_fair_free = true;
		rune_uair_free = true;
		rune_nair_free = true;
		rune_dair_free = true;
		rune_bair_free = true;
	}
	//#endregion
	
	
	if runeI && rune_uppers >= rune_uppers_max move_cooldown[AT_USPECIAL] = 2;
	if !free && !(state == PS_ATTACK_GROUND && attack == AT_USPECIAL){
		rune_uppers = 0;
	}
	if (state_cat == SC_HITSTUN || state == PS_WALL_JUMP) && rune_uppers > 0 {
		rune_uppers--;
	}
	
	//#region RUNE K: Incineroar Revenge.
	if runeK {
		with oPlayer {
			if id != other.id && olympia_revengehit && olympia_revengeplayer == other.id {
				if state == PS_HITSTUN && get_gameplay_time()%4 == 0 
				with other {
					var sprk = spawn_hit_fx(other.x-37*spr_dir,other.y-20-7,olym_spark);
					sprk.depth = depth-3;
				}
				else if state != PS_HITSTUN {
					olympia_revengehit = false;
					olympia_revengeplayer = noone;
				}
			}
		}
		
		if rune_revengebuff > 0 {
			if get_gameplay_time() % ((rune_revengebuff-10)*3) == 0 {
				var sprkoffset_x = random_func(1,60,true)-30;
				var sprkoffset_y = random_func(2,50,true)-25;
				var sprk = spawn_hit_fx(floor(x-(37*spr_dir)-sprkoffset_x),floor(y-20-7-sprkoffset_y),olym_spark);
					sprk.depth = depth+3;
			}
			if !(move_cooldown[AT_DSPECIAL] == clamp(move_cooldown[AT_DSPECIAL], 1, 4)){
				outline_color = [floor(255*(rune_revengebuff/5)),floor(90*(rune_revengebuff/5)),floor(30*(rune_revengebuff/5))];
				init_shader();
				
			}
		} else {
			if !(move_cooldown[AT_DSPECIAL] == clamp(move_cooldown[AT_DSPECIAL], 1, 4))
			outline_color = [0,0,0];
		}
	}
	//#endregion
	
	//#region RUNE L: Superdash.
	if runeL {
		var num_players = instance_number(oPlayer);
		if num_players > 2 {
			var players_alive = 0;
			for (var _f = 0; _f < num_players; _f++) {
				if instance_find(oPlayer,_f).state != PS_DEAD players_alive++;
			}
			if players_alive > 2 {
				rune_superdash_target = hit_player_obj;
			} else {
				with oPlayer {
					if id != other.id other.rune_superdash_target = id;
				}
			}
		} else {
			with oPlayer {
				if id != other.id other.rune_superdash_target = id;
			}
		}
		if rune_superdash_used move_cooldown[AT_SUPERDASH] = max(move_cooldown[AT_SUPERDASH], 2);
		if !free rune_superdash_used = false;
	}
	//#endregion
	
	//#region RUNE O: Command Inputs
	if runeO {
		var attacking = (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR);
		///////////////////////////ALWAYS FACE THE OPPONENT///////////////////////////
		//#region FACE OPPONENT
		
		var rival_players=0, rival;
		if !noturn {
			with asset_get("oPlayer"){
			    if ( player!=other.player and get_player_team(player) != get_player_team(other.player) ) /*and !clone*/ {
			        rival=id;
			        ++rival_players;
			    }
			}
		}
		if rival_players==1 and !noturn {
		    if state==PS_IDLE or state==PS_CROUCH or state==PS_DASH_START or state==PS_WALK or state==PS_WALK_TURN or state==PS_JUMPSQUAT {
		        if rival.x>x {
		            looking=1
		        } else looking=-1
		    } else looking=spr_dir;
		    
		    if ( state==PS_IDLE or state==PS_CROUCH or (state==PS_JUMPSQUAT and prev_state!=PS_DASH_TURN))  {
		        spr_dir=looking;
		    }
		    
		    
		} else if (state!=PS_DASH_START and state!=PS_WALK_TURN) looking=spr_dir;
		
		//#endregion
		///////////////////////////MOTION INPUT///////////////////////////
		//Input Storage
		//#region Command Input Logic
		var vertical_dir = 0;
		var horizontal_dir = 0;
		var dir = 0;
		var buttons = 0000;
		if !joy_pad_idle {
			vertical_dir = (up_down*-1)+(down_down*1);
			horizontal_dir = (left_down*-1)+(right_down*1);
			dir = 1+round(joy_dir/45);
			if dir == 9 dir = 1;
		}
		
		buttons = buttons | (attack_down<<0) | (special_down<<1) | (jump_down<<2) | (shield_down<<3);
		
		currentInput = [vertical_dir,horizontal_dir,dir,buttons,1];
		
		if currentInput[2] != inputs[| 0][2] || currentInput[3] != inputs[| 0][3] {
			//ds_list_clear(inputs);
			ds_list_insert(inputs,0,currentInput);
		} else {
			inputs[| 0][@ 4] += 1;
		}
		
		if ds_list_size(inputs) > 8 {
			ds_list_delete(inputs,8);
		}
		
		//#region Input Check
		
		var ptr = 0;
		var null_inputs = array_create(8,0);
		input_time_covered = 0;
		if ds_list_size(inputs) >= 3 {
			repeat(array_length(input_patterns)) {
				var i = 0;
				repeat(ds_list_size(inputs)) {
					var prog = 0;
					var inputs_passed = 0;
					if inputs[| i][2] == input_patterns[@ ptr][@ prog] {
						//get_string("success",string(prog)+"/"+string(array_length(input_patterns[ptr])));
						do { 
							if current_success < -3 && is_array(inputs[| i + inputs_passed]) && 
							null_inputs[i + inputs_passed] != 1 && 
							inputs[| i + inputs_passed][2] == input_patterns[ptr][prog] {
								if input_time_covered+inputs[| i + inputs_passed][4] <= input_leniency && (prog == 0 || inputs[| i + inputs_passed][2] != inputs[| i + inputs_passed-1][2]) {
									input_time_covered = 0;
									null_inputs[i + inputs_passed] = 1;
									prog++;
									inputs_passed++;
								}
								else break;
								//get_string("success",string(prog)+"/"+string(array_length(input_patterns[ptr])));
							} else {
								if is_array(inputs[| i + inputs_passed])
								input_time_covered += inputs[| i + inputs_passed++][4];
								else break;
							}
						}
						until (prog == array_length(input_patterns[ptr]) || input_time_covered > input_leniency || i+inputs_passed <= array_length(inputs[| i][2]))
						
						if prog == array_length(input_patterns[ptr]) {
							current_success = 9;
							latest_pattern = ptr;
							null_inputs[i + inputs_passed+1] = 1;
						}
					}
				}
				if current_success > 0 break;
				ptr++;
			}
		}
		
		if state != clamp(state,5,6) {
			can_command_input = true;
		}
		current_success--;
		//#endregion
		

		
		if state == PS_WALK || state == PS_WALK_TURN {
			var rival_players, rival;
			with asset_get("oPlayer"){
				if ( player!=other.player and get_player_team(player) != get_player_team(other.player) ) /*and !clone*/ {
					rival=id;
					++rival_players;
				}
			}
			if rival.x>x {
				looking=1;
			} else looking=-1;
			spr_dir = looking;
			
			set_attack(AT_EXTRA_2);
		} else if state == PS_DASH_START {
			
			var rival_players, rival;
			with asset_get("oPlayer"){
				if ( player!=other.player and get_player_team(player) != get_player_team(other.player) ) /*and !clone*/ {
					rival=id;
					++rival_players;
				}
			}
			if rival.x>x {
				looking=1;
			} else looking=-1;
			if spr_dir != looking {
				rune_dc_input_dir = spr_dir*1.2;
				spr_dir = looking;
				move_variation = 0;
				set_attack(AT_DASHCANCEL);
			} else {
				rune_dc_input_dir = spr_dir*1.2;
				spr_dir = looking;
				move_variation = 1;
				set_attack(AT_DASHCANCEL);
			}
		}
	}
	//#endregion
}
//#endregion
//==============================================================================
