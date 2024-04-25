//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

//taunt loops
if (attack == AT_TAUNT) {
    
    if (has_rune("O")) {
        move_cooldown[AT_TAUNT] = 300;
    }
    
    //end taunt early
    if (window == 2 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && !taunt_down) {
        set_state(free? PS_IDLE_AIR:PS_IDLE);
    }
    //loop taunt
    if (window == 4 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && taunt_down) {
        window = 0;
        window_timer = 0;
    }
}

//rapid jab
if (attack == AT_JAB) {
    //press ATTACK to head to loop. else, end the move
    if (window == 3) {
        if (attack_pressed && window_timer > 2 && joy_pad_idle) {
            window = 4;
            window_timer = 0;
        }
        if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)) {
            set_state(free? PS_IDLE_AIR:PS_IDLE);
        }
    }
    //press ATTACK to loop if you haven't been parried. else, end
    if (window == 6) {
        if (attack_down && window_timer > 2 && window_timer < 7 && !was_parried) {
            window = 7;
            window_timer = 0;
        }
        if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)) {
            if (was_parried) {
                set_state(PS_PRATLAND);
            } else set_state(free? PS_IDLE_AIR:PS_IDLE);
        }
    }
    //press ATTACK to loop if you haven't been parried again.
    if (window == 9) {
        if (attack_down && window_timer > 2 && window_timer < 7 && !was_parried) {
            window = 4;
            window_timer = 0;
        }
        if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)) {
            if (was_parried) {
                set_state(PS_PRATLAND);
            } else set_state(free? PS_IDLE_AIR:PS_IDLE);
        }
    }
}

//landing handler for bair
if (attack == AT_BAIR) {
    if (was_parried && !free && window != 5 && window != 2) {
        set_state(PS_PRATLAND);
    }
    //if you haven't landed, end the animation
    if (window == 4 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)) {
        if (was_parried) {
            set_state(free? PS_PRATFALL:PS_PRATLAND);
        } else {
            set_state(free? PS_IDLE_AIR:PS_LANDING_LAG);
        }
    }
    //if you landed during the multihits, cue the landing hitbox
    if (window == 2 && !free && !hitpause) {
        sound_play( sound_get( "land" ) );
        spawn_base_dust(x+0*spr_dir, y, "land");
        destroy_hitboxes();
        window = 5;
        window_timer = 0;
    } //else, land normally
    else if (window != 2 && window != 5 && !free && !was_parried) {
        set_state(PS_LANDING_LAG);
    }
}
//landing handler for dair
if (attack == AT_DAIR) {
    //if you haven't landed, end the animation
    if (window == 3 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)) {
        if (was_parried) {
            set_state(free? PS_PRATFALL:PS_PRATLAND);
        } else {
            set_state(free? PS_IDLE_AIR:PS_LANDING_LAG);
        }
    }
    //if you landed during the hitbox being out, cue the landing hitbox
    if (window == 2 && !free && !hitpause) {
        sound_play( sound_get( "land" ) );
        spawn_base_dust(x+0*spr_dir, y, "land");
        destroy_hitboxes();
        window = 4;
        window_timer = 0;
    } //else, land normally
    else if (window != 2 && window != 4 && !free && !was_parried) {
        set_state(PS_LANDING_LAG);
    }
}

//Judgement
if (attack == AT_FSPECIAL) {
    can_move = false;
    can_fast_fall = false;
    //all the prerequisites
    if (window == 1 && window_timer == 1) {
       //if this is the first judge, roll your first swing 
        if (nextjudge == 0 && thisjudge == 0) { 
            nextjudge = (random_func( 3, 9, true ) + 1)
        } //prevent repeat numbers by re-rolling if thisjudge and nextjudge are the same
        if nextjudge == thisjudge {
            nextjudge = (random_func( 5, 9, true ) + 1)
        } //pass nextjudge to thisjudge then roll nextjudge again
        thisjudge = nextjudge
        nextjudge = 0;
        nextjudge = (random_func( 4, 9, true ) + 1)
        //rig the dice with Rune H
        if (has_rune("H")) {
            if (random_func( 9, 5, true ) == 4) {
                thisjudge = 9;
            }
            else thisjudge = 1;
        }
        //get ready to ring the bells if it's a 9
        if (thisjudge = 9) {
            set_window_value(AT_FSPECIAL, 1, AG_WINDOW_SFX, 0);
        }
        else {
            set_window_value(AT_FSPECIAL, 1, AG_WINDOW_SFX, sound_get("fspec"));
        }
    }
    
    //swing for the fences
    if (window == 1 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)) {
        window = thisjudge + 1;
        window_timer = 0;
    }
    //get the percentage outta the way
    if (window != 1) {
        hud_offset = 98;
    }
    
    //end the attack
    if (window != 1 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)) {
        if (was_parried) {
            set_state(free? PS_PRATFALL:PS_PRATLAND);
        } else {
            set_state(free? PS_IDLE_AIR:PS_IDLE);
        }
    }
    
    //Judgement 1's self-damage
    if (window == 2 && window_timer == 1 && !hitpause) {
        if abyssmode = 1 {
            take_damage( player, -1, 2 );
        } else take_damage( player, -1, 8 );
        spawn_hit_fx( x, y-30, HFX_ABY_PROJ_HIT );
    }
    
    //Judgement 9's aura
    if (window == 10 && window_timer == 0 && !hitpause) {
        spawn_hit_fx( x, y-30, HFX_ABY_FLOOR_HIT );
    }
}

//Fire - Parachute
if (attack == AT_USPECIAL) {
    //no fastfalling
    can_fast_fall = false;
    
    //prevent infinite parachuting
    if (window == 1 && window_timer == 1) {
        parachuted = 1;
        y = y-1;
        free = true;
        spawn_dust_fx( x, y, sprite_get("uspec_firemen"), 21 );
    }
    //no redirecting the momentum
    if (window == 2) {
        can_move = false;
    }
    
    //allow walljumping after the initial fling
    if (window > 2) {
        can_wall_jump = true;
    }
    
    //a lot of code for floating
    if (window == 3 || window == 4) {
        air_max_speed = 3;
        can_attack = true;
        can_strong = true;
        can_ustrong = true;
        can_shield = true;
        can_special = true;
        can_jump = true;
        
        //shove forward a little bit
        if (window_timer == 38) {
            hsp += 1.2 * spr_dir;
        }
        //shove backward a little bit
        if (window_timer == 113) {
            hsp -= 1.2 * spr_dir;
        }
        
        //turn down the parachute
        if (down_down) {
            if (was_parried) {
                set_state(free? PS_PRATFALL:PS_PRATLAND);
            } else {
                set_state(free? PS_IDLE_AIR:PS_LANDING_LAG);
            }
        }
    }
    
    //spawn landdust
    if (window == 5 && window_timer == 1) {
        spawn_base_dust(x+0*spr_dir, y, "land");
    }
}

//Chef
if (attack == AT_NSPECIAL){
    can_move = false;
    can_fast_fall = false;
    
    //sound randomizer for Flipping the Pan
    if (window == 1 && window_timer == 1) {
        switch random_func( 7, 3, true ) {
            case 0:
                set_window_value(AT_NSPECIAL, 1, AG_WINDOW_SFX, sound_get("nspec1"));
                set_window_value(AT_NSPECIAL, 4, AG_WINDOW_SFX, sound_get("nspec2"));
                set_window_value(AT_NSPECIAL, 7, AG_WINDOW_SFX, sound_get("nspec3"));
            break;
            case 1:
                set_window_value(AT_NSPECIAL, 1, AG_WINDOW_SFX, sound_get("nspec3"));
                set_window_value(AT_NSPECIAL, 4, AG_WINDOW_SFX, sound_get("nspec1"));
                set_window_value(AT_NSPECIAL, 7, AG_WINDOW_SFX, sound_get("nspec2"));
            break;
            case 2:
                set_window_value(AT_NSPECIAL, 1, AG_WINDOW_SFX, sound_get("nspec2"));
                set_window_value(AT_NSPECIAL, 4, AG_WINDOW_SFX, sound_get("nspec3"));
                set_window_value(AT_NSPECIAL, 7, AG_WINDOW_SFX, sound_get("nspec1"));
            break;
        }
    }
    
    if (has_rune("B")) {
        if (window == 1 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)) {
            window = 8;
            window_timer = 0;
        }
    }
    
    //end the move if they parried the pan
    if (window == 3 || window == 6 || window == 9) {
        if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)) {
            if (was_parried) {
                set_state(free? PS_PRATFALL:PS_PRATLAND);
            } else set_state(free? PS_IDLE_AIR:PS_IDLE);
        }
    }
    
    //move to the next flip if B is pressed
    if (window == 3 || window == 6) {
        if (special_pressed && !was_parried){
            window += 1;
            window_timer = 0;
        }
    }
}

//Oil Panic - Bucket
if (attack == AT_DSPECIAL){
    can_fast_fall = false;
    can_move = false
    
    //set up bucketbrake
    
    if (window == 1 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)) {
        window = (2 + oilfill);
        window_timer = 0;
    }
    
    //in the bucket state
    if (window == 2 || window == 3 || window == 4) {
        
        //activate bucket brake
        if (window_timer == 0 && nobrakes = 0) {
            vsp = 0;
            hsp = 0;
            nobrakes = 1;
        }
        
        //flip around for funzies
        if left_down && !right_down spr_dir = -1;
        if right_down && !left_down spr_dir = 1;
        
        //release the bucket but only after a moment
        if (window_timer > 9 && !special_down) {
            window = 6;
            window_timer = 0;
        }
        //loop the window_timer so SHENANIGANS dont occur
        if (window_timer == 16) {
        window_timer = 10;
        }
        
        //absorb code
        with (asset_get("pHitBox")) {
            if (player != other.player && type == 2 && point_distance(x, y, other.x + (10 * other.spr_dir), other.y - 30) < 60) {
                with (other.id) {
                    //turn to face the projectile you just absorbed
                    if (x < other.x) {
                        spr_dir = 1;
                    }
                    else {
                        spr_dir = -1;
                    }
                    //prevent knockback
                    orig_knock = 0;
                    should_make_shockwave = false;
                    
                    //fill up the tank
                    oilfill++;
                    //stir the pot with Rune I
                    if (has_rune("I")) {
                        oilfill = 3;
                    }
                    oildamage += other.damage;
                    if (has_rune("I")) {
                        oildamage = oildamage * 3;
                    }
                    
                    //advance to the next window
                    sound_play( sound_get( "uair" ) );
                    spawn_hit_fx( x+42*spr_dir, y-38, HFX_ORI_SEIN_HIT );
                    window ++;
                    if (has_rune("I")) {
                        window = 5;
                    }
                    window_timer = 2;
                    
                    //successfully destroy the projectile
                    other.destroyed = true;
                }
            }
        }
        
    }
    
}

//Oil Panic - Spill
if (attack == AT_EXTRA_1) {
    can_move = false;
    can_fast_fall = false;
    
    if (window == 1 && window_timer == 1) {
        set_hitbox_value(AT_EXTRA_1, 1, HG_DAMAGE, oildamage * 1.3);
        set_hitbox_value(AT_EXTRA_1, 1, HG_BASE_KNOCKBACK, 10 + (oildamage * 0.1));
        set_hitbox_value(AT_EXTRA_1, 1, HG_KNOCKBACK_SCALING, 1);
        
        //cause a landfill with Rune L
        if (has_rune("L")) {
            set_hitbox_value(AT_EXTRA_1, 1, HG_DAMAGE, oildamage * 2.3);
        }
        
        oilfill = 0;
        oildamage = 0
    }
}

//handle the dust spawning
#define spawn_base_dust
///spawn_base_dust(x, y, name, ?dir)
//This function spawns base cast dusts. Names can be found below.
var dlen; //dust_length value
var dfx; //dust_fx value
var dfg; //fg_sprite value
var dfa = 0; //draw_angle value
var dust_color = 0;
var x = argument[0], y = argument[1], name = argument[2];
var dir; if (argument_count > 3) dir = argument[3]; else dir = 0;

switch (name) {
    default: 
    case "dash_start":dlen = 21; dfx = 3; dfg = 2626; break;
    case "dash": dlen = 16; dfx = 4; dfg = 2656; break;
    case "jump": dlen = 12; dfx = 11; dfg = 2646; break;
    case "doublejump": 
    case "djump": dlen = 21; dfx = 2; dfg = 2624; break;
    case "walk": dlen = 12; dfx = 5; dfg = 2628; break;
    case "land": dlen = 24; dfx = 0; dfg = 2620; break;
    case "walljump": dlen = 24; dfx = 0; dfg = 2629; dfa = dir != 0 ? -90*dir : -90*spr_dir; break;
    case "n_wavedash": dlen = 24; dfx = 0; dfg = 2620; dust_color = 1; break;
    case "wavedash": dlen = 16; dfx = 4; dfg = 2656; dust_color = 1; break;
}
var newdust = spawn_dust_fx(x,y,asset_get("empty_sprite"),dlen);
newdust.dust_fx = dfx; //set the fx id
if dfg != -1 newdust.fg_sprite = dfg; //set the foreground sprite
newdust.dust_color = dust_color; //set the dust color
if dir != 0 newdust.spr_dir = dir; //set the spr_dir
newdust.draw_angle = dfa;
return newdust;
