//
if (get_player_color(player) == 29) {
	alt_glow_timer ++;
	init_shader();
}
//Training toggle
training_toggle = get_training_cpu_action() != CPU_FIGHT

if (training_toggle) {
    if (taunt_pressed && !hitpause && training_meter_inc <= 0) {
        training_meter_inc = 1;
    }
    if (training_meter_inc >= 1) {
        if (training_meter_inc == 1) {
            if (blackjack_cooling_timer > 0) {
                blackjack_cooling_timer = 0;
                blackjack_meter = 0
            }
            else {
                if (blackjack_meter < blackjack_meter_max) {
                    blackjack_meter += 3;
                    sound_play(asset_get("mfx_forward"));
                    if (blackjack_meter >= blackjack_meter_max) {
                        blackjack_meter = blackjack_meter_max
                        sound_play(sound_get("sfx_lucy_21"));
                    }
                }
            }
        }
        
        
        training_meter_inc ++;
        if (training_meter_inc >= 10) {
            training_meter_inc = 0;
        }
    }
}

//Reset spr_dir
if ((state != PS_ATTACK_AIR && state != PS_ATTACK_GROUND) || attack != AT_USPECIAL) {
    if (spr_angle != 0) {
        spr_angle = 0;
        hurtboxID.image_angle = spr_angle;
        draw_y = 0;
    }
}

//Alts
if (eyes_same_shade()) {
    set_victory_portrait(sprite_get("portrait_alt"));
    set_victory_sidebar(sprite_get("result_small_alt"));
}
else {
    set_victory_portrait(get_char_info(player, INFO_PORTRAIT));
    set_victory_sidebar(get_char_info(player, INFO_SIDEBAR));
}

//Blackjack cooldown
if (blackjack_cooling_timer > 0) {
    blackjack_cooling_timer ++;
    
    if (blackjack_cooling_timer % blackjack_cooling_div == blackjack_cooling_div - 1) {
        blackjack_meter --;
        if (blackjack_meter <= 0) {
            blackjack_meter = 0;
            blackjack_cooling_timer = 0
            blackjack_meter_cooling = false;
        }
    } 
}

//Dash Taunt Cancelling
if (state == PS_DASH || state == PS_DASH_START || state == PS_DASH_STOP || state == PS_DASH_TURN) {
    if (taunt_pressed) {
        set_attack(AT_TAUNT);
    }
}

//Card Interaction

with (obj_article1) {
    if (object_index != obj_article1) continue;
    if (player_id == other.id && hitstop == 0) {
        var player_list = ds_list_create();
        with (oPlayer) {
            var near = collision_rectangle(other.bbox_left - 128, other.bbox_top - 128, other.bbox_right + 128, other.bbox_bottom + 128, id, 1, 0)
            if (instance_exists(player_near))
                ds_list_add(player_list, near);
        }
        for (var i = 0; i < ds_list_size(player_list); i++) {
            var player_near = player_list[|i]
            if (instance_exists(player_near) && (player_near.state == PS_ATTACK_AIR || player_near.state == PS_ATTACK_GROUND) && is_ditto(player_near, player_id)) {
                with (player_near) {
                    if (attack == AT_DAIR) {
                        if ((window == 2) || (window == 3 && window_timer >= 0 && window_timer <= 12) && !hitpause) { 
                            var collision_pos = [round(x), round(y) - 11];
            	        	var collision_size = [64, 11];
            	        	var collision_rect = 
            	        		collision_rectangle(collision_pos[0] - collision_size[0] / 2, 
            	        		collision_pos[1] - collision_size[1] / 2,
            	        		collision_pos[0] + collision_size[0] / 2,
            	        		collision_pos[1] + collision_size[1] / 2,
            	        		other, 0, 0);
            	        	if (collision_rect != -4 && !hitpause && collision_rect.dair_cooldown <= 0) {
                                sound_play(asset_get("sfx_shovel_brandish"));
            		            window = 4;
            		            window_timer = 0;
            		            destroy_hitboxes();
            		            with (collision_rect) {
                                    state = 0;
                                    state_timer = 0;
                                    window = 1;
                                    window_timer = 0;
                                    dair_cooldown = 60;
            		            }
            	        	}
                        }
                    }
                    if (attack == AT_USPECIAL && window == 5 && !hitpause) {
                        var collision_pos = [round(x), round(y) - 32];
                    	var collision_size = [32, 32];
                    	var collision_rect = 
                    		collision_rectangle(collision_pos[0] - collision_size[0] / 2, 
                    		collision_pos[1] - collision_size[1] / 2,
                    		collision_pos[0] + collision_size[0] / 2,
                    		collision_pos[1] + collision_size[1] / 2,
                    		other, 0, 0);
                    	if (collision_rect != -4 && !hitpause) {
                            sound_play(asset_get("sfx_shovel_brandish"));
            	            window = 1;
            	            window_timer = 0;
            	            hsp = lengthdir_x(5, -uspecial_angle_real);
            	            vsp = lengthdir_y(5, uspecial_angle_real);
            	            old_hsp = hsp;
            	            old_vsp = vsp;
            	            hitstop = 5;
            	            hitpause = true;
            	            spawn_hit_fx(round(collision_rect.x), round(collision_rect.y), fx_cardhit);
            	            
            	            destroy_hitboxes();
            	            with (collision_rect) {
                                state = 0;
                                state_timer = 0;
                                window = 1;
                                window_timer = 0;
            	            }
                    	}
                    }
                }
            }
        }
        ds_list_destroy(player_list);
    }
}

#define is_ditto(_source, _target) 
return (_source.url == _target.url && get_char_info(_source.player, INFO_STR_NAME) == get_char_info(_target.player, INFO_STR_NAME))

#define eyes_same_shade()
var alt = get_player_color(player);
var eye_color = [get_color_profile_slot_r(alt, 6), get_color_profile_slot_g(alt, 6), get_color_profile_slot_b(alt, 6)]
var eyewhite_color = [get_color_profile_slot_r(alt, 7), get_color_profile_slot_g(alt, 7), get_color_profile_slot_b(alt, 7)]

return (eye_color[0] == eyewhite_color[0] 
    && eye_color[1] == eyewhite_color[1] 
    && eye_color[2] == eyewhite_color[2])
