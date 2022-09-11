var bugs_out = false;

with(asset_get("obj_article1")){
    if (player_id == other.id){
        bugs_out = true;
    }
}

//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

if (attack == AT_BAIR){
    if (window == 2){
        if (attack_down || (spr_dir == 1 && (left_stick_down || left_strong_down)) || (spr_dir == -1 && (right_stick_down || right_strong_down))){
            if (vsp > -1 && !hitpause){
                vsp = 0.3;
            }
        }
    }
}

if (attack == AT_UAIR){
    if (window > 1){
        hud_offset = 40;
    }
}

if (attack == AT_UTILT){
    if (window > 1){
        hud_offset = 55;
    }
}

if (attack == AT_DATTACK){
    if (free){
        if (window > 2){
            can_jump = true;
        }
    }
    if (window == 4 && window_timer == 1){
        if (!free){
            set_window_value(AT_DATTACK, 4, AG_WINDOW_HAS_SFX, 1);
            hsp = 4*spr_dir; 
        }
        else{
            set_window_value(AT_DATTACK, 4, AG_WINDOW_HAS_SFX, 0);
        }
    }
}

if (attack == AT_TAUNT_2){
    if (window == 1 && window_timer == 4){
        if (!hitpause){
            spawn_hit_fx( x + 0*spr_dir, y - 25, explosion_effect );
        }
    }
    if (window == 4){
        if (taunt_down){
            window_timer = 1;
        }
    }
}

if (attack == AT_TAUNT){
    if (window == 1 && window_timer == 4){
        if (!hitpause){
            sound_play(asset_get("sfx_abyss_hex_hit"));
            spawn_hit_fx( x + 0*spr_dir, y - 25, 264 );
        }
    }
    if (get_player_color(player) == 14){
        attack = AT_TAUNT_2;
    }
    if (window == 4){
        if (taunt_down){
            window_timer = 1;
        }
    }
}

if (attack == AT_DSTRONG){
    if (window < 3){
        hud_offset = 20;
    }
    if (window > 2){
        hud_offset = 30;
    }
    if (window == 2){
        if (window_timer == 3 && !hitpause){
            sound_play(asset_get("sfx_blow_medium2"));
            spawn_base_dust( x - (0 * spr_dir), y, "dash_start", spr_dir);
		    spawn_base_dust( x - (0 * spr_dir), y, "dash_start", spr_dir*-1);
        }
    }
}

if (attack == AT_USTRONG){
    if (window == 3){
        if (window_timer == 1){
            if (!hitpause){
                vsp = ustrong_vsp;
                sound_play(asset_get("sfx_jumpground"));
                if (!free){
                    spawn_base_dust( x - (0 * spr_dir), y, "jump", spr_dir);
                }
                else{
                    spawn_base_dust( x - (0 * spr_dir), y, "djump", spr_dir);
                }
            }
        }
    }
    if (window > 3){
        can_move = false;
        if (window < 7){
            hud_offset = 20;
        }
    }
    if (window == 3 || window == 4){
        if (grabbed != -4){
            if (grabbed.state == PS_HITSTUN){
            	grabbed.spr_dir = spr_dir*-1;
                grabbed.hitstop = 4;
                grabbed.x = lerp(grabbed.x + 36*spr_dir, x, .5);
                grabbed.y = lerp(grabbed.y - 5, y - 20, .5);
            }
        }
    }
    if (window == 7){
        if (!free){
            sound_play(asset_get("sfx_land_med"));
            spawn_base_dust( x - (0 * spr_dir), y, "land", spr_dir);
            window = 8;
            window_timer = 1;
        }
        if (free){
            can_wall_jump = true;
            if (window_timer > 20){
                if (window_timer == 21){
                    spawn_hit_fx( x + 0*spr_dir, y - 25, 301 );
                    sound_play(asset_get("mfx_star"));
                }
                can_jump = true;
                can_special = true;
                can_shield = true;
            }
        }
    }
}

if (attack == AT_DSPECIAL){
    if (window == 2){
        if (window_timer == 2 && !bugs_out){
            bruh = instance_create(x + (spr_dir*45),y - 5,"obj_article1");
            bruh.spr_dir = spr_dir;
            spawn_hit_fx( x + (spr_dir*55), y - 12, 13 );
        }
        if (bugs_out && window_timer == 1){
            move_cooldown[AT_DSPECIAL] = 80;
        }
    }
}

if (bugs_out){
    var side = bruh.x - x;
    var distance_between_x = side;
    var distance_between_y = bruh.y - y;
    if (side > 0){
        side = 1
    }
    else{
        side = -1;
    }
}

if (attack == AT_FSPECIAL){
    if (window == 1){
        fspec_teleporting = false;
        times = 0;
        if (window_timer == 16){
            spawn_hit_fx( x + (spr_dir*5), y - 40, 265 );
        }
    }
    if (window > 1){
        can_wall_jump = true;
    }
    if (window == 2){
        if (window_timer == 1){
            if (!hitpause){
                if (!bugs_out || (bugs_out && spr_dir != side)){ //if bugs not out or bugs are out and youre not facing them
                    hsp = 45*spr_dir;
                    vsp = -9;
                }
                else{
                    if (bugs_out){
                        if (bruh.state < 4){
                            fspec_teleporting = true;
                            if (spr_dir == 1){
                                x = bruh.x;
                                y = bruh.y;
                                destroy_hitboxes();
                                window = 2;
                                window_timer = 3;
                                sound_play(sound_get("blast"));
                                bruh.state = 2;
                                distance_between_x_changing = distance_between_x;
                                distance_between_y_changing = distance_between_y;
                                var num_hitboxes = floor(distance_between_x/20);
                                if (num_hitboxes < 5){
                                    num_hitboxes = 8;
                                }
                                while (times < num_hitboxes){
                                    var cur_hitbox = create_hitbox(AT_FSPECIAL, 3, floor(x - distance_between_x_changing), floor(y - distance_between_y_changing - 40));
                                    if (times mod 3 == 0){
                                        spawn_hit_fx( x - distance_between_x_changing, y - distance_between_y_changing - 40, 139 );
                                    }
                                    distance_between_x_changing -= distance_between_x/num_hitboxes;
                                    distance_between_y_changing -= distance_between_y/num_hitboxes;
                                    times++;
                                }
                            }
                            else{
                                x = bruh.x;
                                y = bruh.y;
                                destroy_hitboxes();
                                window = 2;
                                window_timer = 3;
                                sound_play(sound_get("blast"));
                                bruh.state = 2;
                                distance_between_x_changing = distance_between_x;
                                distance_between_y_changing = distance_between_y;
                                var num_hitboxes = floor(-distance_between_x/20);
                                if (num_hitboxes < 5){
                                    num_hitboxes = 8;
                                }
                                while (times < num_hitboxes){
                                    var cur_hitbox = create_hitbox(AT_FSPECIAL, 3, floor(x - distance_between_x_changing), floor(y - distance_between_y_changing - 40));
                                    if (times mod 3 == 0){
                                        spawn_hit_fx( x - distance_between_x_changing, y - distance_between_y_changing - 40, 139 );
                                    }
                                    distance_between_x_changing -= distance_between_x/num_hitboxes;
                                    distance_between_y_changing -= distance_between_y/num_hitboxes;
                                    times++;
                                }
                            }
                        }
                        else{
                            if (spr_dir == side){
                                hsp = 45*spr_dir;
                                vsp = -9;
                            }
                        }
                    }
                }
            }
        }
        if (!hitpause){
            if (window_timer mod 2 == 0){
                spawn_hit_fx( x + (spr_dir*5), y - 40, 139 );
            }
        }
    }
    if (window == 3){
        if (window_timer == 1 && !hitpause){
            hsp = 2*spr_dir;
            vsp = -2;
            sound_stop(asset_get("sfx_absa_dashup"));
            spawn_hit_fx( x + (spr_dir*5), y - 40, 265 );
        }
    }
    if (window < 5){
        can_fast_fall = false;
    }
    else{
        //can_fast_fall = true;
    }
}

if (attack == AT_FSTRONG){
    if (window == 3){
        if (window_timer == 1 && !hitpause){
            hsp = 4*spr_dir;
        }
    }
}

if (attack == AT_NSPECIAL){
    if (window > 1){
        hud_offset = 45;
    }
    if (!hitpause && window_timer == 1){
        if (window == 2){
            create_hitbox(AT_NSPECIAL, 1, floor(x + 18*spr_dir), floor(y - 85));
        }
        else if (window == 4){
            create_hitbox(AT_NSPECIAL, 1, floor(x + 5*spr_dir), floor(y - 85));
        }
        else if (window == 6){
            create_hitbox(AT_NSPECIAL, 1, floor(x - 18*spr_dir), floor(y - 85));
            move_cooldown[AT_NSPECIAL] = nspec_cooldown;
        }
    }
    
}

if (attack == AT_USPECIAL){
    if (window == 1){
        uspec_vsp = -7;
        interact_ver = false;
    }
    if (window == 2){
        vsp = 0;
        hsp = 0;
        can_move = false;
        can_fast_fall = false;
        if (uspec_vsp mod -2 > -1){
            spawn_base_dust( x - (0 * spr_dir), y, "dash_start", spr_dir);
            //spawn_base_dust( x - (0 * spr_dir), y, "dash", spr_dir*-1);
            sound_play(asset_get("sfx_boss_shine"));
        }
        if (special_down){
            window_timer = 1;
            uspec_vsp -= uspec_charge_speed;
        }
        else{
            window = 3;
            window_timer = 0;
            spawn_base_dust( x - (0 * spr_dir), y, "dash_start", spr_dir);
            //spawn_base_dust( x - (0 * spr_dir), y, "dash", spr_dir*-1);
            sound_play(asset_get("sfx_boss_shine"));
            sound_play(asset_get("sfx_boss_shine"));
        }
        if (uspec_vsp < uspec_vsp_max){
            window = 3;
            window_timer = 0;
        }
    }
    if (window == 4){
        can_move = true;
        //can_fast_fall = true;
        if (window_timer == 1 && !hitpause){
            vsp = uspec_vsp;
            hsp = 0;
        }
        if (grabbed != -4){
            if (grabbed.state == PS_HITSTUN){
                grabbed.hitstop = 4;
                grabbed.x = lerp(grabbed.x, x, .5);
                grabbed.y = lerp(grabbed.y, y, .5);
            }
        }
        //dspecial interaction
        if (bugs_out){
            with (asset_get("obj_article1")){
            	if (place_meeting(x, y, other) && player_id.player == other.player && !other.interact_ver){
                    state = 2;
                    with (other){
                        interact_ver = true;
                        destroy_hitboxes();
                        window_timer = 15;
                    }
                }
            }
        }
    }
    if (window > 3){
        can_wall_jump = true;
    }
    if (window == 5){
        if (window_timer == 1 && !hitpause){
            spawn_hit_fx( x + (spr_dir*1), y - 40, 265 );
            vsp = uspec_vsp*(-uspec_vsp/(-uspec_vsp + 9));
        }
    }
    if (window == 6){
        if (window_timer == 8){
            if (interact_ver){
                window = 8;
                window_timer = 0;
            }
        }
    }
    if (window == 8){
        //move_cooldown[AT_USPECIAL] = 99999;
        move_cooldown[AT_DSPECIAL] = 50;
    }
}

if (attack == AT_JAB){
    
    if (window == 3 && window_timer == 15){
        
        if (was_parried){
            
            was_parried = false;
            
        }
        
    }
}

//--------------------------------------------

//Supersonic's Base Cast Dust Function
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
