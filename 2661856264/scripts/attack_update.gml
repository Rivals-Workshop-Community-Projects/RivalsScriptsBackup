if (attack == AT_JAB && window == 3 && window_timer > 3){
    can_special = true;
}

if (attack == AT_UTILT && window == 4 && window_timer > 8 && has_hit){
    iasa_script();
}

if (attack == AT_DATTACK){
    if (window <= 2){
        can_ustrong = true;
    }
    if (window == 4 && window_timer >= 6 && has_hit){
        iasa_script();
    }
}

//Rockless Armor Stuff
if (stealth_rock == 0){
    if (attack == AT_DTILT) && (window == 2 || window == 3){
        soft_armor = 13; 
    }
    if (attack == AT_FSTRONG){
        if (window == 1 && window_timer > 4){
            soft_armor = 13;
        }
        if (window >= 2){
            soft_armor = 0;
        }
    }
}

//Rock Stuff
if (stealth_rock >= 1){
    
    if (attack == AT_DATTACK){
        if (window == 3 && has_hit){
            can_jump = true;
            if (jump_pressed){
                stealth_rock -= 1;
                sound_play(sound_get("special"))
            }
        }
    }
    
    if (attack == AT_NAIR){
        if (window == 1){
            if (window_timer = 1){
                sound_play(sound_get("special"));
            }
            if (window_timer > 3){
                soft_armor = 13;
            }
        }
        if (window == 2){
            if (window_timer == 2){
                stealth_rock -= 1;
            }
        }
    }
    
    if (attack == AT_DSTRONG){ 
        if (window == 1 && window_timer = 1){
            sound_play(sound_get("special"));
        }
        if (window == 3){
            soft_armor = 13;
        }
        if (window == 4 && window_timer == 1){
            stealth_rock -= 1;
        }
    }
    
    if (attack == AT_UTILT){ 
        if (window == 1 && window_timer = 1){
            sound_play(sound_get("special"));
        }
        if (window == 2 || window == 3){
            soft_armor = 13;
        }
        if (window == 4 && window_timer == 1){
            stealth_rock -= 1;
        }
    }
    
    if (attack == AT_FSTRONG){
        if (window == 1 && window_timer > 4){
            super_armor = true;
            if (window_timer = 1){
                sound_play(sound_get("special"));
            }
        }
        if (window == 2 && window_timer == 1){
            stealth_rock -= 1;
            super_armor = false;
        }
    }
    if (attack == AT_FSPECIAL){
        can_shield = true;
        if (shield_pressed && has_airdodge = true){
            stealth_rock -= 1;
            sound_play(sound_get("special"));
        }
        if (has_hit){
            can_jump = true;
            if (jump_pressed || up_strong_pressed){
                stealth_rock -= 1;
                sound_play(sound_get("special"));
            }
        }
    }
}

//Strong charge sfx and self damage manager
switch (attack)
{
    case AT_FSTRONG:
        if (window == 3)
            sound_stop(sound_get("strong_charge"));
        break;
    case AT_USTRONG:
        if (window == 2)
            sound_stop(sound_get("strong_charge"));
        break;
    case AT_DSTRONG:
        if (window == 2)
            sound_stop(sound_get("strong_charge"));
        break;
    default:
        break;
}

//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

//Spawns rock effect during FStrong
if (attack = AT_FSTRONG){
    if (window = 3){
        if (window_timer = 4){
            spawn_hit_fx(x, y, stones);
        }
    }    
}

//NSpecial 
if (attack == AT_NSPECIAL){
    attack_end();
    //Resets the variable
    if (window == 1){
        nspecial_charge = 0;
        if (window_timer = 1 && stealth_rock >= 1){
            sound_play(sound_get("special"));
        }
    }
    //Charging the move
    if (window == 2){
        nspecial_charge++
        //You can let go and launch immediately after startup
        if (!special_down){
            window = 3;
            window_timer = 0; 
        }
    }
    //Decide what's thrown based on the charge
    if (window == 3){
        if (nspecial_charge < 22){
            set_hitbox_value(AT_NSPECIAL, 1, HG_LIFETIME, 240);
            set_hitbox_value(AT_NSPECIAL, 3, HG_LIFETIME, 0);
        }
        if (nspecial_charge == 22) {
            set_hitbox_value(AT_NSPECIAL, 1, HG_LIFETIME, 0);
            set_hitbox_value(AT_NSPECIAL, 3, HG_LIFETIME, 140);
        }
    }
    //Rock & cooldown
    if (window == 4) {
        if (window_timer == 1){
            move_cooldown[AT_NSPECIAL] = 90;
            if (nspecial_charge < 22 && stealth_rock >= 1){
                stealth_rock -= 1;
                move_cooldown[AT_NSPECIAL] = 60;
            }
            if (nspecial_charge == 22 && stealth_rock >= 2){
                stealth_rock -= 2;
                move_cooldown[AT_NSPECIAL] = 60;
            }
        }
   }
}

//FSpecial
if (attack == AT_FSPECIAL){
    if (was_parried){
        set_state(PS_PRATFALL);
    }
    attack_end();
    //Resets the variables
    if (window == 1){
        fspecial_charge = 0;
        fspecial_cont = 0;
        can_fastfall = false;
    }
    //Launching
    if (window == 3){
        fspecial_speed = 8;
        set_window_value(AT_FSPECIAL, 5, AG_WINDOW_HSPEED, fspecial_speed);
        can_wall_jump = true;
        can_fastfall = false;
        if (window_timer == 1){
            spawn_base_dust(x, y, "djump", -1);
        }
        if (special_pressed){
            window = 7;
            window_timer = 1;
            destroy_hitboxes();
            fspecial_cont = 0;
        }
    }
    if (window == 4){
        can_wall_jump = true;
        if (special_pressed){
            window = 7;
            window_timer = 1;
            destroy_hitboxes();
            fspecial_cont = 0;
        }
    }
        
    //Rolling
    if (window == 5){
        fspecial_cont++;
        //Destroys the previous hitbox
        if (window_timer == 0){
            destroy_hitboxes();
        }
        //Increases the speed bit by bit
        if ((window_timer == 7 || window_timer == 15) && fspecial_speed < 8.01){
            fspecial_speed += 1.5;
            set_window_value(AT_FSPECIAL, 5, AG_WINDOW_HSPEED, fspecial_speed);
        }
        //Going to the turning window
        if ((spr_dir == 1 && left_pressed) || (spr_dir == -1 && right_pressed)){
            window = 6;
            window_timer = 1;
            destroy_hitboxes();
        }
        //Cont exceding 120 frames or pressing special stops the attack
        if (fspecial_cont >= 120 || special_pressed){
            window = 7;
            window_timer = 1;
            destroy_hitboxes();
            fspecial_cont = 0;
        }
    }
    //Turning Animation
    if (window == 6 && window_timer == 1){
        spr_dir *= -1;
        sound_stop(asset_get("sfx_kragg_roll_loop"));
        spawn_base_dust(x, y, "dash_start");
        fspecial_speed = 3;
        set_window_value(AT_FSPECIAL, 5, AG_WINDOW_HSPEED, fspecial_speed);
    }
    //Endlag
    if (window == 7){
        sound_stop(asset_get("sfx_kragg_roll_loop"));
        if (window_timer == 24 && free){
            set_state(PS_PRATFALL);
        }
    }
}

//USpecial
if (attack == AT_USPECIAL){
    if (window == 2){
        //creates the smoke effect and gives it an hitbox
        if (window_timer = 3){
            spawn_hit_fx(x, y, smoke);
            create_hitbox(AT_USPECIAL, 5, x, y);
        }
    }
    if (window == 3 && !hitpause){
        if (right_down){ //Goes right if holding right
            hsp = +6.5;
        }
        if (left_down){ //Goes left if holding left
            hsp = -6.5;
       }
    }
    if (window > 6){
        can_wall_jump = true;
    }
    if (stealth_rock >= 2){
        if (window == 1 && window_timer = 1){
                sound_play(sound_get("special"));
            }
        if (window >= 3){
            super_armor = true;
        }
        if (window == 7 && window_timer = 1){
            stealth_rock -= 2;
        }
    }
}

//DSpecial
if (attack == AT_DSPECIAL){
    if (window == 3 && window_timer == 1){
        sound_play(sound_get("special"));
        if (has_hit){
            stealth_rock += 2;
        }
        else{
            stealth_rock += 1;
        }
        stealth_rock_aux = stealth_rock;
    }
}

//Taunt
if (attack == AT_TAUNT){
    if (window == 3 && window_timer == 16){
        if (taunt_down){
            window = 2;
            window_timer = 1;
        }
        else {
            window = 4;
            window_timer = 1;
        }
    }
}

#define spawn_base_dust
///spawn_base_dust(x, y, name, ?dir)
//This function spawns base cast dusts. Names can be found below.
var dlen; //dust_length value
var dfx; //dust_fx value
var dfg; //fg_sprite value
var dfa = 0; //draw_angle value
var dust_color = 0;
var x = argument[0], y = argument[1], name = argument[2];
var dir = argument_count > 3 ? argument[3] : 0;

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