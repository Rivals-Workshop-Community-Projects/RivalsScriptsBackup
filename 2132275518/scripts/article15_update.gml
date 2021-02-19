//

if (instance_exists(parent)) {
    var hurt_height = (bbox_bottom - bbox_top) / 2
    if (!instance_exists(pos_parent))
        pos_parent = parent;
    hit_cooldown --;
    x = pos_parent.x;
    y = pos_parent.y;
    hsp = pos_parent.hsp;
    vsp = pos_parent.vsp;
    
    if (!parent.invincible) {
        parent.last_hbox = current_hbox;
        current_hbox = highest_priority_hb();
        if (instance_exists(current_hbox)) {
            with (current_hbox) {
                if (attack == AT_UTILT && player_id.url = CH_ELLIANA) //dan moment with the funny snake crashes the game
                    continue;
                if (other.parent.hitpoints <= 0 || player == 5)
                    continue;
                    
                if (other.parent.last_hbox_group != -1 && other.parent.last_hbox_group == hbox_group) {
                    continue;
                }
                other.parent.last_hbox_group = hbox_group;
                
                if (other.parent.last_hbox != id && length > 0 && other.hit_cooldown <= 0) {
                    if ( !destroyed) {
                        //This equation taken straight from the game.
                        var p = damage;
                        var w = other.parent.knockback_adj;
                        var b = lerp(kb_value, bkb_final, hitbox_timer / length);
                        var a = get_hitbox_angle(id);
                        
                        var knockback_eq = b + p * kb_scale * 0.12 * w;
                            
                        if (camera_shake > 0) {
                            if ((knockback_eq >= 10 && camera_shake == 0) || camera_shake == 1)
                                obj_stage_main.shake_amount = max(10, round(knockback_eq));
                        }
                            
                        if (knockback_eq > 0 && other.parent.knockback_adj > 0) {
                            other.parent.hsp = lengthdir_x(knockback_eq, a);
                            other.parent.vsp = lengthdir_y(knockback_eq, a);
                        }
                        
                        var hitstun_eq = b * 4 * ((w - 1) * 0.6 + 1) + p * 0.12 * kb_scale * 4 * 0.65 * w;
                        if (hitstun_factor > 0)
                            hitstun_eq *= hitstun_factor;
                        else if (hitstun_factor < 0)
                            hitstun_eq = 0;
                        
                        var hitpause_eq = (hitpause + p * hitpause_growth * 0.05) / 4;
                    
                        other.parent.hitstop = max(1, round(hitpause_eq + extra_hitpause));
                        other.parent.hitstun = hitstun_eq;
                        
                        player_id.old_hsp = player_id.hsp;
                        player_id.old_vsp = player_id.vsp;
                        
                        if (type != 2) {
                            player_id.was_hitpause = player_id.hitpause;
                            player_id.hitpause = true;
                            player_id.hitstop = hitpause_eq;
                            player_id.hitstop_full = hitpause_eq;
                        }
                        if (no_other_hit == 0)
                            other.hit_cooldown = hitpause;
                        else
                            other.hit_cooldown = no_other_hit;
                        player_id.has_hit = true;
                        other.parent.orig_knock = knockback_eq;
                        other.parent.should_make_shockwave = false; 
                        other.last_hit_by = player_id;
                        
                        if (!fx_created) {
                            fx_created = true;
                            var enemy_dist = point_distance(x, y, player_id.x, player_id.y);
                            var enemy_dir = point_direction(x, y, player_id.x, player_id.y);
                            
                            spawn_hit_fx(x + (spr_dir * hit_effect_x), y + hit_effect_y, hit_effect);
                            if (hitstun_factor != -1)
                                sound_play(sound_effect);
                                
	                        var p_count = obj_stage_main.player_count - obj_stage_main.dead_players;
	                        var damage_resist = 1
	                        if (p_count > 1)
	                            damage_resist = (other.player_count_resistance - (0.05 * p_count));
	                        
	                        other.parent.hitpoints -= damage * damage_resist;
	                        obj_stage_main.player_boss_hits[player] += damage;
                        }
                        
                        other.parent.was_hit = false;
                        other.parent.last_hbox = id;
	                    other.parent.last_hbox_group = hbox_group;
                        other.parent.last_hittime = get_gameplay_time();
                        other.parent.last_player_hit = orig_player;
                        other.parent.last_hit_by = player_id;
                        other.parent.last_hurt_group = other.hurtbox_group;
            
                        if (other.parent.hitpoints <= 0 && other.activate_kill_effect) {
                            with (obj_stage_main) {
                                var death = instance_create(other.x, other.y, "obj_stage_article", 16);
                                death.player = other.orig_player;
                                
                                sound_play(sound_get("sfx_boss_dead"));
                            }
                            with (oPlayer) {
                                if (!hitpause) {
                                    old_hsp = hsp;
                                    old_vsp = vsp;
                                }
                                hitpause = true;
                                hitstop += 90;
                                hitstop_full += 90;
                            }
                            
                            with (obj_stage_article) {
                                hitstop += 90;
                            }
                        }
                        
                        if (type == 2 && enemies == 0) {
                        	destroyed = true;
                            continue;
                        }
                    }
                }
                
            }
        }
        else {
            parent.last_hurt_group = -1;
            parent.last_hbox_group = 1000;
        }
    }
}

mask_index = sprite_index;

#define highest_priority_hb
var result = noone;
var compare = 0;
with (asset_get("pHitBox")) {
    if (place_meeting(x, y, other) && player != 5)
    {
        if (hit_priority >= compare) {
            result = id;
            compare = hit_priority;
        }
    }
}

return result;