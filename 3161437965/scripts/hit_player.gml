switch (my_hitboxID.attack) {
    case AT_UAIR:
        if my_hitboxID.hbox_num == 1 or my_hitboxID.hbox_num == 2{
            sound_play(asset_get("sfx_blow_heavy1"))
            if (hit_player_obj.should_make_shockwave) sound_play(sound_get("sfx_deal_damage"))
        }
    case AT_FSPECIAL:
        //sound_play(asset_get("sfx_blow_heavy2"))
        if(my_hitboxID.hbox_num == 2 && !hit_player_obj.clone){
            reset_hitbox_value(AT_FSPECIAL_2, 1, HG_DAMAGE);
            reset_hitbox_value(AT_FSPECIAL_2, 2, HG_DAMAGE);
            genocided = false;
            murder_mode_target = hit_player_obj;
            destroy_hitboxes();
            uses_afterimage_trail = false;
            hit_player_obj.should_make_shockwave = false;
            attack_end();
            set_attack(AT_FSPECIAL_2);
        }
        break;
    break;
    case 49:            
        set_hitbox_value(AT_FSPECIAL_2, 1, HG_DAMAGE, 2);
        set_hitbox_value(AT_FSPECIAL_2, 2, HG_DAMAGE, 0);
        genocided = false;
        murder_mode_target = hit_player_obj;
        destroy_hitboxes();
        uses_afterimage_trail = false;
        hit_player_obj.should_make_shockwave = false;
        attack_end();
        set_attack(AT_FSPECIAL_2);
    break;
    case AT_FSTRONG:
    case AT_NSPECIAL:
        sound_play(sound_get("sfx_sword_hit"))
    break;
    case AT_FAIR:
        if ((my_hitboxID.hbox_num == 1 || has_rune("D")) && hit_player_obj.should_make_shockwave) {
            sound_play(sound_get("sfx_deal_damage"))
            sound_play(asset_get("sfx_blow_heavy2"))
        }
    break;
    case AT_FSPECIAL_2:
    hitpause = false;
    hitstop = 0;
    hitstop_full = 0;
    hit_player_obj.should_make_shockwave = false;
    var screen_center_x = view_get_xview() + view_get_wview()/2;
    var screen_center_y = view_get_yview() + view_get_hview()/2;
    if(my_hitboxID.hbox_num == 1){
        // var rand_point = random_func_2(floor(abs(x%200)), 360, true);
        murder_vfx_array[array_length_1d(murder_vfx_array)] = {
            x:screen_center_x, 
            y:screen_center_y - (murder_mode_target.char_height/2), 
            spr_dir:1,
            scale:2,
            sprite_index:sprite_get("vfx_strike"), 
            anim_speed:.25, 
            rot:my_hitboxID.kb_angle + 180, 
            col:c_white, 
            timer:0, 
            timerMax:23
        };
        murder_vfx_array[array_length_1d(murder_vfx_array)] = {
            x:screen_center_x + lengthdir_x(-80 + random_func(get_gameplay_time()%24, 160, true), my_hitboxID.kb_angle), 
            y:screen_center_y - (murder_mode_target.char_height/2) + lengthdir_y(-80 + random_func_2(get_gameplay_time()%24, 160, true), my_hitboxID.kb_angle), 
            spr_dir:spr_dir, 
            scale:1, 
            sprite_index:sprite_get("fx_gouge"), 
            anim_speed:.2, 
            rot:random_func_2((get_gameplay_time() + 50)%129, 360, true), 
            col:c_white, 
            timer:0, 
            timerMax:19
        };
    }
    if(my_hitboxID.hbox_num == 2){
        if get_player_damage(murder_mode_target.player) >= 100 genocided = true;
        if genocided {
            sound_play(sound_get("sfx_strong_hit"), false, noone, true, .75);
            sound_play(sound_get("sfx_strong_hit"));
            sound_play(sound_get("sfx_strong_hit"), false, noone, true, 1.5);
            set_synced_var(player, 0);
            cur_skin = 0;
            user_event(0);
            user_event(1);
        } else {
            sound_play(sound_get("sfx_strong_hit"));
        }
    }
    break;
}

if (loaded_off_uspec) loaded_off_uspec = false;