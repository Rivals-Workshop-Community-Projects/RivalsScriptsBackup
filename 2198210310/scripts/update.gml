//update

//kirby
if swallowed { //Kirby ability script starts here
    swallowed = 0
    //Define any assets kirby might need to grab from YOUR CHARACTER
    //var ability_spr = sprite_get("YOUR KIRBY SPRITE HERE");
    //var ability_hurt = sprite_get("YOUR KIRBY HURTBOX HERE")
    var ability_icon = sprite_get("kirby_icon") //Optional
    var ability_spr = sprite_get("kirby_fthrow");
    with enemykirby { //Define AT_EXTRA_3 for Kirby, using your asset variables where necessary in place of sprite_get or sound_get
        set_window_value(AT_EXTRA_3, 21, AG_WINDOW_ANIM_FRAMES, 113);
    
        set_attack_value(AT_EXTRA_3, AG_CATEGORY, 2);
        set_attack_value(AT_EXTRA_3, AG_SPRITE, ability_spr);
        set_attack_value(AT_EXTRA_3, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt"));
        
        set_attack_value(AT_EXTRA_3, AG_NUM_WINDOWS, 3);
        
        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_LENGTH, 15);
        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAMES, 3);
        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_HAS_SFX, 1);
        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX_FRAME, 8);
        
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_LENGTH, 20);
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAMES, 1);
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAME_START, 3);
        
        set_window_value(AT_EXTRA_3, 3, AG_WINDOW_LENGTH, 8);
        set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAMES, 1);
        set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAME_START, 4);
        
        newicon = ability_icon //Optional, replaces the kirby ability icon
    } //Kirby ability script ends here
}
if enemykirby != undefined { //if kirby is in a match & swallowed
    with oPlayer { //Run through all players
        if ((state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && attack == AT_EXTRA_3) {
            //your code here
            if window == 1 && window_timer == 9 {
                with other {
                    var cube = create_hitbox(AT_NSPECIAL, 1, other.x, other.y - 25);
                    	cube.spr_dir = other.spr_dir
                        cube.hsp = 7*other.spr_dir;
                        cube.vsp = -6;
                        cube.bounceHsp = -2;
                        cube.bounceVsp = -3;
                        cube.power = 0;
                        cube.willExplode = false;;
                        cube.explodeTimer = heldExplodeTimer;
                        cube.explodeThreshhold = heldExplodeThreshhold;
                        cube.hitCooldown = 10;
                        cube.hit_priority = 3;
                        cube.kirby_thrown = true;
                        cube.can_hit[other.player] = false;
                        cube.can_hit_self = true;
                        cube.was_grounded = false;
                }
            }
        }
    }
}

//codec
if trummelcodecneeded {
    trummelcodec = 17;
    trummelcodecmax = 9;
    trummelcodecsprite1 = sprite_get("X");
    trummelcodecsprite2 = sprite_get("X");
    var page = 0;
    /*
    //Page X
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "";
    trummelcodecline[page,2] = "";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++;
    */
    
    //Page 0
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 1;

    trummelcodecline[page,1] = "Hey look, it's Wall-E!";
    trummelcodecline[page,2] = "Didn't expect him to";
    trummelcodecline[page,3] = "show up around here.";
    trummelcodecline[page,4] = "";
    page++;
    
    //Page 1
    trummelcodecspeaker[page] = 2;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "smells like trash";
    trummelcodecline[page,2] = "";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++;
    
    //Page 2
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 2;

    trummelcodecline[page,1] = "Well he does clean up";
    trummelcodecline[page,2] = "literal garbage every";
    trummelcodecline[page,3] = "day, he's been doing it";
    trummelcodecline[page,4] = "for over 700 years!";
    page++;
    
    //Page 3
    trummelcodecspeaker[page] = 2;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "ok boomer";
    trummelcodecline[page,2] = "";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++;
    
    //Page 4
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 4;

    trummelcodecline[page,1] = "His age isn't anything";
    trummelcodecline[page,2] = "to laugh about Trummel,";
    trummelcodecline[page,3] = "he is a robot after all.";
    trummelcodecline[page,4] = "";
    page++;
    
    //Page 5
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 5;

    trummelcodecline[page,1] = "If we're not careful, we";
    trummelcodecline[page,2] = "might get hit by a flying";
    trummelcodecline[page,3] = "cube of trash, or a";
    trummelcodecline[page,4] = "plasma shot from EVE.";
    page++;
    
    //Page 6
    trummelcodecspeaker[page] = 2;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "wait there are more";
    trummelcodecline[page,2] = "robots";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++;
    
    //Page 7
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 2;

    trummelcodecline[page,1] = "Yep, Wall-E's robot";
    trummelcodecline[page,2] = "companions help out in";
    trummelcodecline[page,3] = "some of his attacks.";
    trummelcodecline[page,4] = "They really pack a punch.";
    page++;
    
    //Page 8
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "Our best bet is to break";
    trummelcodecline[page,2] = "his trash cubes, or hit";
    trummelcodecline[page,3] = "them back at Wall-E, so";
    trummelcodecline[page,4] = "we can get in to attack.";
    page++;
    
    //Page 9
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 5;

    trummelcodecline[page,1] = "And whatever we do,";
    trummelcodecline[page,2] = "don't hit Wall-E when";
    trummelcodecline[page,3] = "his flap opens. Things";
    trummelcodecline[page,4] = "might get...unpleasant.";
    page++;
}

move_cooldown[AT_FSPECIAL] = 60;

if (state == PS_ATTACK_GROUND) && (attack == AT_UTILT) && (window == 2) {
    if (char_height < 80) {
        char_height += 8;
    }
} else if (state == PS_ATTACK_AIR) && (attack == AT_UAIR) && (window != 1) {
    if (char_height < 70) {
        char_height += 8;
    }
} else if holdingCube {
    if (char_height < 70) {
        char_height += 8;
    }
} else {
    if (char_height > 52) {
        char_height -= 8;
    }
}

if fspecCooldown > 0 {
    fspecCooldown--;
}

if cubeCooldown < cubeCooldownMax {
	cubeCooldown++;
}

//no explanation needed
if always_holding_rock {
	holdingCube = true;
	
	if (state == PS_IDLE || state == PS_WALK || state == PS_DASH || state == PS_FIRST_JUMP || state == PS_CROUCH || state == PS_IDLE_AIR) && (attack_down || special_down) {
		if free {
			set_state(PS_ATTACK_AIR)
		} else {
			set_state(PS_ATTACK_GROUND)
		}
		
		if (down_down && !up_down) {
	        attack = AT_DTHROW;
	        if has_rune("J") {
	            throwHsp = 0;
	            throwVsp = 11;
	        } else {
	            throwHsp = 0;
	            throwVsp = 8;
	        }
	        bounceHsp = 0;
	        bounceVsp = -6;
	    } else if (left_down && !right_down) || (right_down && !left_down) {
	        if (left_down && !right_down) {
	            spr_dir = -1;
	        } else {
	        	spr_dir = 1
	        }
	        attack = AT_FTHROW;
	        if has_rune("J") {
	            throwHsp = 15;
	            throwVsp = -3;
	        } else {
	            throwHsp = 11;
	            throwVsp = -2;
	        }
	        bounceHsp = -5;
	        bounceVsp = -3;
	    } else if (up_down && !down_down) {
	        attack = AT_UTHROW;
	        if has_rune("J") {
	            throwHsp = 0;
	            throwVsp = -15;
	        } else {
	            throwHsp = 0;
	            throwVsp = -12;
	        }
	        bounceHsp = 0;
	        bounceVsp = -6;
	    } else {
	        attack = AT_FTHROW;
	        if has_rune("J") {
	            throwHsp = 7;
	            throwVsp = -12;
	        } else {
	            throwHsp = 5;
	            throwVsp = -9;
	        }
	        bounceHsp = -4;
	        bounceVsp = -6;
	    }
	    
	    
	    
	    
	}
}

if !((attack == AT_NSPECIAL || attack == AT_DSPECIAL_2) && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND)) {
    sound_stop(sound_get("compact"));
    sound_stop(sound_get("compact1"));
    sound_stop(sound_get("compact2"));
}

if compactID != undefined {
    compactID.state = PS_HITSTUN;
    compactID.x = x;
    compactID.y = y-10;
    compactID.hsp = 0;
    compactID.vsp = 0;
}

//trash counter stuff
cubeCounter = 0;

with obj_article_solid {
    if player_id == other.id && !junked {
        other.cubeCounter++;
    }
}

with pHitBox {
    if player_id == other.id && attack == AT_NSPECIAL && hbox_num == 1 && !(variable_instance_exists(self, "kirby_thrown")) {
        other.cubeCounter++;
    }
}

if holdingCube {
	if walljump_orig == undefined {
		walljump_orig = has_walljump
	}
    cubeCounter++;
}



//find nearest cube
user_event(0);

//print_debug(string(cubeDist) + ", " + string(cubeNearest));

/*
//destroy oldest junk pile
if (trashCounter > 3) && (get_gameplay_time() mod 2 == 0) {
    var timerOldest = 0;
    var destroyID = undefined;
    with obj_article1 {
        if player_id == other.id && timer > timerOldest {
            timerOldest = timer;
            destroyID = id;
        }
    }
    
    if destroyID != undefined {
        destroyID.scraped = true;
        trashCounter--;
    }
}
*/

if compactID != undefined {
    compactID.visible = false;
    compactID.x = x;
    compactID.y = y;
    compactID.hitstop = 10;
}

if (compactTimer > 0) {
    var currentH = 24;
    var currentS = 220;
    var currentV = 180;
    if (compactTimer == compactMax) {
        currentS *= abs((get_gameplay_time() mod 80) - 40)/40 + 0.2;
    }
    var currentColour = make_color_hsv(currentH, currentS, currentV*(compactTimer/compactMax));
    outline_color = [color_get_red(currentColour), color_get_green(currentColour), color_get_blue(currentColour)];
    init_shader();
}

//holding cube stuff
if holdingCube {
    if heldExplode && heldExplodeTimer <= 0 { //explode cube
        sound_play(asset_get("sfx_ell_fist_explode"));
        spawn_hit_fx(x, y - 65, 141);
        var boom = create_hitbox(AT_NSPECIAL, 2, x, y - 60);
        	boom.can_hit_self = true;
        holdingCube = false;
        heldExplode = false;
        heldExplodeTimer = heldExplodeMax;
        has_airdodge = true;
    } else {
        if heldPower >= compactThreshhold {
            var freq = floor(10 * 60/heldPower);
            if get_gameplay_time() mod freq == 1 {
                var xMod = random_func_2(get_gameplay_time() mod 200, 30, true) - 15;
                var yMod = random_func_2((get_gameplay_time()*2) mod 200, 30, true) - 15;
                var fx = spawn_hit_fx(x + xMod, y - 70 + yMod, smoke_vfx);
                    fx.depth = -4;
            }
        }
        
        if (heldExplode) {
            heldExplodeTimer--;
        }
        
        has_airdodge = false;
        
        clear_button_buffer(PC_SHIELD_PRESSED);
        
        if shield_pressed || state == PS_PARRY_START || state == PS_ROLL_FORWARD || state == PS_ROLL_BACKWARD {
            state = PS_IDLE;
            state_timer = get_gameplay_time()
        }
        
        if (state == PS_CROUCH) {
            state = PS_IDLE;
            state_timer = get_gameplay_time()
        }
        
        can_tech = false;
        can_wall_tech = false;
        walk_speed = 2;
        dash_speed = 4;
        initial_dash_speed = 4;
        max_djumps = 0;
        max_jump_hsp = 4;
        move_cooldown[AT_TAUNT] = 10;
        move_cooldown[AT_TAUNT_2] = 10;
        has_walljump = false;
        /*
        move_cooldown[AT_JAB] = 10;
        move_cooldown[AT_FTILT] = 10;
        move_cooldown[AT_DTILT] = 10;
        move_cooldown[AT_UTILT] = 10;
        move_cooldown[AT_FSTRONG] = 10;
        move_cooldown[AT_DSTRONG] = 10;
        move_cooldown[AT_USTRONG] = 10;
        move_cooldown[AT_DATTACK] = 10;
        move_cooldown[AT_FAIR] = 10;
        move_cooldown[AT_BAIR] = 10;
        move_cooldown[AT_DAIR] = 10;
        move_cooldown[AT_UAIR] = 10;
        move_cooldown[AT_NAIR] = 10;
        move_cooldown[AT_FSPECIAL] = 10;
        move_cooldown[AT_DSPECIAL] = 10;
        move_cooldown[AT_USPECIAL] = 10;
        move_cooldown[AT_TAUNT] = 10;
        */
    }
} else {
    walk_speed = walk_speed_orig;
    dash_speed = dash_speed_orig;
    initial_dash_speed = initial_dash_speed_orig;
    max_djumps = 1;
    max_jump_hsp = max_jump_hsp_orig;
    
    if walljump_orig != undefined {
    	has_walljump = walljump_orig
    	walljump_orig = undefined;
    }
}

//RAINBOWS
if !("hue" in self) hue = 0
if get_player_color(player) = 13 {
	hue+=.5 
	if hue>255 hue-=255;
	//make hue shift every step + loop around

	color_rgb=make_color_rgb(255, 69, 125);
	//make a gamemaker color variable using kirby's default color (body)
	hue2=(color_get_hue(color_rgb)+hue) mod 255;
	//shift that colour by Hue, make sure it also loops
	color_hsv=make_color_hsv(hue2,color_get_saturation(color_rgb),color_get_value(color_rgb)); 
	//make a gamemaker color variable using the new hue
	set_color_profile_slot(13,0,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
	//set the new color using rgb values from the gamemaker color
}
init_shader();

//taunt compatibility

if sound_taunt {
    with oPlayer {
        if id != other.id {
            if variable_instance_exists(self, "walle_taunt_sound") {
                other.taunt_sound = walle_taunt_sound;
                other.taunt_type = walle_taunt_type;
            }
        }
    }
    if taunt_type == 1 {
        suppress_stage_music(0, 1);
        if !taunt_played {
            sound_play(taunt_sound, 1);
            taunt_played = true;
        }
    } else {
        if !taunt_played {
            sound_play(taunt_sound);
            taunt_played = true;
        }
    }
} else {
    if taunt_type == 1 {
        sound_stop(taunt_sound);
    }
    taunt_played = false;
}
with oPlayer {
    if id != other.id {
        walle_taunt_playing = other.taunt_played; //for other chars to grab
    }
}

//rune stuff
if has_rune("C") {
    if state == PS_CROUCH {
        soft_armor = 6;
    }
}

if has_rune("D") {
    set_hitbox_value(AT_FTILT, 1, HG_EFFECT, 11);
    set_hitbox_value(AT_FTILT, 2, HG_EFFECT, 11);
    set_hitbox_value(AT_FTILT, 3, HG_EFFECT, 11);
    set_hitbox_value(AT_FTILT, 4, HG_EFFECT, 11);
    set_hitbox_value(AT_FTILT, 5, HG_EFFECT, 11);
    set_hitbox_value(AT_FTILT, 6, HG_EFFECT, 11);
}

if has_rune("G") {
    set_hitbox_value(AT_FSPECIAL, 1, HG_EFFECT, 11);
}

if has_rune("I") {
    set_window_value(AT_DATTACK, 2, AG_WINDOW_HSPEED, 11);
    set_window_value(AT_DATTACK, 2, AG_WINDOW_VSPEED, -6);
}

if has_rune("O") {
    set_hitbox_value(AT_NSPECIAL, 2, HG_DAMAGE, 9);
    set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_KNOCKBACK, 10);
    set_hitbox_value(AT_NSPECIAL, 2, HG_KNOCKBACK_SCALING, 0.8);
    
    set_hitbox_value(AT_NSPECIAL, 3, HG_DAMAGE, 12);
    set_hitbox_value(AT_NSPECIAL, 3, HG_BASE_KNOCKBACK, 10);
    set_hitbox_value(AT_NSPECIAL, 3, HG_KNOCKBACK_SCALING, 1.0);
}

/*
if fspecCooldown > 0 {
	if move_cooldown[AT_JAB] != 0 {
		has_airdodge = false;
		if state == PS_PARRY_START {
			state = PS_IDLE;
		}
	} else {
		if fspec_had_airdodge == true {
			has_airdodge = true;
		}
		fspec_had_airdodge = undefined;
	}
}
*/

//uspecial multihits
with pHitBox {
	if player_id == other.id && ("grabID" in self) {
		grabID.x = lerp(grabID.x, x, 0.2);
		grabID.y = lerp(grabID.y, y + 20, 0.2);
	}
}