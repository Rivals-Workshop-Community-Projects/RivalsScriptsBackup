//Big Card (tm)
if hitpause <= 1 { 
    hsp = old_hsp;
    vsp = old_vsp;
}
else {
    hsp = 0;
    vsp = 0;
}

out_color = get_player_hud_color(player_id.player);

if (hitpause <= 0) {
    switch (state) {
        case 0: //Spawning
            visible = true;
            spr_index = sprite_get("card_big");
            if (window == 1) {
                img_index = (ease_linear(0, 24, window_timer, 24)) % 12;
                if (window_timer >= 24) {
                    window = 2;
                    window_timer = 0;
                }
            }
            if (window == 2) {
                img_index = (ease_linear(0, 12, window_timer, 36)) % 12;
                
                if (window_timer >= 36) {
                    article_change_state(1);
                }
            }
        break;
        case 1: //Idle
            spr_index = sprite_get("card_big");
            img_index = 0;
            draw_y = floor(cos(state_timer * 0.05) * 1.5);
            
            die_timer++;
            if (die_timer >= die_time_max -45) {
                visible = die_timer % 16 <= 4 ? false : true
            }
            if (die_timer >= die_time_max) {
                article_change_state(4);
                visible = true;
                die_timer = 0;
            }
        break;
        case 2: //being ridden
            visible = true;
            if (instance_exists(player_id)) {
                if ((player_id.state == PS_ATTACK_GROUND || player_id.state == PS_ATTACK_AIR) && (player_id.attack == AT_FSPECIAL || player_id.attack == AT_FSPECIAL_AIR)  && (player_id.window == 4 || player_id.window == 5 || player_id.window == 6 || player_id.window == 7)) {
                    spr_index = sprite_get("card_big_side");
                    
                    if (window == 1) {
                        img_index = min(ease_linear(0, 2, window_timer, 12), 2);
                        if (window_timer == 0) {
                            p_x = player_id.x;
                            p_y = player_id.y;
                        }
                        if (player_id.window == 4) {
                            with (player_id) {
                                vsp = 0;
                                hsp = 0;
                                var window_l = get_window_value(attack, 4, AG_WINDOW_LENGTH) * 2;
                                x = ease_linear(other.p_x, other.x, window_timer, window_l);
                                y = ease_backOut(other.p_y, other.y - 0, window_timer, window_l, 3);
                            }
                        }
                        if (player_id.window == 5) {
                            window = 2;
                            window_timer = 0;
                        }
                    }
                    
                    if (window == 2) {
                        img_index = state_timer % 12 <= 6 ? 3 : 4;
                        
                        if (window_timer == 1) {
                            hsp = travel_hsp_max * spr_dir;
                        }
                        
                        if (window_timer > 1) {
                            
                            if (player_id.hitstop > 0)
                                hitpause = player_id.hitstop;
                                
                            if (hitpause <= 0) {
                                hsp -= travel_decel * spr_dir;
                                if (player_id.window == 6) {
                                    if (player_id.down_down)
                                        vsp += 0.33;
                                    if (player_id.up_down)
                                        vsp -= 0.33;
                                }
                                vsp = clamp(vsp, -travel_vsp_max, travel_vsp_max)
                            }
                                
                            if (player_id.window == 6 || player_id.window == 5) {
                                with (player_id) {
                                    vsp = other.vsp;
                                    hsp = other.hsp;
                                    x = other.x;
                                    y = other.y - 0;
                                }
                                
                                if (abs(hsp) <= travel_hsp_max / 2) {
                                    player_id.window = 7;
                                    player_id.window_timer = 0;
                                }
                            
                                with (player_id) {
                                    if (place_meeting(x + hsp, y, asset_get("par_block"))) {
                                        other.hsp = 0
                                        other.vsp = 0
                                        window = 7;
                                        window_timer = 0;
                                    }
                                }
                                if (place_meeting(x + hsp, y, asset_get("par_block"))) {
                                    with (player_id) {
                                        other.hsp = 0
                                        other.vsp = 0
                                        window = 7;
                                        window_timer = 0;
                                    }
                                }
                            }
                            if (player_id.window == 6 && (player_id.special_pressed || player_id.attack_pressed || player_id.shield_pressed || player_id.jump_pressed)) {
                                player_id.window = 7;
                                player_id.window_timer = 0;
                                hsp *= 0.5
                                vsp = 0;
                            }
                            
                            if (abs(hsp) <= travel_decel) {
                                article_change_state(3);
                            }
                        }
                    }
                }
                else {
                    article_change_state(player_id.state_cat == SC_HITSTUN ? 4 : 3);
                }
            }
            else {
                article_change_state(player_id.state_cat == SC_HITSTUN ? 4 : 3);
            }
        break;
        case 3: //is a hitbox
            visible = true;
            spr_index = sprite_get("card_big");
            hsp = 0;
            vsp = 0;
            draw_y = 0;
            if (window == 1) {
                img_index = (ease_linear(0, 24, window_timer, 24)) % 12;
                if (window_timer == 1) {
                    create_hitbox(AT_FSPECIAL, 4, round(x), round(y));
                    sound_play(asset_get("sfx_shop_buy"));
                }
                if (window_timer >= 24) {
                    article_change_state(1);
                }
            }
        break;
        case 4: //death
            visible = true;
            hsp = 0;
            vsp = 0;
            draw_y = 0;
            spr_index = sprite_get("card_big_dead");
            img_index = (ease_linear(0, 6, state_timer, 24));
            if (state_timer >= 24) {
                instance_destroy(id);
                exit;
            }
        break;
    }
    state_timer ++;
    window_timer ++;
    if (dair_cooldown > 0)
        dair_cooldown --;
}
    
hitpause --;

if (hitpause <= 0) {
    hitpause = 0;
    old_hsp = hsp;
    old_vsp = vsp;
}

#define article_change_state(_state)
state = _state
state_timer = 0;
window = 1;
window_timer = 0;