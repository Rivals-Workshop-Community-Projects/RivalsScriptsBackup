//update

//Entrance sound
if (get_gameplay_time() == 15) {
    sound_play(sound_get("intro"));
}

muno_event_type = 1;
user_event(14);

if phone_cheats[CHEAT_FLY] == 1 {
	vsp = -2;
}
if ( !(state == PS_DEAD || state == PS_RESPAWN) ) {
    killarticles = false;
}

//all cycles
if (new_timer >= 0) {
    new_timer -= 1;
}
if (new_timer <= 0) {
    new_timer = 0;
}
if (state == PS_RESPAWN) {
    if (phone_cheats[CHEAT_CYCLE] == 0) {
        if (state_timer == 0) { 
            old_cycle = 0;
            cooldown = 300;
        }
        if (state_timer == 1) {
            cycle = 4;
        }
    }
}
if (phone_cheats[CHEAT_CYCLE] != 0) {
    cycle = (phone_cheats[CHEAT_CYCLE] - 1);
}
//cooldown
if (cooldownOn == true) {
    cooldown = 300;
    cooldownOn = false; 
    cycle = 4;
}
if (cooldown == 0) {
    //old_cycle = cooldownCycle;
    cycle = 0;
    cooldownCycle = 0;
    cooldown = -1;
    fairyenergy = 4;
    fairy = 1;
}
if (cooldown > 0 && state != PS_RESPAWN) {
    cooldown -= 1;
    move_cooldown[AT_NSPECIAL] = 2;
}

//fairy stuff
if (cycle == 1) {
    if (!instance_exists(obj_article1)) {
        instance_create(x-(40*spr_dir), y-30, "obj_article1");
    }
    if (fairy == 1) {
        if (fairycooldown >= 0) {
            fairycooldown -= 1;
        }
        if (fairycooldown <= 0) {
            fairycooldown = 60;
            obj_article1.fairyenergy += 1;
            obj_article1.totaldamage -= 0.8;
            }
    }    
    if (fairy == 0) {
        fairycooldown = 300;
    }
    if (fairyenergy > 4) {
        fairyenergy = 4;
    }

    if (fairyenergy < 0) {
        fairyenergy = 0;
    }
}
if (cycle != 1 || fairy == 0) {
    fairycooldown = 300;
}
if (cycle != 1) {
    fairy = 1;
}
if (state == PS_PRATLAND || (state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR)) {
    fairyTimer = 300;
}
if (fairy == 0 && cycle == 1) {
    move_cooldown[AT_NSPECIAL_2] = 2;
    if (is_special_pressed(DIR_NONE)) {
        with (asset_get( "obj_article1" )) {
            if ((state == 3 || state == 16) && player == other.player) {
                state = 8;
                state_timer = 0;
            }
        }
    }
}

if (throwing == 1) {
    if (state_timer == 0) {
        animationcounter = 0;
    } else {
        if (state == PS_DASH || state == PS_DASH_START || state == PS_DASH_STOP || state == PS_DASH_TURN) {
            if (state_timer mod 3 = 0) {
                animationcounter++;
            }
        } else {
            if (state_timer mod 4 = 0) {
                animationcounter++;
            }
        }
    }
	move_cooldown[AT_JAB] = 2;
    move_cooldown[AT_FTILT] = 2;
    move_cooldown[AT_DTILT] = 2;
    move_cooldown[AT_UTILT] = 2;
    move_cooldown[AT_FSTRONG] = 2;
    move_cooldown[AT_DSTRONG] = 2;
    move_cooldown[AT_USTRONG] = 2;
    move_cooldown[AT_DATTACK] = 2;
    move_cooldown[AT_FAIR] = 2;
    move_cooldown[AT_BAIR] = 2;
    move_cooldown[AT_DAIR] = 2;
    move_cooldown[AT_UAIR] = 2;
    move_cooldown[AT_NAIR] = 2;
    move_cooldown[AT_NSPECIAL_2] = 2;
    move_cooldown[AT_FSPECIAL] = 2;
    move_cooldown[AT_FSPECIAL_AIR] = 2;
    move_cooldown[AT_DSPECIAL] = 2;
	move_cooldown[AT_EXTRA_1] = 2;
    move_cooldown[AT_USPECIAL] = 2;
	move_cooldown[AT_USPECIAL_2] = 2;
    move_cooldown[AT_TAUNT] = 2;
	can_tech = false;
    can_wall_tech = false;
    walk_speed = 3;
    dash_speed = 5;
    initial_dash_speed = 4;
    max_djumps = 0;
    max_jump_hsp = 4;
} else {
    animationcounter = 0;
	can_tech = true;
    can_wall_tech = true;
    walk_speed = 3.3;
    dash_speed = 6;
    initial_dash_speed = 6;
    max_djumps = 1;
    max_jump_hsp = 6;
}
if ((state == PS_AIR_DODGE || state == PS_PARRY_START || state == PS_ROLL_BACKWARD || state == PS_ROLL_FORWARD) && state_timer == 0 && throwing == 1) {
	throwing = 0;
    fairy = true;
	with (asset_get( "obj_article1" )) {
        if (player == other.player) {
            state = 0;
            state_timer = 0;
        }
    }
}

if (state == PS_PRATFALL) {
    can_fast_fall = false;
    with (asset_get( "obj_article1" )) {
        if (player == other.player) {
            if (point_distance(x, y, other.x, other.y) <= 50) {
                state = 9;
                state_timer = 0;
                with (other) {
                    set_state( PS_ATTACK_GROUND );
                    set_attack( AT_USPECIAL_2 );
                    hurtboxID.sprite_index = sprite_get("uspecial_2_hurt");
                    fairy = true;
                }
            }
        }
    }
}

//other stuff
var d = 0;
if (state == PS_ATTACK_GROUND && (attack == AT_USTRONG || attack == AT_FSTRONG) && (window >= 1 && window <= 4)) {
	d = 100;
} 
hud_offset = floor(lerp(hud_offset, d, 0.1))

if (free) {
    set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_ANIM_FRAME_START, 3);
} else {
    set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_ANIM_FRAME_START, 0);
}
if (drawDebug >= 2) {
    drawDebug -= 1;
}
if (drawDebug <= -2) {
    drawDebug += 1;
}

if (introTimer2 < 4) {
    introTimer2++;
} else {
    introTimer2 = 0;
    introTimer++;
}
//this increments introTimer every few frames, depending on the number entered

if (introTimer < 19) {
    draw_indicator = false;
} else {
    draw_indicator = true;
}
//this stops the overhead HUD from getting in the way of the animation. If your animation does not involve much movement, this may not be necessary.

if (cycle == 1) {
    set_victory_portrait( sprite_get("portrait2") );
} else {
    set_victory_portrait( sprite_get("portrait") );
}