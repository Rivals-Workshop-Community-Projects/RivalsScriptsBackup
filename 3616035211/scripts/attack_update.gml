// attack_update

//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}
var window_end = floor(get_window_value(attack, window, AG_WINDOW_LENGTH) * ((get_window_value(attack, window, AG_WINDOW_HAS_WHIFFLAG) && !has_hit) ? 1.5 : 1));

if !hitstop switch attack{
    case AT_DTILT:
    if window == 1{
        if window_timer == window_end-2 sound_play(asset_get("sfx_ori_energyhit_weak"));
        if window_timer == window_end spawn_sm_hit_fx(x, y, fx_gas_dtilt, -1);
    }
    if window == 3 && has_hit && window_timer >= 8 can_attack = 1;
    break;
    
    case AT_FTILT:
    if window == 1 && window_timer == window_end instance_create(floor(x + 64*spr_dir), floor(y - 34), "obj_article1");
    break;
    
    case AT_UTILT:
    offset_hud(200);
    break;
    
    case AT_DATTACK:
    if window == 1 && window_timer == 1 && hsp == 0 hsp = 7*spr_dir;
    if window < 3 dattack_turn = 0;
    if window == 3 && window_timer == window_end && (spr_dir? left_pressed + left_down: right_pressed + right_down) {spr_dir *= -1; dattack_turn = 1;}
    break;
    
    case AT_NAIR:
    if window == 2{
        if window_timer == 2 sound_play(asset_get("sfx_swipe_weak2"));
        if window_timer == 5 sound_play(asset_get("sfx_swipe_medium1"));
        if window_timer == 8 sound_play(asset_get("sfx_swipe_medium2"));
    }
    break;
    
    case AT_DAIR:
    switch window{
        case 3:
        create_hitbox(AT_DAIR, 2, x, y);
        if !has_hit_player && state_timer >= 23 && !attack_down set_window(4);
        break;
        
        case 7:
        attack_end();
        if attack_down create_hitbox(AT_DAIR, 2, x, y);
        else set_window(4);
        break;
    }
    break;
    
    case AT_UAIR:
    offset_hud(80);
    break;
    
    case AT_USTRONG:
    offset_hud(200);
    break;
    
    case AT_NSPECIAL:
    hsp = 0;
    vsp = 0;
    can_move = 0;
    can_fast_fall = 0;
    if window == 4 && (place_meeting(x + hsp, y + free, asset_get("par_block"))){
            height_limit = 32;
            for (var i = 0; i <= height_limit; i++){
                if (!place_meeting(x + hsp, y + free - i, asset_get("par_block"))){
                    y -= i;
                    break;
                }
            }
        }
    switch window{
        case 1:
        if window_timer == window_end-1{
            startpos = [x, y];
        }
        if window_timer == window_end{
            sound_play(sound_get("teleport"));
        	tp_dir = (joy_pad_idle? 90 - 90*spr_dir: joy_dir)
        	y += lengthdir_y((tp_dir == 270? 110: tp_dist), tp_dir);
            x += lengthdir_x(tp_dist, tp_dir);
        }
        break;
        
        case 2:
        if window_timer == 1{
            var g = instance_create(floor(lerp(startpos[0], x, cloud1_dist)), floor(lerp(startpos[1], y, cloud1_dist)) - 34, "obj_article1");
            g.invincible = 120;
            var g = instance_create(floor(lerp(startpos[0], x, cloud2_dist)), floor(lerp(startpos[1], y, cloud2_dist)) - 34, "obj_article1");
            g.invincible = 120;
            spawn_sm_hit_fx(x, y, fx_gas_tp, -1);
        }
        break;
        
        case 3:
        if window_timer == 1 && tokens && special_down{
            tokens--;
            set_window(1);
        }
        break;
    }
    break;
    
    case AT_FSPECIAL:
    can_move = 0;
    can_fast_fall = 0;
    move_cooldown[attack] = 20;
    can_jump = (has_hit && (window < 3 || (window == 3 && window_timer < 8)));
    switch window{
        case 1:
	hsp *= .95;
        vsp *= .95;
        break;
        
        case 2:
        case 3:
        drill_angle = lerp(drill_angle, 50*(up_down - down_down)*spr_dir, .1);
        hsp = lengthdir_x(drill_speed, drill_angle)*spr_dir;
        vsp = lengthdir_y(drill_speed, drill_angle)*spr_dir;
        break;
        
        case 4:
        if window_timer == window_end{
            drill_angle = 0;
            set_window(window + 1 + free);
        }
        break;
        
        case 5:
        if free set_window(6);
        break;
        
        case 6:
        if !free set_window(5);
        break;
    }
    break;
    
    case AT_DSPECIAL:
    move_cooldown[attack] = 30;
    if window == 1 && window_timer == window_end spawn_sm_hit_fx(x, y, fx_ignite, +1); 
    break;
    
    case AT_USPECIAL:
    if window <= 2 && free{
        vsp -= gravity_speed*.5;
        hsp *= .9;
    }
    if window == 2 && window_timer == window_end spawn_sm_hit_fx(x, y, fx_gas_uspecial, 1);
    if window == 3 && !(window_timer%3) spawn_sm_hit_fx(x, y, fx_gas_uspecial_trail, 1);
    break;
    
    case AT_TAUNT:
    switch window{
        case 2:
        if !taunt_down set_window(4);
        if attack_pressed set_window(3);
        case 3:
        if window_timer >= 12 && attack_pressed set_window(3);
        if special_pressed && tokens set_window(5);
        break;
        
        case 5:
        if window_timer == window_end{
            set_attack(AT_NSPECIAL);
            hurtboxID.sprite_index = sprite_get("nspecial_hurt");
            window = 2;
            window_timer = 0;
            sound_play(sound_get("teleport"));
            startpos = [x, y];
            x += lengthdir_x(tp_dist, (joy_pad_idle? 90 - 90*spr_dir: joy_dir));
        	y += lengthdir_y((tp_dir == 270? 110: tp_dist), tp_dir);
        }
        break;
    }
    break;
    
    case AT_EXTRA_1:
    iasa_script();
    break;
    
    case 2:
	if window_timer == window_end-1 && get_gameplay_time() <= 125 state = PS_SPAWN; //correct state to spawn if needed
    break;
}

#define offset_hud
/// offset_hud(am, coeff = .2;)
var am = argument[0];
var coeff = argument_count > 1 ? argument[1] : .2;;
hud_offset = floor(lerp(hud_offset, am, coeff));

#define spawn_sm_hit_fx(xp, yp, fx, dpt)
var g = spawn_hit_fx(xp, yp, fx);
g.spr_dir *= 2;
g.image_yscale = 2;
g.depth = depth + dpt;
return g;

#define set_window
/// set_window(win, t = 0;)
var win = argument[0];
var t = argument_count > 1 ? argument[1] : 0;;
window = win;
window_timer = t;