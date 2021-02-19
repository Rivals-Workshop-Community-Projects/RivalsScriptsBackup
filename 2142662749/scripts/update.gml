//update

timer++;

if runesUpdated {
    if runeB { //FSPECIAL chain reaches further.
        set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_HSPEED, 12);
        set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_AIR_FRICTION, 0.3);
        set_hitbox_value(AT_FSPECIAL, 1, HG_EXTRA_HITPAUSE, 20);
    } else {
        reset_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_HSPEED);
        reset_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_AIR_FRICTION);
        reset_hitbox_value(AT_FSPECIAL, 1, HG_EXTRA_HITPAUSE);
    }
    
    if runeD { //DSPECIAL stuns opponents.
        set_hitbox_value(AT_DSPECIAL_2, 1, HG_EFFECT, 11);
    } else {
        reset_hitbox_value(AT_DSPECIAL_2, 1, HG_EFFECT);
    }
    
    if runeH { //Ru gains an additional jump.
        max_djumps = 2;
    } else {
        max_djumps = 1;
    }
    
    if runeJ { //NSPECIAL stun lasts longer.
        set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE, 12);
    } else {
        reset_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE);
    }
}

//turbo rune
if runeL { //Ru has on-hit turbo mode.
    if has_hit && !was_parried && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) {
        if (window == 1 && window_timer < 2) || hitstop == hitstop_full { 
            clear_button_buffer(PC_SPECIAL_PRESSED);
    		clear_button_buffer(PC_ATTACK_PRESSED);
    		clear_button_buffer(PC_JUMP_PRESSED);
    		clear_button_buffer(PC_UP_STICK_PRESSED);
    		clear_button_buffer(PC_RIGHT_STICK_PRESSED);
    		clear_button_buffer(PC_LEFT_STICK_PRESSED);
    		clear_button_buffer(PC_DOWN_STICK_PRESSED);
    		clear_button_buffer(PC_UP_STRONG_PRESSED);
    		clear_button_buffer(PC_RIGHT_STRONG_PRESSED);
    		clear_button_buffer(PC_LEFT_STRONG_PRESSED);
    		clear_button_buffer(PC_DOWN_STRONG_PRESSED);
    		clear_button_buffer(PC_SHIELD_PRESSED);
    		clear_button_buffer(PC_TAUNT_PRESSED);
        }
	    if jump_pressed || attack_pressed || special_pressed || shield_pressed || taunt_pressed
	    || right_strong_pressed || left_strong_pressed || up_strong_pressed || down_strong_pressed 
	    || right_stick_pressed || left_stick_pressed || up_stick_pressed || down_stick_pressed {
			if shield_pressed && !(right_pressed || left_pressed|| right_down || left_down) { 
				set_state(PS_PARRY);
			}
			else {
				set_state(PS_PARRY);
				window = 2;
				window_timer = 19;
			}
    	}
    	move_cooldown[attack] = 0;
    }
}

//kirby
if swallowed { //Kirby ability script starts here
    swallowed = 0
    //Define any assets kirby might need to grab from YOUR CHARACTER
    /*
    var ability_spr = sprite_get("YOUR KIRBY SPRITE HERE");
    var ability_hurt = sprite_get("YOUR KIRBY HURTBOX HERE")
    */
    var ability_icon = sprite_get("kirby_icon") //Optional
    var laser_spr = sprite_get("laser");
    
    with enemykirby { //Define AT_EXTRA_3 for Kirby, using your asset variables where necessary in place of sprite_get or sound_get
        set_window_value(AT_EXTRA_3, 9, AG_WINDOW_ANIM_FRAMES, 88);
        
        set_attack_value(AT_EXTRA_3, AG_CATEGORY, 2);
        set_attack_value(AT_EXTRA_3, AG_SPRITE, sprite_get("nspecial"));
        set_attack_value(AT_EXTRA_3, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt"));
        
        set_attack_value(AT_EXTRA_3, AG_NUM_WINDOWS, 5);
        
        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_LENGTH, 18);
        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAMES, 3);
        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_HAS_SFX, 1);
        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX, asset_get("sfx_ell_utilt_retract"));
        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX_FRAME, 5);
        
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_TYPE, 9);
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_LENGTH, 5);
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAMES, 1);
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAME_START, 3);
        
        set_window_value(AT_EXTRA_3, 3, AG_WINDOW_LENGTH, 8);
        set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAMES, 2);
        set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAME_START, 4);
        set_window_value(AT_EXTRA_3, 3, AG_WINDOW_HAS_SFX, 1);
        set_window_value(AT_EXTRA_3, 3, AG_WINDOW_SFX, asset_get("sfx_clairen_tip_weak"));
        set_window_value(AT_EXTRA_3, 3, AG_WINDOW_SFX_FRAME, 1);
        
        set_window_value(AT_EXTRA_3, 4, AG_WINDOW_LENGTH, 10);
        set_window_value(AT_EXTRA_3, 4, AG_WINDOW_ANIM_FRAMES, 1);
        set_window_value(AT_EXTRA_3, 4, AG_WINDOW_ANIM_FRAME_START, 6);
        
        set_window_value(AT_EXTRA_3, 5, AG_WINDOW_LENGTH, 10);
        set_window_value(AT_EXTRA_3, 5, AG_WINDOW_ANIM_FRAMES, 2);
        set_window_value(AT_EXTRA_3, 5, AG_WINDOW_ANIM_FRAME_START, 7);
        
        set_num_hitboxes(AT_EXTRA_3, 1);
        
        set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_TYPE, 2);
        set_hitbox_value(AT_EXTRA_3, 1, HG_WINDOW, 3);
        set_hitbox_value(AT_EXTRA_3, 1, HG_WINDOW_CREATION_FRAME, 1);
        set_hitbox_value(AT_EXTRA_3, 1, HG_LIFETIME, 35);
        set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_X, 30);
        set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_Y, -24);
        set_hitbox_value(AT_EXTRA_3, 1, HG_WIDTH, 32);
        set_hitbox_value(AT_EXTRA_3, 1, HG_HEIGHT, 14);
        set_hitbox_value(AT_EXTRA_3, 1, HG_PRIORITY, 3);
        set_hitbox_value(AT_EXTRA_3, 1, HG_DAMAGE, 3);
        set_hitbox_value(AT_EXTRA_3, 1, HG_ANGLE, 60);
        set_hitbox_value(AT_EXTRA_3, 1, HG_ANGLE_FLIPPER, 0);
        set_hitbox_value(AT_EXTRA_3, 1, HG_SHAPE, 2);
        set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_KNOCKBACK, 6);
        set_hitbox_value(AT_EXTRA_3, 1, HG_KNOCKBACK_SCALING, 0.5);
        set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_HITPAUSE, 6);
        set_hitbox_value(AT_EXTRA_3, 1, HG_HITPAUSE_SCALING, 0.5);
        set_hitbox_value(AT_EXTRA_3, 1, HG_TECHABLE, 1);
        set_hitbox_value(AT_EXTRA_3, 1, HG_EFFECT, 11);
        set_hitbox_value(AT_EXTRA_3, 1, HG_HIT_SFX, asset_get("sfx_clairen_tip_med"));
        set_hitbox_value(AT_EXTRA_3, 1, HG_VISUAL_EFFECT, 1);
        
        set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_SPRITE, laser_spr);
        set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_MASK, laser_spr);
        set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_ANIM_SPEED, 0.5);
        set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
        set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
        set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
        set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_HSPEED, 12);
        newicon = ability_icon //Optional, replaces the kirby ability icon
    } //Kirby ability script ends here
}

if enemykirby != undefined { //if kirby is in a match & has swallowed the character
    with oPlayer { //Run through all players
        if (get_window_value(AT_EXTRA_3,9,AG_WINDOW_ANIM_FRAMES) == 88) { //Arbitrary value in an unused window
            //your code here
            move_cooldown[AT_EXTRA_3] = 10;
            if (special_pressed) && (joy_pad_idle) && (!left_down && !right_down && !up_down && !down_down) && (!other.kirbySpawnZo) {
                other.kirbySpawnZo = true;
            }
        }
    }
    
    if (enemykirby.current_ability == 16) && (kirbySpawnZo) && (enemykirby.zoID == undefined) && (!enemykirby.left_down && !enemykirby.right_down && !enemykirby.up_down && !enemykirby.down_down) && (enemykirby.special_pressed) {
        kirbySpawnZo = false;
        var kirbyzo = instance_create(enemykirby.x + 10, enemykirby.y - 16, "obj_article1");
            kirbyzo.player_id = enemykirby.id;
            kirbyzo.spr_dir = enemykirby.spr_dir;
            kirbyzo.state = PS_SPAWN;
            kirbyzo.origID = id;
        enemykirby.zoID = zo.id;
    }
    
    if (enemykirby.zoID != undefined) && !instance_exists(enemykirby.zoID) {
        enemykirby.zoID = undefined;
    }
    
    with enemykirby {
        if (special_pressed) {
            with obj_article1 {
                if (id == other.zoID) && (player_id == other.id) && (state != PS_ATTACK_GROUND) && (state != PS_ATTACK_AIR) && (state != PS_HITSTUN) && (state != PS_HITSTUN_LAND) {
                    if (state != PS_PRATFALL) && (state != PS_PRATLAND) && !(attackZo == AT_USPECIAL && shieldActive) {
                        spr_dir = other.spr_dir;
                        if (!free) {
                            state = PS_ATTACK_GROUND;
                            vsp = 0;
                        } else {
                            state = PS_ATTACK_AIR;
                        }
                        
                        attack = AT_EXTRA_3;
                        state_timer = 0;
                        window = 1;
                        window_timer = 0;
                        strong_charge = 0;
                    }
                }
            }
        }
    }
    
    with pHitBox {
        if (player_id == other.enemykirby) && (attack == AT_EXTRA_3) && (hitbox_timer < 1) {
            if (player_id.zoID != undefined) {
                proj_angle = player_id.zoID.turretAngle;
            }
        }
    }
}

//codec
if trummelcodecneeded{
    trummelcodec = 17;
    trummelcodecmax = 12;
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
    trummelcodecexpression[page] = 2;

    trummelcodecline[page,1] = "Looks like we are up";
    trummelcodecline[page,2] = "against two fighters";
    trummelcodecline[page,3] = "this time.";
    trummelcodecline[page,4] = "";
    page++; 

    //Page 1
    trummelcodecspeaker[page] = 2;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "hey not fair";
    trummelcodecline[page,2] = "";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++; 
    
    //Page 2
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 1;

    trummelcodecline[page,1] = "You're forgetting we";
    trummelcodecline[page,2] = "are technically two";
    trummelcodecline[page,3] = "fighters as well,";
    trummelcodecline[page,4] = "Trummel.";
    page++; 
    
    //Page 3
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "Ru & Zo might be";
    trummelcodecline[page,2] = "one character, but";
    trummelcodecline[page,3] = "each robot functions as";
    trummelcodecline[page,4] = "an individual fighter.";
    page++; 
    
    //Page 4
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 2;

    trummelcodecline[page,1] = "They both have their";
    trummelcodecline[page,2] = "own separate percents,";
    trummelcodecline[page,3] = "allowing for them to be";
    trummelcodecline[page,4] = "KO'd separately!";
    page++; 
    
    //Page 5
    trummelcodecspeaker[page] = 2;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "which one is who";
    trummelcodecline[page,2] = "";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++; 
    
    //Page 6
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "Ru is the humanoid mech.";
    trummelcodecline[page,2] = "He has fast attacks that";
    trummelcodecline[page,3] = "make it easy for him to";
    trummelcodecline[page,4] = "perform combos.";
    page++; 
    
    //Page 7
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "Zo is the crab mech. She";
    trummelcodecline[page,2] = "is more of a zoner, using";
    trummelcodecline[page,3] = "long range attacks and";
    trummelcodecline[page,4] = "projectiles to attack.";
    page++; 
    
    //Page 8
    trummelcodecspeaker[page] = 2;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "still not fair";
    trummelcodecline[page,2] = "";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++; 
    
    //Page 9
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 1;

    trummelcodecline[page,1] = "I'm sure if we get them";
    trummelcodecline[page,2] = "separated, we can KO";
    trummelcodecline[page,3] = "them more easily.";
    trummelcodecline[page,4] = "";
    page++; 
    
    //Page 10
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "Ru's the main fighter, so";
    trummelcodecline[page,2] = "both Ru & Zo will be KO'd";
    trummelcodecline[page,3] = "if Ru dies, and Ru relies";
    trummelcodecline[page,4] = "on Zo to recover.";
    page++; 
    
    //Page 11
    trummelcodecspeaker[page] = 2;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "what happens to zo";
    trummelcodecline[page,2] = "if ru dies";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++; 
    
    //Page 12
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 1;

    trummelcodecline[page,1] = "I'd stay far away from";
    trummelcodecline[page,2] = "Zo if Ru is KO'd, unless";
    trummelcodecline[page,3] = "you like explosions.";
    trummelcodecline[page,4] = "";
    page++; 

    //repeat...
}

//Lode & puul blue/red
if (get_player_color(player) == 12) {
    if (get_gameplay_time() mod 120 >= 60) {
        set_article_color_slot(5, 208, 28, 28, 1);
    } else {
        set_article_color_slot(5, 39, 28, 208, 1);
    }
}


//practice mode detector
/*
if (get_training_cpu_action() != CPU_FIGHT && !playtest && !("is_ai" in self)) {
    practice = true;
}
*/
if (initialTime != get_game_timer()) {
    practice = false;
}

with oPlayer {
    if (id != other.id) {
        if (get_training_cpu_action() != CPU_FIGHT && !("is_ai" in self)) {
            practice = true;
        }
        if (practice) {
            other.practice = true;
        }
    }
}

if (justDied > 0) {
    justDied--;
}

//print_debug(string(get_state_name(state)));

if (state == PS_RESPAWN && state_timer == 90 && !practice) || (state == PS_RESPAWN && practice && state_timer == 9) {
    spawnZo = true;
}

if (runesUpdated && timer mod 2 == 0) {
	if runeM { //Spawn and respawn with 2 Zo's.
        var zo2 = instance_create(x + 16, y - 16, "obj_article1");
        zo2.player_id = id;
        zo2.state = PS_SPAWN;
        zo2.origID = id;
        zo2.id = zoID;
        
        zo2.playerWalkRange = 70; //x range where outside, Zo will start walking towards player
		zo2.playerWalkFollowRange = 80; //x within range, Zo's hsp will match player hsp while walking
		zo2.playerDashRange = 130; //x outside range, Zo will dash
		zo2.playerDashStopRange = 98; //x distance from player where Zo will stop dash
		zo2.playerTurnRange = 30; //x range where Zo will turn to face player
		zo2.playerJumpRange = 50; //y range at which Zo will try jump.
		zo2.playerDjumpRange = 70; //y range at which Zo will try djump.
		zo2.playerShorthopRange = 20; //y range at which Zo will try shorthop.
		zo2.playerAirRange = 80; //x range where Zo will try drift towards player.
    }
    runesUpdated = false;
}

if (spawnZo) { //spawn Zo article
	if runeM && (get_gameplay_time() > 10) {
		var zo2 = instance_create(x + 16, y - 16, "obj_article1");
        zo2.player_id = id;
        zo2.state = PS_SPAWN;
        zo2.origID = id;
        zo2.id = zoID;
        
        zo2.playerWalkRange = 70; //x range where outside, Zo will start walking towards player
		zo2.playerWalkFollowRange = 80; //x within range, Zo's hsp will match player hsp while walking
		zo2.playerDashRange = 130; //x outside range, Zo will dash
		zo2.playerDashStopRange = 98; //x distance from player where Zo will stop dash
		zo2.playerTurnRange = 30; //x range where Zo will turn to face player
		zo2.playerJumpRange = 50; //y range at which Zo will try jump.
		zo2.playerDjumpRange = 70; //y range at which Zo will try djump.
		zo2.playerShorthopRange = 20; //y range at which Zo will try shorthop.
		zo2.playerAirRange = 80; //x range where Zo will try drift towards player.
	}
    spawnZo = false;
    var zo = instance_create(x + 10, y - 16, "obj_article1");
        zo.player_id = id;
        zo.state = PS_SPAWN;
        zo.origID = id;
    zoID = zo.id;
}


if (practice) && (taunt_pressed && special_pressed) && (zoID != undefined) && (zoID.taunt_pressed == false) {
    zoID.taunt_pressed = true;
    with zoID {
        if (drawMasks == true) {
            drawMasks = false;
        } else if (drawMasks == false) {
            drawMasks = true;
        }
    }
}

if (!taunt_down) && (!taunt_pressed) && (zoID != undefined) && (instance_exists(zoID)) {
    zoID.taunt_pressed = false;
}


if (state == PS_RESPAWN) {
    if (zoID != undefined) && (zoID.state != PS_DEAD) {
        zoID.state = PS_RESPAWN;
    } 
}

if (state == PS_SPAWN) {
    if (zoID != undefined) && (zoID.state != PS_DEAD) {
        zoID.spr_dir = spr_dir;
    } 
}

with oPlayer {
    if (id != other.id) {
        if (hitZo && !hitpause) {
            has_hit = true;
            hitZo = false;
        }
        //print_debug("prev" + ", " + string(prevVsp));
        //print_debug(string(vsp));
    }
}

move_cooldown[AT_NSPECIAL] = 10000;
move_cooldown[AT_FSPECIAL] = 10000;
move_cooldown[AT_USPECIAL] = 10000;
if (zoID == undefined) {
    move_cooldown[AT_DSPECIAL] = 10000;
} else {
    with obj_article1 {
        if (id == other.zoID) {
            if (state == PS_HITSTUN) || (state == PS_HITSTUN_LAND) || (state == PS_PRATFALL) || (state == PS_PRATLAND) || ((state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && (attack != AT_DSPECIAL_2)) {
                with other { move_cooldown[AT_DSPECIAL] = 10000; }
            } else {
                with other{ move_cooldown[AT_DSPECIAL] = 0; }
            }
        }
    }
}
move_cooldown[AT_FSTRONG] = 10000;
move_cooldown[AT_USTRONG] = 10000;
move_cooldown[AT_DSTRONG] = 10000;

if (drawZoDeathEffect) {
    zoDeathTimer++;
    if floor(zoDeathTimer/4) == 8 {
        drawZoDeathEffect = false;
    }
}

if (strong_down) {
    strong_timer++;
} else {
    strong_timer = 0;
}

var attackZo = undefined;
var dir = undefined;
if (right_strong_pressed || left_strong_pressed || left_stick_down || right_stick_down) {
    attackZo = AT_FSTRONG;
    if (left_down && !right_down && strong_down) || (left_stick_down) {
        dir = -1;
    } else if (right_down && !left_down && strong_down) || (right_stick_down) {
        dir = 1;
    }
} else if (down_strong_pressed) {
    attackZo = AT_DSTRONG;
} else if (up_strong_pressed) {
    attackZo = AT_USTRONG;
}

if (special_pressed && up_down) {
    attackZo = AT_USPECIAL;
} else if (special_pressed && down_down) && (((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && (attack == AT_DSPECIAL)) || (state_cat == SC_GROUND_NEUTRAL || state_cat == SC_AIR_NEUTRAL || state == PS_DASH || state == PS_DASH_START || state == PS_DASH_STOP || state == PS_DASH_TURN || state == PS_LAND || state == PS_JUMPSQUAT)) {
    attackZo = AT_DSPECIAL_2;
} else if (special_pressed && left_down && !right_down) {
    attackZo = AT_FSPECIAL;
    dir = -1;
} else if (special_pressed && right_down && !left_down) {
    attackZo = AT_FSPECIAL;
    dir = 1;
} else if (special_pressed) {
    attackZo = AT_NSPECIAL;
} else if (taunt_pressed) {
    attackZo = AT_TAUNT_2;
}

if (zoID != undefined) && (state != PS_SPAWN) && (state != PS_RESPAWN) && (state != PS_HITSTUN) && (state != PS_HITSTUN_LAND) && (state != PS_WRAPPED) && (state != PS_FROZEN) && (state != PS_PRATFALL) && (state != PS_PRATLAND) {
    //setting zo attack
    if (attackZo != undefined) {
        with obj_article1 {
            if (variable_instance_exists(self, "isZo")) && (player_id == other.id) && (state != PS_ATTACK_GROUND) && (state != PS_ATTACK_AIR) && (state != PS_HITSTUN) && (state != PS_HITSTUN_LAND) && (state != PS_SPAWN) && (state != PS_RESPAWN) && (state != PS_DEAD) {
                if (state != PS_PRATFALL) && (state != PS_PRATLAND) && (state != PS_JUMPSQUAT) && !(attackZo == AT_USPECIAL && shieldActive) && !(attackZo == AT_TAUNT_2 && free) && !(state == PS_FIRST_JUMP && !free) {
                    if (dir != undefined) {
                        spr_dir = dir;
                    }
                    if (!free) {
                        state = PS_ATTACK_GROUND;
                        vsp = 0;
                    } else {
                        state = PS_ATTACK_AIR;
                    }
                    
                    attack = attackZo;
                    state_timer = 0;
                    window = 1;
                    window_timer = 0;
                    strong_charge = 0;
                }
            }
        }
    }
    
    //uspec rocket
    if (onRocket) {
        rocketTimer++;
        
        if (abs(zoID.x - x) > 14) {
            x += 7*sign(zoID.x - x);
        } else {
            x = zoID.x - 14*sign(zoID.x - x);
        }
        
        if (abs(zoID.y - y) > 5) {
            y += 6*sign(zoID.y - y);
        }
        if (sign(zoID.x - x) != 0) {
            spr_dir = sign(zoID.x - x);
        }
        hsp = zoID.hsp;
        vsp = zoID.vsp;
    } else {
        rocketTimer = 0;
    }
    
    //spawn shield
    if (shield_pressed) && (joy_pad_idle) {
        with zoID { //runeF: Zo's shield cooldown removed.
            if (shieldEndTimer > shieldMaxTime || shieldActive || other.runeF)  && (!free) && (state != PS_JUMPSQUAT) && (state != PS_ATTACK_GROUND) && (state != PS_PRATLAND) && (state != PS_PARRY_START) && (state != PS_PARRY) && (state != PS_HITSTUN) && (state != PS_HITSTUN_LAND) {
                state = PS_PARRY_START;
                state_timer = 0;
            }
        }
    }
    
    //zo buffer ground jump while Ru is attacking
    if (instance_exists(zoID)) {
        if (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && (jump_pressed || jump_down) {
            zoID.bufferJump = true;
        } else {
            zoID.bufferJump = false;
        }
    }
}

//print_debug(string(get_gameplay_time() mod 120));