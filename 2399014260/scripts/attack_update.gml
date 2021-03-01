//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}



switch(attack){
    
    case AT_FSPECIAL:
    
        move_cooldown[AT_NSPECIAL] = 0;
        
        switch(window){
            
            case 1:
                if (window_timer == 8){
                    sound_play(sfx_ssbu_rosa_swing_1);
                }
                if (window_timer == phone_window_end - 2){
                    sound_play(sfx_ssbu_luma_pop);
                    sound_play(sfx_ssbu_rosa_swing_2);
                    sound_play(sfx_ssbu_luma_shoot);
                }
                if (window_timer == phone_window_end){
                    if free vsp = min(vsp, -5);
                }
                vsp = min(vsp, 5);
                break;
            
            case 2:
            
                break;
                
        }
        
        break;
    
    
    
    case AT_USPECIAL:
    
        // if (state_timer % 3 != 0 && move_cooldown[AT_NSPECIAL] > 2) move_cooldown[AT_NSPECIAL]++;
    
        switch(window){
            
            case 1:
                if (window_timer == 1) vsp = 4;
                
                hsp = clamp(hsp, -3, 3);
                vsp -= 0.5;
                break;
            
            case 2:
                vsp = max(lerp(0, -4, bee_time / bee_time_max), vsp - 0.25);
                hsp = clamp(hsp, -3, 3);
                move_cooldown[attack] = 1;
                if instance_exists(luma) && luma.state == PS_ATTACK_AIR && luma.attack == AT_NSPECIAL_AIR{
                    window = 3;
                }
                iasa_script();
                can_wall_jump = 1;
                
                if window_timer == phone_window_end{
                    spawn_hit_fx(
                        x - 20 + random_func(0, 40, 1),
                        y - 30 + random_func(1, 10, 1),
                        vfx_pollen
                        );
                }
                break;
            
        }
        
        break;
    
    
    
    case AT_NSPECIAL:
    
        switch(window){
            
            case 1:
                // vsp = min(vsp, 2);
                if (window_timer == 1 && free){
                    hsp = clamp(hsp, -1, 1);
                    if spin_refreshed vsp = min(vsp, -9);
                    spin_refreshed = 0;
                    spawn_hit_fx(x, y - 10, vfx_sparkles_up);
                }
                if (window_timer == 4){
                    sound_play(sfx_mario_galaxy_spin);
                }
                if (window_timer == phone_window_end){
                    was_free = free;
                }
            
            case 2:
            case 3:
                can_move = 0;
                can_fast_fall = 0;
                break;
            
            case 4:
                if free{
                    vsp -= gravity_speed / 2.1;
                    hsp = clamp(hsp, -3, 3);
                    can_wall_jump = 1;
                }
                else if was_free{
                    attack_end();
                    set_state(PS_LAND);
                }
            
        }
        
        break;
    
    
    
    case AT_DSPECIAL_AIR:
    
        switch(window){
            
            case 1:
                set_attack_value(attack, AG_NUM_WINDOWS, 1 + 2 * has_hit_player);
                if has_hit_player{
                    melee_hit_player.x = lerp(melee_hit_player.x, x, 0.5);
                    melee_hit_player.y = lerp(melee_hit_player.y, y - 32, 0.5);
                    draw_indicator = 0;
                }
                has_moved_at_end = 0;
                if has_hit{
                    hsp = 0;
                    vsp = 0;
                }
                break;
            
            case 2:
                melee_hit_player.x = x;
                melee_hit_player.y = y - 32;
                melee_hit_player.hitstop = 1;
                melee_hit_player.spr_dir = spr_dir;
                
                if dspecial_hold_timer > 60 || y > get_stage_data(SD_Y_POS) + 64{
                    setWindow(3);
                    if abs(right_down - left_down) spr_dir = right_down - left_down;
                }
                draw_indicator = 0;
                break;
            
            case 3:
                if !has_moved_at_end{
                   melee_hit_player.x = x + 32 * spr_dir; 
                   melee_hit_player.y = y - 16;
                   has_moved_at_end = 1;
                }
                break;
            
        }
    
    case AT_DSPECIAL:
        
        can_move = (window == 1);
        can_fast_fall = 0;
        vsp = min(vsp, max_fall);
        
        switch(window){
            
            case 1:
                dspecial_jump_sprite = 0;
                dspecial_walk_timer = 0;
                dspecial_hold_timer = 0;
                break;
            
            case 2:
                
                if (special_pressed || attack_pressed){
                    setWindow(3);
                    if abs(right_down - left_down) spr_dir = right_down - left_down;
                }
                else{
                    can_shield = 1;
                    if shield_pressed && attack == AT_DSPECIAL{
                        var vfx = instance_create(x, y - 64, "obj_article3");
                    	vfx.spr_dir = -spr_dir;
                    }
                }
                dspecial_hold_timer++;
            
            case 3:
                dspecial_jump_sprite = 0;
                
                if abs(right_down - left_down){
                    if !free spr_dir = right_down - left_down;
                    hsp = clamp(hsp + (right_down - left_down) * 0.5, -6, 6);
                }
                else{
                    hsp -= sign(hsp) * (free ? 0.1 : 0.5);
                    if abs(hsp) < 1 hsp = 0;
                }
                
                if abs(hsp) dspecial_walk_timer++;
                else dspecial_walk_timer = 0;
                
                if jump_pressed && !free{
                    vsp = -jump_speed;
                    sound_play(sfx_mario_2_jump);
                }
                
                if free && vsp < 0 && !jump_down{
                    vsp += 0.5;
                }
                
                dspecial_jump_sprite = (free || (dspecial_walk_timer % 8 >= 4));
                
                if free && vsp < 0 && !jump_down{
                    vsp += 0.5;
                }
                break;
            
        }
        
        break;
    
    
    
    case AT_FTILT:
    
        if window == 1 && window_timer == phone_window_end - 2{
            sound_play(asset_get("sfx_flare_razer"));
        }
        
        break;
    
    
    
    case AT_DTILT:
    
        if window == 1 && window_timer == phone_window_end{
            sound_play(asset_get("sfx_swipe_medium1"));
        }
        
        if (window == 4 && has_hit) iasa_script();
        
        break;
    
    
    
    case AT_UTILT:
    
        if window == 1 && window_timer == 1{
            array_push(stopped_sounds, sound_play(sfx_ssbu_bow_charge));
        }
        
        if window == 1 && window_timer == phone_window_end{
            sound_stop(stopped_sounds[0]);
            sound_play(sfx_mario_coin);
        }
        
        break;
    
    
    
    case AT_DATTACK:
    
        switch(window){
            case 1:
                if window_timer == 4{
                    hsp = 7 * spr_dir;
                    sound_play(sfx_mario_swoosh_1);
                    array_push(stopped_sounds, sound_play(sfx_minecraft_minecart));
                }
                break;
            case 2:
                break;
            case 3:
                break;
            case 4:
                if (window_timer == 1 && (free || has_hit) && !hitpause){
                    attack_end();
                    set_state(was_parried ? PS_PRATFALL : PS_IDLE_AIR);
                    free = 1;
                    vsp = -8;
                    if was_parried hsp = 0;
                    sound_play(sfx_mario_poof_1);
                    sound_play(sfx_mario_pop_1);
                    sound_stop(stopped_sounds[0]);
                }
                
                else{
                    if (window_timer == 1){
                        sound_play(sfx_mario_poof_1);
                        sound_play(sfx_mario_pop_1);
                    }
                    if (window_timer == 3){
                        sound_stop(stopped_sounds[0]);
                    }
                    
                    hsp = 0;
                }
                break;
        }
        
        break;
    
    
    
    case AT_BAIR:
        
        if (window == 1 && window_timer == phone_window_end - 2) sound_play(sfx_mario_swoosh_2);
        
        break;
    
    
    
    case AT_DAIR:
        
        switch(window){
            
            case 1:
                // can_move = 0;
                vsp = -1;
                hsp = 0;
                if (window_timer == phone_window_end){
                    vsp = 20;
                    sound_play(sfx_mario_swoosh_2);
                    fall_through = 1;
                    loops = 0;
                }
                break;
            
            case 2:
                if !hitpause vsp = 20;
                if has_hit setWindow(4);
                else if !free setWindow(3);
                if (window != 2) sound_play(sfx_mario_flip_slam);
                if has_hit sound_play(sfx_mario_pop_1);
                
                if loops && window == 2{
                    can_jump = 1;
                    can_shield = 1;
                    can_special = 1;
                }
                
                if (window_timer == phone_window_end) loops++;
                
                if instance_exists(luma) && luma.state == PS_ATTACK_AIR && luma.attack == AT_NSPECIAL_AIR{
                    attack_end();
                    destroy_hitboxes();
                    set_state(PS_IDLE_AIR);
                }
                break;
            
            case 3:
                break;
            
            case 4:
                if (window_timer == 1) vsp = -short_hop_speed;
                break;
            
        }
        
        break;
    
    
    
    case AT_FSTRONG:
        
        if (window == 2 && window_timer == phone_window_end) sound_play(asset_get("sfx_shovel_hit_light1"));
        
        break;
    
    
    
    case AT_TAUNT:
    
        draw_indicator = 0;
        
        if (window_timer == phone_window_end){
            vsp = -jump_speed;
            toadette = !toadette;
            var hfx = spawn_hit_fx(x, y, vfx_warp_box);
            hfx.spr_dir = 1;
            sound_play(sfx_mario_warp_box_exit);
            sound_play(sfx_mario_poof_1);
        }
    
}



#define setWindow(n_w)

window = n_w;
window_timer = 0;
destroy_hitboxes();