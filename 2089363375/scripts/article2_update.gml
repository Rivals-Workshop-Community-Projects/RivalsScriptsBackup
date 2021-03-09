//

if (instance_exists(parent)) {
    hit_cooldown --;
    x = parent.x;
    y = parent.y;
    hsp = parent.hsp;
    vsp = parent.vsp;
    
    if (!parent.invincible) {
        parent.last_hbox = current_hbox;
        current_hbox = instance_place(x, y, pHitBox);
        if (instance_exists(current_hbox)) {
            with (current_hbox) {
                if (attack == AT_UTILT && player_id.url = CH_ELLIANA) //dan moment with the funny snake crashes the game
                    continue;
                if (other.parent.current_attack == AT_DSPECIAL && other.parent.window == 7)
                    continue;
                if (player == other.parent.player) 
                    continue;
                if (other.parent.hitpoints <= 0 || (get_player_team(player) == get_player_team(other.parent.player) && get_match_setting(SET_TEAMS) == 1))
                    continue;
                other.last_hbox_group = hbox_group;
                if (hbox_num > 1) {
                    if (other.last_hbox_group != -1 && other.last_hbox_group <= hbox_group)
                        continue;
                }
                if (other.last_hbox != other.current_hbox && length > 0) {
                    if (get_gameplay_time() >= other.last_hittime + no_other_hit && !destroyed) {
                        //This equation taken straight from the game.
                        var p = damage;
                        var w = 1.3;
                        var b = lerp(kb_value, bkb_final, hitbox_timer / length);
                        var a = get_hitbox_angle(id);
                        
                        var knockback_eq = b + p * kb_scale * 0.12 * w;
                            
	                    other.parent.hsp = lengthdir_x(knockback_eq, a);
	                    other.parent.vsp = lengthdir_y(knockback_eq, a);
                        
                        var hitstun_eq = b * 4 * ((w - 1) * 0.6 + 1) + p * 0.12 * kb_scale * 4 * 0.65 * w;
                        if (hitstun_factor > 0)
                            hitstun_eq *= hitstun_factor;
                        else if (hitstun_factor < 0)
                            hitstun_eq = 0;
                        
                        var hitpause_eq = (hitpause + p * hitpause_growth * 0.05);
                        
                        if (other.hit_cooldown <= 0) {
                            other.parent.hitstop = max(1, round(hitpause_eq + extra_hitpause));
                            other.parent.hitstun = hitstun_eq;
                            
                            player_id.old_hsp = player_id.hsp;
                            player_id.old_vsp = player_id.vsp;
                            
                            if (type != 2) {
                                player_id.was_hitpause = hitpause;
                                player_id.hitpause = true;
                                player_id.hitstop = hitpause_eq;
                                player_id.hitstop_full = hitpause_eq;
                            }
                            if (no_other_hit == -1)
                                other.hit_cooldown = 10;
                            
                            player_id.has_hit = true;
                            player_id.my_hitboxID = id;
                            player_id.has_hit_id = other.parent.id;
                            if (!fx_created) {
                                fx_created = true;
                                var enemy_dist = point_distance(x, y, other.x, other.y);
                                var enemy_dir = point_direction(x, y, other.x, other.y);
                                
                                spawn_hit_fx(other.x + round(lengthdir_x(enemy_dist / 2, enemy_dir)) + hit_effect_x, other.y - 32 + round(lengthdir_y(enemy_dist / 2, enemy_dir)) + hit_effect_y, hit_effect);
                                if (hitstun_factor != -1)
                                    sound_play(sound_effect);
                            }
                            
                            other.parent.hitpoints -= damage;
                            
                            if (other.parent.hitpoints <= 0) {
                            	other.parent.state = "dead"
                            	other.parent.state_timer = 0;
                            }
                            else {
                            	other.parent.state = "hurt"
                            	
                            	if (knockback_eq >= 5)
                            		other.parent.stunned = 1;
                            	other.parent.state_timer = 0;
                            }
                        }
                        other.was_hit = false;
                        other.last_hbox = id;
                        other.last_hbox_group = hbox_group;
                        other.last_hittime = get_gameplay_time();
                        other.last_player_hit = orig_player;
                        other.last_hit_by = player_id;
                        
                        if (type == 2 && enemies == 0) {
                            instance_destroy(id);
                            continue;
                        }
                    }
                }
                
            }
        }
        else
            parent.last_hurt_group = -1;
    }
}

mask_index = sprite_index;