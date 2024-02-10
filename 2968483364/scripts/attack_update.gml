//B - Reversals
if (attack == AT_NSPECIAL  || attack == AT_NSPECIAL_2|| attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

switch(attack){
    
    //This one's for all the trans people in chat, and Reiga.
    case AT_JAB:
        if((window == 1 || window == 4) && (window_timer == 1)){
            clear_button_buffer(PC_ATTACK_PRESSED);
        }else if(window == 7 && window_timer == get_window_value(AT_JAB, 7, AG_WINDOW_LENGTH) - 1){
            spawn_base_dust(x + (40*spr_dir) + 5, y, "dash_start", -1);
            spawn_base_dust(x + (40*spr_dir) - 5, y, "dash_start", 1);
        }
        //turnaround
        if((window == 4 || window == 7) && window_timer == 1){
            if(spr_dir == (right_down - left_down) * -1){
                spr_dir *= -1;
                attack_end();
                set_attack(AT_FTILT);
            }
        }
        
        //self damage
        if(window == 7 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) - 1){
            self_damage(selfdmg_val[1]);
        }
        
        break;
    
    case AT_DATTACK:
        if(window == 1 && window_timer == get_window_value(AT_DATTACK, 1, AG_WINDOW_LENGTH) - 5){
            sound_play(asset_get("sfx_zetter_fireball_fire"), false, noone, 0.8, 1.05);
        }
        
        //self damage
        if(window == 1 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) - 1){
            self_damage(selfdmg_val[0]);
        }
        break;
    
    case AT_FTILT:
        if(window == 1 && window_timer == get_window_value(AT_FTILT, 1, AG_WINDOW_LENGTH) - 2){
            sound_play(sound_get("sfx_burn"), false, noone, 0.7, 1.0);
            spawn_base_dust(x - (20*spr_dir), y, "dash_start");
        }
        break;
    
    case AT_DTILT:
        //turnaround
        if(window == 1 && window_timer == 1){
            if(spr_dir == (right_down - left_down) * -1){
                spr_dir *= -1;
            }
        }
        
        if(window == 1 && window_timer == get_window_value(AT_DTILT, 1, AG_WINDOW_LENGTH) - 2){
            sound_play(sound_get("sfx_burn"), false, noone, 0.5, 1.1);
            spawn_base_dust(x - (25*spr_dir), y, "dash");
        }
        
        //self damage
        if(window == 1 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) - 1){
            self_damage(selfdmg_val[0]);
        }
        break;
    
    case AT_UTILT:
        //turnaround
        if(window == 1 && window_timer == 1){
            if(spr_dir == (right_down - left_down) * -1){
                spr_dir *= -1;
            }
        }
        
        if(window == 1 && window_timer == get_window_value(AT_UTILT, 1, AG_WINDOW_LENGTH) - 2){
            sound_play(asset_get("sfx_zetter_fireball_fire"), false, noone, 0.8, 1.0);
        }else if(window == 2 || (window == 3 && window_timer < 8)){
            hud_offset = 40;
        }
        
        //self damage
        if(window == 1 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) - 1){
            self_damage(selfdmg_val[1]);
        }
        break;
    
    
    case AT_NAIR:
        if(window == 1 && window_timer == get_window_value(AT_NAIR, 1, AG_WINDOW_LENGTH) - 1){
            sound_play(asset_get("sfx_ell_strong_attack_explosion"), false, noone, 0.5, 1.2);
        }
        break;
    
    case AT_FAIR:
        if(window == 1 && window_timer == get_window_value(AT_FAIR, 1, AG_WINDOW_LENGTH) - 1){
            sound_play(asset_get("sfx_ell_strong_attack_explosion"), false, noone, 0.6, 1.0);
        }
        
        //self damage
        if(window == 1 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) - 1){
            self_damage(selfdmg_val[1]);
        }
        break;
    
    case AT_BAIR:
        if(window == 1 && window_timer == get_window_value(AT_BAIR, 1, AG_WINDOW_LENGTH) - 1){
            sound_play(asset_get("sfx_bird_upspecial"), false, noone, 1.0, 0.95);
        }
        
        //self damage
        if(window == 1 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) - 1){
            self_damage(selfdmg_val[1]);
        }
        break;
    
    case AT_UAIR:
        if(window == 1 && window_timer == get_window_value(AT_UAIR, 1, AG_WINDOW_LENGTH) - 1){
            sound_play(sound_get("sfx_burn"), false, noone, 0.4, 1.1);
        }
        if(window == 2 || window == 1 && window_timer == get_window_value(AT_UAIR, 1, AG_WINDOW_LENGTH) - 1){
            hud_offset = 30;
        }
        
        //self damage
        if(window == 1 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) - 1){
            self_damage(selfdmg_val[0]);
        }
        break;
    
    case AT_DAIR:
        can_fast_fall = false;
        //reverse
        if(window == 1 && window_timer == 2){
            if((spr_dir == 1 && (left_down || left_stick_down)) ||
                (spr_dir == -1 && (right_down || right_stick_down))){
                    spr_dir *= -1;
                }
        }
        
        if(window == 1 && window_timer == get_window_value(AT_DAIR, 1, AG_WINDOW_LENGTH) - 1){
            sound_play(sound_get("sfx_burn"), false, noone, 0.7, 1.2);
        }else if(window == 2){
            can_move = false;
        }
        
        //landing
        if((window == 2 || window == 3) && !free){
            set_attack_value(AT_DAIR, AG_NUM_WINDOWS, 5);
            window_timer = 0;
            window = 4;
            destroy_hitboxes();
            create_hitbox( AT_DAIR, 5, floor(x), floor(y) );
            sound_play(asset_get("sfx_ell_strong_attack_explosion"), false, noone, 0.6, 1.0);
            sound_play(asset_get("sfx_zetter_downb"), false, noone, 0.9, 0.9);
            sound_play(asset_get("sfx_blow_heavy1"), false, noone, 0.7, 1.0);
            hsp = 2 * spr_dir;
        }else if((window == 4 || window == 5 ) && free){
            //edge cancel
            attack_end();
            destroy_hitboxes();
            window = 10;
        }
        
        //self damage
        if(window == 1 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) - 1){
            self_damage(selfdmg_val[0]);
        }
        break;
    
    
    case AT_FSTRONG:
        if((window == 1 && window_timer == get_window_value(AT_FSTRONG, 1, AG_WINDOW_LENGTH) - 1) && strong_charge % 10 == 0){
                spawn_base_dust(x + (40*spr_dir), y, "dash_start", -1);
                spawn_base_dust(x + (40*spr_dir), y, "dash_start", 1);
        }else if(window == 2 && window_timer == get_window_value(AT_FSTRONG, 2, AG_WINDOW_LENGTH) - 1){
            sound_play(asset_get("sfx_ell_strong_attack_explosion"), false, noone, 1.0, 1.2);
            sound_play(asset_get("sfx_zetter_downb"), false, noone, 1.0, 0.9);
        }
        
        //self damage
        if(window == 2 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) - 1){
            self_damage(selfdmg_val[2]);
            //self_damage(30); //so i can test install stuff easier
        }
        break;
    
    case AT_USTRONG:
        if((window == 1 && window_timer == get_window_value(AT_USTRONG, 1, AG_WINDOW_LENGTH) - 1) && strong_charge % 10 == 0){
                spawn_base_dust(x - 10, y, "dash_start", -1);
                spawn_base_dust(x + 10, y, "dash_start", 1);
        }
        
        if(window == 2 && window_timer == get_window_value(AT_USTRONG, 2, AG_WINDOW_LENGTH) - 1){
            sound_play(asset_get("sfx_ell_strong_attack_explosion"), false, noone, 0.8, 1.0);
            spawn_base_dust(x, y, "jump");
        }
        if(window == 3 && window_timer == get_window_value(AT_USTRONG, 3, AG_WINDOW_LENGTH) - 1){
            sound_play(asset_get("sfx_ell_strong_attack_explosion"), false, noone, 1.0, 1.1);
            sound_play(asset_get("sfx_burnend"), false, noone, 1, 1);
            spawn_base_dust(x + (5*spr_dir), y, "dash_start", -1);
            spawn_base_dust(x + (5*spr_dir), y, "dash_start", 1);
        }
        
        if(window == 3 || window == 4){
            hud_offset = 45;
        }
        //self damage
        if(window == 2 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) - 1){
            self_damage(selfdmg_val[2]);
        }
        break;
    
    case AT_DSTRONG:
        if(window == 2 && window_timer == get_window_value(AT_DSTRONG, 2, AG_WINDOW_LENGTH) - 1){
            sound_play(asset_get("sfx_ell_strong_attack_explosion"), false, noone, 0.8, 0.9);
        }
        
        //self damage
        if(window == 2 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) - 1){
            self_damage(selfdmg_val[1]);
        }
        break;
    
    
    case AT_NSPECIAL:
        can_fast_fall = false;
        vsp = clamp(vsp, -20, 4);
        if(window == 1 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
            pipebomb = instance_create(floor(x+(24 * spr_dir)), floor(y-62), "obj_article1");
            pipebomb.hsp = 2.5 * spr_dir;
            pipebomb.vsp = -10.5;
            
            //hadron collider testing
            /*var pipebomb2 = instance_create(floor(x+(74 * spr_dir)), floor(y-62), "obj_article1");
            pipebomb2.hsp = -2.5 * spr_dir;
            pipebomb2.vsp = -10.5;
            pipebomb2.owner = 2;*/
            
            sound_play(asset_get("sfx_mol_flash_bounce1"), false, noone, 1.0, 1.1);
        }
        break;
    
    case AT_NSPECIAL_2:
        hsp = clamp(hsp, -5, 5);
        if(window == 1 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) - 1){
            sound_play(sound_get("sfx_burn"), false, noone, 0.7, 1.2);
            sound_play(asset_get("sfx_ell_strong_attack_explosion"), false, noone, 1.05, 1.0);
        }
        
        if(!free){
            if(!was_parried){
                set_state(PS_LANDING_LAG);
                landing_lag_time = (has_hit? 10 : 15);
            }else{
                set_state(PS_PRATLAND);
			    landing_lag = 45;
            }
        }
        
        //self damage
        if(window == 1 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) - 1){
            self_damage(selfdmg_val[1]);
        }
        break;

    case AT_FSPECIAL:
        move_cooldown[AT_FSPECIAL] = 10;
        if(window <= 7){
            can_move = false;
            can_jump = false;
            //vsp = clamp( vsp, -4, 1);
        }else{
            can_move = true;
            fspec_fresh = [0, 0, 0];
        }
        can_fast_fall = false;
        
        //next input
        if((window == 3 || window == 6) && window_timer >= 6 && !was_parried){
            if(special_pressed){
                set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, window + 3);
                window++;
                window_timer = 0;
            }
        }
        
        //decay
        if(fspec_fresh[0] == 1 && window <= 3){
            vsp = clamp( vsp, -4, 1);
            if(window == 3 && window_timer == get_window_value(AT_FSPECIAL, 3, AG_WINDOW_LENGTH)){
                fspec_fresh[0] = 0;
            }
        }else if(fspec_fresh[1] == 1 && window > 3 && window < 7){
            vsp = clamp( vsp, -4, 1);
            if(window == 6 && window_timer == get_window_value(AT_FSPECIAL, 6, AG_WINDOW_LENGTH)){
                fspec_fresh[1] = 0;
            }else if(window == 6 && window_timer == 1){
                fspec_fresh[0] = 0;
            }
        }
        
        if(window == 1 || window == 4){
            hsp = clamp(hsp, -3.5, 3.5);
            if(window_timer == get_window_value(AT_FSPECIAL, window, AG_WINDOW_LENGTH) - 1){
                spawn_base_dust(x + (25*spr_dir), y, "dash_start");
                sound_play(asset_get("sfx_zetter_fireball_fire"), false, noone, 0.5, 1 + (window * 0.025));
                sound_play(asset_get("sfx_ice_back_air"), false, noone, 0.95, 0.85);
            }
        }else if(window == 7){
            if(window_timer == 1){
                hsp = 6.5 * spr_dir;
            }else if(window_timer == get_window_value(AT_FSPECIAL, 7, AG_WINDOW_LENGTH) - 1){
            spawn_base_dust(x, y, "jump");
            sound_play(asset_get("sfx_ell_strong_attack_explosion"), false, noone, 0.55, 1.0);
            sound_play(asset_get("sfx_ice_back_air"), false, noone, 1.0, 0.95);
            }
        }
        
        //hold back to move less forwards
        if((window == 3 || window == 7) && window_timer == 1 && !hitpause){
        	if((spr_dir == 1 && left_down) || (spr_dir == -1 && right_down)){
        		hsp -= 4.5 * spr_dir;
        	}
        }
        
        //self damage
        if(window == 1 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) - 1){
            self_damage(selfdmg_val[0]);
        }else if(window == 4 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) - 1){
            self_damage(selfdmg_val[0]);
        }else if(window == 7 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) - 1){
            self_damage(selfdmg_val[1]);
        }
        break;
    
    case AT_USPECIAL:
        if(window > 2){
            can_wall_jump = true;
        }
        if(window != 2 && window != 7 && window != 5){
            can_move = true;
        }else{
            can_move = false;
        }
        
        if(window == 1){
            wing_timer = 0;
            hsp = clamp(hsp, -5, 5);
            vsp = clamp(vsp, -20, 0);
            
            if(window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) - 1){
                sound_play(asset_get("sfx_ell_strong_attack_explosion"), false, noone, 0.8, 1.1);
                sound_play(asset_get("sfx_burnconsume"), false, noone, 0.5, 0.8);
            }
        }else if(window == 2){
            if(window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
                var hfx = spawn_hit_fx(x, y, vfx_uspecspike);
                hfx.spr_dir = spr_dir;
                sound_play(asset_get("sfx_ori_stomp_spin"), false, noone, 0.5, 0.95);
            }
        }else if(window == 5){
            if(get_gameplay_time() % wing_timespeed == 0){
                wing_timer++;
            }
            if(right_down xor left_down){
                hsp += .4 * (right_down - left_down);
            }else{
                hsp *= .8;
            }
            
            hsp = clamp(hsp, -4.5, 4.5);
            vsp = clamp(vsp, -2, 2.5);
            
            //land
            if(!free){
                window = 8;
                window_timer = 13;
            //kick
            }else if(special_pressed || attack_pressed){
                if((right_down - left_down) == spr_dir * -1){
                    spr_dir *= -1;
                }
                window = 6;
                window_timer = 0;
            }else if(right_stick_pressed){
                spr_dir = 1;
                window = 6;
                window_timer = 0;
            }else if(left_stick_pressed){
                spr_dir = -1;
                window = 6;
                window_timer = 0;
            //cancel
            }else if(shield_pressed || down_pressed){
                window = 8;
                window_timer = 10;
            }
        }else if(window == 6  && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) - 1){
            sound_play(asset_get("sfx_zetter_fireball_fire"), false, noone, 0.8, 1.05);
        }
        
        
        //self damage
        if(window == 1 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) - 1){
            self_damage(selfdmg_val[0]);
        }else if(window == 6 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) - 1){
            self_damage(selfdmg_val[1]);
        }
        break;
    
    case AT_DSPECIAL:
        can_move = false;
        if(window == 2 && window_timer == get_window_value(AT_DSPECIAL, window, AG_WINDOW_LENGTH) - 1){
            sound_play(asset_get("sfx_ell_strong_attack_explosion"), false, noone, 0.7, 1.0);
            sound_play(asset_get("sfx_zetter_fireball_fire"), false, noone, 0.8, 1.0);
            sound_play(asset_get("sfx_holy_tablet_appear"), false, noone, 1.0, 1.1);
        }else if(window == 3 && (window_timer+1) % 8 == 0){
            //sound_play(asset_get("sfx_ell_strong_attack_explosion"), false, noone, 0.25, 0.9);
            sound_play(asset_get("sfx_burnend"), false, noone, 0.85, 0.9);
        }
        if(window == 3 && window_timer == get_window_value(AT_DSPECIAL, window, AG_WINDOW_LENGTH) - 1){
            sound_play(asset_get("sfx_ell_strong_attack_explosion"), false, noone, 1.0, 0.9);
            sound_play(asset_get("sfx_mol_norm_explode"), false, noone, 1.0, 1.0);
        }else if(window == 7 && window_timer == 20){
            sound_play(asset_get("sfx_bird_upspecial"), false, noone, 0.65, 1);
            sound_play(sound_get("sfx_burn"), false, noone, .8, 1);
        }
        
        //self healing
        if(window == 3 && (window_timer+1) % 4 == 0){
            if(stored_dmg > 0) self_damage(-1);
        }
        if(window == 3 && window_timer == get_window_value(AT_DSPECIAL, window, AG_WINDOW_LENGTH) - 1){
            self_damage(-1 * stored_dmg);
        }
        if(window == 6 && blue){
            blue = false;
            init_shader();
        }
        break;
    
    case AT_TAUNT:
        if(window == 1 && window_timer == 10){
            sound_play(asset_get("sfx_land_med"), false, noone, .6, 1);
        }
        
        //self damage
        if(window == 1 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) - 1){
            self_damage(selfdmg_val[0]);
        }
        break;
}

#define self_damage(dmg_val)


if(dmg_val > 0){
    if(stored_dmg < storedmg_max * 2){
        stored_dmg += dmg_val;
        //clamp damage to the max, basically
        if(stored_dmg >= storedmg_max * (blue + 1)){
            dmg_val -= (stored_dmg - (storedmg_max * (blue + 1)));
            stored_dmg = storedmg_max * (blue + 1);
            if(!blue){
                blue = true;
                init_shader();
                spawn_hit_fx(x, y, vfx_firering);
                sound_play(asset_get("sfx_burnconsume"), false, noone, .5, 0.8);
            }else{
                blue_buffer = true;
            }
        }
        take_damage( player, -1, dmg_val );
    }else{
        //if above max, you still take damage, but it doesnt store
        take_damage( player, -1, dmg_val );
    }
}else{
    //healing
    stored_dmg += dmg_val;
    take_damage( player, -1, dmg_val );
}

stored_dmg = clamp(stored_dmg, 0, storedmg_max * 2);

#define spawn_base_dust
/// spawn_base_dust(x, y, name, dir = 0)
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