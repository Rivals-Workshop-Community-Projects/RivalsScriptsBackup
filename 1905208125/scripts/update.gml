//special skins

attacking = state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND;

if state == PS_SPAWN || spawn_timer == 1 && was_reloaded {
	//Skin Shortcuts
	if (taunt_down && spawn_timer < 120 && !skinOverridden) {
		var curSkin = (skinOverride*(skinOverridden==true))+(get_player_color(player)*(skinOverridden==false));
		if (attack_down) {
			if (chkPal(9) && curSkin != 9) { //Youmu Shortcut
				skinOverridden = true;
				skinOverride = 9;
				init_shader();
				sound_play(asset_get("mfx_confirm"));
			}
		} else if (jump_down) {
			if (chkPal(15) && curSkin != 15) { //Rainbow Shortcut
				skinOverridden = true;
				skinOverride = 15;
				init_shader();
				sound_play(asset_get("mfx_confirm"));
			}
		} else if (special_down) {
			if (chkPal(7) && curSkin != 7) { //Lumi Shortcut
				skinOverridden = true;
				skinOverride = 7;
				init_shader();
				sound_play(asset_get("mfx_confirm"));
			}
		} else if (strong_down) { //Glass Shortcut
			if (chkPal(13) && curSkin != 13) {
				skinOverridden = true;
				skinOverride = 13;
				init_shader();
				sound_play(asset_get("mfx_confirm"));
			}
		} else if ( down_strong_down || down_stick_down ) { //Seggo Shortcut
			if (chkPal(20) && curSkin != 20) {
				skinOverridden = true;
				skinOverride = 20;
				init_shader();
				sound_play(asset_get("mfx_confirm"));
			}
		} else if ( left_strong_down || left_stick_down ) { //Kae Shortcut
			if (chkPal(23) && curSkin != 23) {
				skinOverridden = true;
				skinOverride = 23;
				init_shader();
				sound_play(asset_get("mfx_confirm"));
			}
		} else if ( right_strong_down || right_stick_down ) { //Bluey Shortcut
			if (chkPal(17) && curSkin != 17) {
				skinOverridden = true;
				skinOverride = 17;
				init_shader();
				sound_play(asset_get("mfx_confirm"));
			}
		} else if ( up_strong_down || up_stick_down ) { //Kaede Shortcut
			if (chkPal(21) && curSkin != 21) {
				skinOverridden = true;
				skinOverride = 21;
				init_shader();
				sound_play(asset_get("mfx_confirm"));
			}
		}
		//Skin Selector
		if (shield_down) {
			skinSelector_spawnmode = true;
			set_attack(skinSelector_attack);
		}
	}
	
}

if (((!attacking || attack != AT_NSPECIAL) || (attack == AT_NSPECIAL && window == clamp(window, 3, 5))) && shold != 0) {
	shold = 0;
}

if attack == AT_USPECIAL && state == 5 && (window == 1 || window == 2){
	move_cooldown[AT_USPECIAL] = 999;
	air_accel = 0;
	air_friction = .1;
} else {
	air_accel = .3;
	air_friction = .02;
}

if !free || (vsp == 0 && state == 5) || state == PS_WALL_JUMP || state == PS_HITSTUN {
    move_cooldown[AT_USPECIAL] = 0;
}

if shold == 25 {
	sound_play(asset_get("sfx_diamond_small_collect"));
}

if shold == 49 {
	sound_play(asset_get("sfx_coin_collect"));
}

//Trummel codec
if trummelcodecneeded{
    trummelcodec = 17;
    trummelcodecmax = 9;
    trummelcodecsprite1 = sprite_get("trummel");
    trummelcodecsprite2 = sprite_get("X");

    //Page 0
    trummelcodecspeaker[0] = 1;
    trummelcodecexpression[0] = 2;

    trummelcodecline[0,1] = "Bow, check. Snake, check.";
    trummelcodecline[0,2] = "This must be that hunter";
    trummelcodecline[0,3] = "I've been hearing rumors";
	trummelcodecline[0,4] = "about, Hime Daisho.";

    //Page 1
    trummelcodecspeaker[1] = 1;
    trummelcodecexpression[1] = 2;

    trummelcodecline[1,1] = "She doesn't have any";
    trummelcodecline[1,2] = "special power, but her";
	trummelcodecline[1,3] = "toolkit is enough to";
	trummelcodecline[1,4] = "keep up the pressure.";

    //Page 2
    trummelcodecspeaker[2] = 2;
    trummelcodecexpression[2] = 1;

    trummelcodecline[2,1] = "whats that flashing";
    trummelcodecline[2,2] = "thing";
    trummelcodecline[2,3] = "";
    trummelcodecline[2,4] = "";
	
	//Page 3
    trummelcodecspeaker[3] = 1;
    trummelcodecexpression[3] = 2;

    trummelcodecline[3,1] = "That's her bomb arrow.";
    trummelcodecline[3,2] = "If we get stuck with it,";
    trummelcodecline[3,3] = "it'll blow up a few";
    trummelcodecline[3,4] = "seconds after.";
	
	//Page 4
    trummelcodecspeaker[4] = 1;
    trummelcodecexpression[4] = 5;

    trummelcodecline[4,1] = "Giving her a free";
    trummelcodecline[4,2] = "opening to start a";
    trummelcodecline[4,3] = "combo on us.";
	trummelcodecline[4,4] = "";
	
	//Page 5
    trummelcodecspeaker[5] = 1
    trummelcodecexpression[5] = 4;

    trummelcodecline[5,1] = "Seems a bit busted that";
    trummelcodecline[5,2] = "she can get lasting";
    trummelcodecline[5,3] = "pressure from that far,";
    trummelcodecline[5,4] = "to be honest.";
	
	//Page 6
    trummelcodecspeaker[6] = 2;
    trummelcodecexpression[6] = 1;

    trummelcodecline[6,1] = "fspec honest";
    trummelcodecline[6,2] = "";
    trummelcodecline[6,3] = "";
    trummelcodecline[6,4] = "";
	
	//Page 7
    trummelcodecspeaker[7] = 1
    trummelcodecexpression[7] = 1;

    trummelcodecline[7,1] = "Thankfully, we can";
	trummelcodecline[7,2] = "use the bomb arrow";
	trummelcodecline[7,3] = "against her if she's";
	trummelcodecline[7,4] = "not smart about it.";
	
	//Page 8
    trummelcodecspeaker[8] = 1
    trummelcodecexpression[8] = 0;

    trummelcodecline[8,1] = "The explosion can be";
	trummelcodecline[8,2] = "parried, and it can";
	trummelcodecline[8,3] = "hit her too if we're";
	trummelcodecline[8,4] = "close enough.";
	
	//Page 9
    trummelcodecspeaker[9] = 1
    trummelcodecexpression[9] = 3;

    trummelcodecline[9,1] = "Just try to keep out";
	trummelcodecline[9,2] = "of her line of sight,";
	trummelcodecline[9,3] = "and I'm sure we'll be";
	trummelcodecline[9,4] = "fine.";
}



if (down_down && attack == AT_EXTRA_1) && (window == 3 && window_timer == 38)
{
 set_state( PS_CROUCH);
}

// SAI
if intro = 0 {
	introx = x
	introy = y
}

// i love you saka <3
//line 216 [ if ((hit_player_obj.url == hime && hit_player_obj.ready)|| hit_player_obj.url == zetta) { ]
if ((state_cat == SC_HITSTUN || intro = 1) && !talked && ready) {
	
	var hime = "1905208125";
	var zetta = "1913869515";
	if ((hit_player_obj.url == hime && hit_player_obj.ready)|| hit_player_obj.url == zetta) {
		if (introtimer == -1) {
    		introtimer = 400;
		}

		if (introtimer > 0) {
			with (asset_get("pHitBox")) {
				if (player_id == other.id) {
	    			destroyed = true;
				}
			}
			introtimer -= 1;
			x = introx;
			y = introy;
			hsp = 0;
			vsp = 0;
			
			if (!hitpause) {
				state_timer -= 1;      
				window_timer -= 1;
			}

			if (state_cat == SC_HITSTUN) {
				if (get_gameplay_time() % 2 == 0) {
					spawn_hit_fx( x, y, darken );    
				}
			}
		} else {
			// When the timer hits 0, talked is true and this no longer is
			// checked every frame
			talked = true;
		}
	}
} else if ((state_cat == SC_HITSTUN || intro = 1) && !talked) {
	// Make it so if Hime is not ready and she is hit, it already counts
	// as her having talked
	talked = true;
}
if (!talked) && get_gameplay_time() >= 5 {
    // If the other Hime has talked, so have you :o
    var hime = self;
    var hime_url = url;
    with oPlayer {
        if (self != hime) {
            if (url == hime_url) {
                if (talked) {
                    hime.talked = true;
                }
            }
        }
    }
}

//Rune Code

if runesUpdated {
	runesUpdated = false;
	//Rune A - Ranno Poison
	if runeA {
		set_hitbox_value(AT_BAIR, 1, HG_EFFECT, 10);
		set_hitbox_value(AT_BAIR, 2, HG_EFFECT, 10);
		set_hitbox_value(AT_NAIR, 1, HG_EFFECT, 10);
		set_hitbox_value(AT_NAIR, 2, HG_EFFECT, 10);
		set_hitbox_value(AT_UTILT, 2, HG_EFFECT, 10);
	} else {
		set_hitbox_value(AT_BAIR, 1, HG_EFFECT, 0);
		set_hitbox_value(AT_BAIR, 2, HG_EFFECT, 0);
		set_hitbox_value(AT_NAIR, 1, HG_EFFECT, 0);
		set_hitbox_value(AT_NAIR, 2, HG_EFFECT, 0);
		set_hitbox_value(AT_UTILT, 2, HG_EFFECT, 0);
	}
	
	
	//Rune C - Bunny Hood.
	if runeC {
		dash_anim_speed = .3;
		initial_dash_speed = 8.5;
		dash_speed = 8.5;
		jump_speed = 13;
		djump_speed = 13;
		jump_sound = sound_get("boiing");
		djump_sound = sound_get("boiiing");
	} else {
		dash_anim_speed = .2;
		initial_dash_speed = 7;
		dash_speed = 7;
		jump_speed = 11;
		djump_speed = 10.5;
		jump_sound = asset_get("sfx_jumpground");
		djump_sound = asset_get("sfx_jumpair");
	}
	//Rune G - Decreased USPECIAL startup.
	if runeG {
		set_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH, 15);
	} else {
		reset_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH);
	}
	
	//Rune H - Honest DSMASH
	if runeH {
		set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE, 280);
		set_hitbox_value(AT_DSTRONG, 3, HG_ANGLE, 280);
	} else {
		reset_hitbox_value(AT_DSTRONG, 1, HG_ANGLE);
		reset_hitbox_value(AT_DSTRONG, 3, HG_ANGLE);
	}
	if runeI {
		set_attack_value(AT_JAB, AG_SPRITE, sprite_get("jab_rune"));
	} else {
		reset_attack_value(AT_JAB, AG_SPRITE);
	}
	//Rune J - Young Link NSPECIAL
	//(NSPECIAL has less endlag and pops enemies up (when not fully charged))
	if runeJ {
		set_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH, 11);
		set_window_value(AT_NSPECIAL, 4, AG_WINDOW_LENGTH, 11);
		set_window_value(AT_NSPECIAL, 5, AG_WINDOW_LENGTH, 11);
		set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_HSPEED, 20);
		set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 7);
		set_hitbox_value(AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING, 0.4);
		set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, 80);
		set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_HSPEED, 20);
		set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_KNOCKBACK, 8);
		set_hitbox_value(AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING, 0.5);
		set_hitbox_value(AT_NSPECIAL, 2, HG_ANGLE, 80);
	} else {
		reset_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH);
		reset_window_value(AT_NSPECIAL, 4, AG_WINDOW_LENGTH);
		reset_window_value(AT_NSPECIAL, 5, AG_WINDOW_LENGTH);
		reset_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_HSPEED);
		reset_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_HSPEED);
		reset_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK);
		reset_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE);
		reset_hitbox_value(AT_NSPECIAL, 2, HG_BASE_KNOCKBACK);
		reset_hitbox_value(AT_NSPECIAL, 2, HG_ANGLE);
	}
	//Rune K - Jet Set Hime DSPECIAL. (no friction on DSPECIAL)
	if runeK {
		set_window_value(AT_DSPECIAL, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
		set_window_value(AT_DSPECIAL, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
		set_window_value(AT_DSPECIAL, 1, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
		set_window_value(AT_DSPECIAL, 2, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
	} else {
		reset_window_value(AT_DSPECIAL,1,AG_WINDOW_CUSTOM_GROUND_FRICTION);
		reset_window_value(AT_DSPECIAL,2,AG_WINDOW_CUSTOM_GROUND_FRICTION);
		reset_window_value(AT_DSPECIAL,1,AG_WINDOW_CUSTOM_AIR_FRICTION);
		reset_window_value(AT_DSPECIAL,2,AG_WINDOW_CUSTOM_AIR_FRICTION);
	}
}
//normal runes
	
if state == PS_AIR_DODGE && runeF {
	move_cooldown[AT_USPECIAL] = 0;
}

//Rune Code Over

//rainbow code
if ((skinOverridden && skinOverride == 15) || (!skinOverridden && get_player_color(player) == 15)) {
	hue+=1;
	if (hue>255) {hue-=255;}
	
	color_rgb=make_color_rgb(255, 100, 255); 
	hue2=(color_get_hue(color_rgb)+hue) mod 255;
	color_hsv=make_color_hsv(hue2,color_get_saturation(color_rgb),color_get_value(color_rgb)); 
	
	init_shader();
}


if (down_down && taunt_down && state_cat == SC_GROUND_NEUTRAL) holdtimer++; else holdtimer = 0;

if (holdtimer > 180) {
	skinSelector_spawnmode = false;
	set_attack(skinSelector_attack);
}

#define chkPal(num)

with (oPlayer) {
	if (id != other.id && (url == "1984096324" || url == "1905208125")) {
		if ((skinOverridden && skinOverride == num) 
		|| (!skinOverridden && get_player_color(player) == num && skinSelector_defaultsEnabled)) {
			return false;
		}
	}
}

return true;

#define updateSkin
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get(specialskins[specialskin]+"fspecial_proj"));
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get(specialskins[specialskin]+"nspecial_proj"));
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_SPRITE, sprite_get(specialskins[specialskin]+"nspecial_proj"));
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_SPRITE, sprite_get(specialskins[specialskin]+"nspecial_proj"));
set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_SPRITE, sprite_get(specialskins[specialskin]+"ustrong_proj"));
//init_shader();