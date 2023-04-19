//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

switch (attack) {
    
    //you dont need brackets around the cases of a switch statement btw just
    //remember to include the break;
    case AT_JAB:
        was_parried = false;
        break;
    
    case AT_DTILT:
        if window == 1 && window_timer == 10 {
            sound_play(asset_get("sfx_zetter_downb"))
        }
        break;
    
    case AT_DATTACK:
        if window == 3 && has_hit {
            can_jump = true
        }
        break;
    
    case AT_DAIR:
        if window == 1 && window_timer == 1 {
             sound_play(asset_get("sfx_shovel_swing_med2"), false, noone, 0.55, 1.1);
        }
        break;
    
    case AT_NSPECIAL:
        if window != 5 {
                if !fast_falling {
                    vsp = clamp(vsp, -23, 3)
                }
        }
        if(window == 2){
            if(window_timer % 12 == 0){
                //spawn_base_dust(x, y, "dash_start");
            }
            if(window_timer == 19){
                nspec_flash = 5;
                spawn_hit_fx(x + (26 * spr_dir), y - 58, 19);
                sound_play(sound_get("Flash"));
            }
            if(!special_down || window_timer == get_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH)){
                //max charge or released early
                if(window_timer < 18 || window_timer == get_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH)){
                    
                    var n_charge = (window_timer / get_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH));
                    
                    set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 7 + round(5 * n_charge)); //12
                    set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 7 + (2 * n_charge)); //9
                    set_hitbox_value(AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING, .7 + (0.3 * n_charge)); //1.0
                    set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE, 8 + (2 * n_charge)); //10
                    set_hitbox_value(AT_NSPECIAL, 1, HG_HITPAUSE_SCALING, .6 + (0.2 * n_charge)); //.8
                    
                    window_timer = 0;
                    window = 3;
                    spawn_base_dust(x, y, "dash_start");
                }else{
                    //timed hit
                    set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, 8);
                    window_timer = 0;
                    window = 6;
                    sound_play(asset_get("sfx_mol_bat_whack"), 0, noone, .7, 1.2);
                    spawn_base_dust(x, y, "dash_start");
                }
            }
        }else if(ring_equipped > -1 && (window == 3 || window == 6) && window_timer == get_window_value(AT_NSPECIAL, window, AG_WINDOW_LENGTH)){
            ring_out = instance_create(floor(x + (40 * spr_dir)), floor(y + 14), "obj_article1");
            ring_out.spr_dir = 1;
            ring_cd[ring_equipped] = ring_time_cd;
            ring_equipped = -1;
            ring_timer = -1;
            ring_follow = -1;
            hud_close = 4;
        }
        break;
    
    case AT_FSPECIAL:
        can_fast_fall = false;
        if(window == 1 && window_timer == get_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH)){
            if(ring_cd[add_on] <= 0){
                var ring = create_hitbox(AT_FSPECIAL, add_on + 1, floor(x) + (spr_dir * 38), floor(y) - 32);
                if(free) vsp = -4;
                if(ring_equipped > -1){
                    ring_cd[ring_equipped] = ring_time_cd;
                    ring_equipped = -1;
                    ring_timer = -1;
                    ring_follow = -1;
                    hud_close = 4;
                }
            }else{
                create_hitbox(AT_FSPECIAL, 4, floor(x), floor(y));
            }
        }
        break;
    
    case AT_FSPECIAL_2:
        if(window == 1 && window_timer == get_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_LENGTH)){
            if(ring_out != noone && ring_out.state < 2){
                ring_out.state = add_on + 3;
                ring_out.state_timer = 0;
                ring_out.image_index = 0;
            }
            if(free) vsp = -2;
        }
        break;
    
    case AT_USPECIAL:
        can_wall_jump = true;
        if(window == 1){
            vsp = clamp(vsp, -3, 0);
        }if(window == 2 || window == 3){
            can_move = false;
            if(!hitpause){
                hsp += 0.5 * (right_down - left_down);
                if(!right_down && !left_down){
                    hsp *= .9;
                }
                hsp = clamp(hsp, -uspec_hsp, uspec_hsp);
                
                //determine angle sprite should be drawn out
                if(hitpause){
                    var temp_hsp = old_hsp;
                }else{
                    var temp_hsp = hsp;
                }
                uspec_angle = ((temp_hsp/uspec_hsp) * -30);
            }
            if(ring_out != noone && collision_circle(x, y - 32, 40, ring_out, true, true) && ring_out.state < 2){
                sound_play(asset_get("sfx_ori_stomp_spin"));
                ring_out.state = 2;
                ring_out.state_timer = ring_out.die_time - 5;
                attack_end();
                set_attack(AT_USPECIAL_2);
            }
            
            if(shield_pressed && !uspec_2){
                window = 4;
                window_timer = 0;
                destroy_hitboxes();
            }
        }
        break;
    
    case AT_USPECIAL_2:
        can_wall_jump = true;
        if(window == 1){
            vsp = clamp(vsp, -3, 0);
        }if(window == 2 || window == 3){
            can_move = false;
            if(!hitpause){
                hsp += 0.6 * (right_down - left_down);
                if(!right_down && !left_down){
                    hsp *= .9;
                }
                hsp = clamp(hsp, (-uspec_hsp - 1), (uspec_hsp + 1));
                
                //determine angle sprite should be drawn out
                if(hitpause){
                    var temp_hsp = old_hsp;
                }else{
                    var temp_hsp = hsp;
                }
                uspec_angle = ((temp_hsp/uspec_hsp) * -30);
            }
            if(shield_pressed){
                window = 4;
                window_timer = 0;
                destroy_hitboxes();
            }
        }
        break;
    
    case AT_DSPECIAL:
        can_fast_fall = false;
        if(window == 1){
            if(!special_down){
                window = 2;
                window_timer = 0;
                clear_button_buffer( PC_SPECIAL_PRESSED );
                if(ring_equipped != -1){
                    sound_play(asset_get("mfx_unstar"), 0, noone, 1.0, 1.1);
                    ring_cd[ring_equipped] = ring_time_cd;
                    ring_equipped = -1;
                    ring_timer = -1;
                    ring_follow = -1;
                    hud_close = 4;
                }
                add_on++;
                sound_play(asset_get("mfx_change_color"));
                if(add_on > 2) add_on = 0;
            }else if(special_down && window_timer == get_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH)){
                set_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS, 4);
                window = 3;
                window_timer = 0;
                if(ring_cd[add_on] > 0){
                    sound_play(asset_get("mfx_back"), 0, noone, .8, 0.8);
                }else if(ring_equipped != add_on){
                    ring_equipped = add_on;
                    hud_close_type = add_on;
                    ring_timer = 0;
                    //create LWO
                    ring_follow = { sprite_index:spr_follow[add_on], image_index:0, image_alpha:0.8, x:(x-(spr_dir * 32)), y:(y-12),
                                    spr_dir:spr_dir, life_timer:0 };
                                    
                    sound_play(asset_get("sfx_ori_energyhit_medium"), 0, noone, .8, 1.1);
                    sound_play(asset_get("mfx_star"), 0, noone, .8, 0.9);
                    if(free) vsp = -1;
                }
            }
        }
        break;
    
    case AT_TAUNT:
        if(window == 2 && window_timer = 1){
            sound_play(asset_get("sfx_blow_medium3"), 0, noone, 1.0, 1.3);
        }else if(window == 2 && window_timer == 16){
            sound_play(asset_get("sfx_boss_vortex_start"), 0, noone, .6, 4.5);
        }
        break;
}

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