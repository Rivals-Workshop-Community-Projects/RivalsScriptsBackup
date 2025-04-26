var num = my_hitboxID.hbox_num;
var atk = my_hitboxID.attack;

if atk == AT_NSPECIAL and num == 2 {
    print("LOSE DECAY")
    if hit_player_obj.decay_info.player == player {
        with (hit_player_obj) {
            decay_info.player = -1;
            outline_color = [0, 0, 0]
            decay_info.timer = 0
            init_shader();
            }
        }
}

switch (atk) {
    case AT_FSTRONG:
        sound_play(asset_get("sfx_ice_back_air"), false, noone, 0.9, 1.1)
    break;
    case AT_DSPECIAL:
        if my_hitboxID.hbox_num == 6 {
            if hit_player_obj.decay_info.player == player {
                dspecial_should_enhance = true
                with (hit_player_obj) {
                    decay_info.player = -1;
                    outline_color = [0, 0, 0]
                    decay_info.timer = 0 
                }
            }
        }
    break;
    case AT_DSTRONG:
        if my_hitboxID.hbox_num == 3 {
         sound_play(asset_get("sfx_bigplant_eat"));
     }
    break;
    case AT_FTILT:
    case AT_FAIR:
    case AT_FSPECIAL:
    case AT_FSPECIAL_AIR:
        hit_player_obj.decay_info.player = player
        hit_player_obj.decay_info.timer = 180
    break;
    case AT_NSPECIAL:
    case AT_EXTRA_1:
        minion_spawn_position.target_player = hit_player_obj;
        if num == 1 {
            sound_play(asset_get("sfx_blow_heavy1"))
            minion_spawn_position.target_player = hit_player_obj;
        }
    break;
    case AT_EXTRA_3: // this is for minion moves. please put any minion hitboxes under extra 3
        minion_obj.has_hit = true;
        minion_obj.hitstop = ceil(get_hitstop_formula(get_player_damage(hit_player_obj.player), my_hitboxID.hbox_num, my_hitboxID.hitpause, my_hitboxID.hitpause_growth, 0));
        // minion_obj.cache.hitpause = ceil(get_hitstop_formula(get_player_damage(hit_player_obj.player), my_hitboxID.hbox_num, my_hitboxID.hitpause, my_hitboxID.hitpause_growth, 0));
        // minion_obj.cache.vsp = minion_obj.vsp;
        // minion_obj.cache.hsp = minion_obj.hsp;
        // minion_obj.cache.grav = minion_obj.grav;
        // minion_obj.vsp = 0;
        // minion_obj.hsp = 0;
        // minion_obj.grav = 0;
        
        if num == 13 {
            minion_obj.grabbed_player = hit_player_obj
            hit_player_obj.x = lerp(hit_player_obj.x, minion_obj.x + (minion_obj.grabbed_coords.x * minion_obj.spr_dir), 0.5)
            hit_player_obj.y = lerp(hit_player_obj.y, minion_obj.y + (minion_obj.grabbed_coords.y), 0.5)
        }
        else if num == 15 {
            minion_obj.grabbed_player = noone;
            with (hit_player_obj) {
                if self == other break;
                
                decay_info.player = -1;
                outline_color = [0, 0, 0]
                decay_info.timer = 0 
            }
        } else if num == 16 {
            if hit_player_obj == id {
                minion_obj.grabbed_player = id;
            }
        }
        
        if hit_player_obj != id and hit_player_obj.decay_info.player == player {
            minion_obj.incubation = min(100, minion_obj.incubation + (my_hitboxID.damage * minion_decay_sap_multiplier))
            
            with minion_obj {
                var variance = random_func(6, 200, true) / 1000
                sound_play(sound_get("sfx_deracine_minion_heal"), false, noone, 0.6, 0.9 + variance)
                heal_effect = 1;
            }
        }
    break;
}