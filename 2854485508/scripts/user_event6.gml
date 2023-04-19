enum EN_EVENT {
    INIT,
    UPDATE,
    ANIMATION,
    DEATH,
    GOT_HIT,
    GOT_PARRIED,
    ATTACK_UPDATE,
}


switch (art_event) {
    case EN_EVENT.GOT_HIT:
        if (enemy_hitboxID.player_id.url == player_id.url && get_player_name(enemy_hitboxID.player) == get_player_name(player_id.player))
        {
            if (enemy_hitboxID.attack == AT_NSPECIAL && enemy_hitboxID.hbox_num == 1 && !enemy_hitboxID.destroyed ) {
                mamizou_mark_id = enemy_hitboxID.player_id;
                percent -= enemy_hitboxID.damage;
                enemy_hitboxID.destroyed = 1;
                sound_play(asset_get("sfx_leaves"));
            }
            if (enemy_hitboxID.attack == AT_NSPECIAL_2 && enemy_hitboxID.hbox_num == 1) {
                hitpoints = 0;
                sound_play(asset_get("sfx_leaves"));
            }
        }
    break;
}


switch (enem_id) {
    case 0:
        switch (art_event) {
            case EN_EVENT.INIT:
                ai_max_follow_dist = 64;
                spr_name = "tanuki";
                walk_speed = 3;
                walk_accel = 0.5;
                walk_turn_time = 6;
                ground_friction = .6;
                hitpoints_max = 10;
                hitbox = noone;
                spawn_hitbox = true;
                
                jump_start_time = 5;
                jump_speed = 11;
                max_fall = 10;
                gravity_speed = 0.5;
                hitstun_grav = 0.5;
                
                ai_attack_timer = 0;
                ai_move_timer = 0;
                ai_jump_timer = 0;
                ai_moving_right = false;
                ai_moving_left = false;
                ai_decision_time = 10;
                
                
                ai_moving_right = false;
                ai_moving_left = false;
                
                ai_range_low = 96; //The preferred minimum range
                ai_range_far = 256; //The preferred maximum range
                ai_move_frequency = 5;
                player_id_hitstun = 0;
                //Jumping
                ai_jump_back_frequency = 15; //How often the AI should jump back randomly.
                ai_jump_up_frequency = 12; //How often the AI should jump up randomly.
                ai_jump_fwd_frequency = 12; //How often the AI should jump forwards randomly.
                ai_jump_range_low = 64; //The preferred minimum range to jump.
                
                
                ai_attack_frequency = 10; //How often to attack.
                ai_attack_cooldown = 0;
                ai_attack_counter = 0;
                
                idle_anim_speed = .18;
                crouch_anim_speed = .1;
                walk_anim_speed = .18;
                dash_anim_speed = .2;
                
            break;
            
            case EN_EVENT.UPDATE:
                if (instance_exists(ai_target) && hitstun <= 0) {
                    if (state != PS_SPAWN) {
                        spawn_hitbox = false;
                        if (instance_exists(hitbox)) instance_destroy(hitbox);
                    }
                    var t_dist = point_distance(x, y, ai_target.x, ai_target.y);
                    var t_xd = abs(ai_target.x - x);
                    var t_yd = abs(ai_target.y - y);
                    
                    right_down = ai_moving_right;
                    left_down = ai_moving_left;
                    jump_down = state == PS_JUMPSQUAT;
                    
                    var decision_random = 0;
                    if (player_id.state_cat != SC_HITSTUN) {
                        player_id_hitstun = 0;
                        //Moving
                        ai_move_timer ++;
                        
                        if (ai_move_timer % ai_move_frequency == 0 && !committed) {
                            if (t_xd >= ai_range_low) {
                             
                                if (ai_target.x > x) {
                                    ai_moving_right = true;
                                    ai_moving_left = false
                                } 
                                if (ai_target.x < x) {
                                    ai_moving_right = false;
                                    ai_moving_left = true;
                                } 
                            }
                            else {
                                ai_moving_right = false;
                                ai_moving_left = false;
                                if (ai_target.x > x && spr_dir == -1) {
                                    right_down = true;
                                    left_down = false; 
                                }
                                if (ai_target.x < x && spr_dir == 1) {
                                    right_down = false;
                                    left_down = true; 
                                }
                            }
                        }
                    
                        //Jumping
                        ai_jump_timer ++;
                        decision_random = random_func(50, round(ai_decision_time), true);
                        
                        if (!free) {
                            if (place_meeting(floor(x) + 8 * spr_dir, floor(y) - 2, asset_get("par_block"))) {
                                jump_down = true;
                                if (spr_dir == 1) {
                                    ai_moving_right = true;
                                    ai_moving_left = false
                                } 
                                if (spr_dir == -1) {
                                    ai_moving_right = false;
                                    ai_moving_left = true;
                                } 
                            }
                            if (decision_random >= ai_decision_time/2 && !committed) {
                                if (ai_target.y + 32 <= y) {
                                    var jump_random = random_func(51, 100, true);
                                    if (jump_random <= 50) {
                                        var jump_random2 = random_func(52, 100, true);
                                        if (ai_jump_timer % (ai_jump_fwd_frequency  + decision_random) == 0 && jump_random2 <= 33) {
                                            jump_down = true;
                                            if (ai_target.x > x) {
                                                ai_moving_right = true;
                                                ai_moving_left = false
                                            } 
                                            if (ai_target.x < x) {
                                                ai_moving_right = false;
                                                ai_moving_left = true;
                                            } 
                                        }
                                        
                                        if (ai_jump_timer % (ai_jump_up_frequency + decision_random) == 0 && jump_random2 > 33 && jump_random2 <= 66) {
                                            jump_down = true;
                                            ai_moving_right = false;
                                            ai_moving_left = false;
                                        }
                                        
                                        if (ai_jump_timer % (ai_jump_back_frequency + decision_random) == 0 && jump_random2 > 66) {
                                            jump_down = true;
                                            if (ai_target.x > x) {
                                                ai_moving_right = false;
                                                ai_moving_left = true;
                                            } 
                                            if (ai_target.x < x) {
                                                ai_moving_right = true;
                                                ai_moving_left = false;
                                            } 
                                        }
                                    }
                                    else {
                                        if (ai_jump_timer % ai_decision_time == 0) {
                                            down_hard_pressed = true;
                                        }
                                    }
                                }
                            }
                            if (standard_on_ledge()) {
                                ai_moving_right = false;
                                ai_moving_left = false;
                            }
                        }
                        else {
                            ai_moving_right = false;
                            ai_moving_left = false;
                            if (ai_target.x > x) {
                                ai_moving_right = true;
                                ai_moving_left = false
                            } 
                            if (ai_target.x < x) {
                                ai_moving_right = false;
                                ai_moving_left = true;
                            } 
                             if (x < (room_width - get_stage_data(SD_WIDTH)) / 2 || x > (room_width + get_stage_data(SD_WIDTH) / 2) && vsp > 0) {
                                jump_down = true;
                                if (x < get_stage_data(SD_X_POS)) {
                                    ai_moving_right = true;
                                    ai_moving_left = false
                                } 
                                if (x > get_stage_data(SD_X_POS)) {
                                    ai_moving_right = false;
                                    ai_moving_left = true;
                                } 
                             }
                        }
                        
                        //Attacking
                        if (ai_attack_cooldown <= 0) {
                            
                            ai_attack_timer ++;
                            decision_random = random_func(53, round(ai_attack_frequency), true);
                            if (decision_random == 0 && !committed) {
                                var decision_random2 = random_func(54, 100, true);
                                if (t_xd <= 96 && t_yd <= 64 && !free && ai_target.player != player_id.player) {
                                    next_attack = AT_EXTRA_3;
                                    
                                    if ((ai_target.x < x && spr_dir == 1) || (ai_target.x > x && spr_dir = -1)) {
                                        spr_dir = -spr_dir;
                                    }
                                    ai_attack_cooldown = 60;
                                }
                            }
                        }
                        else {
                            if (state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR)
                                ai_attack_cooldown --;
                        }
                    }
                    else {
                        ai_attack_cooldown = 60;
                        ai_moving_right = false;
                        ai_moving_left = false;
                    }
                }
                
                if (hitstun > 0) { 
                    if (spawn_hitbox) {
                        if (!instance_exists(hitbox))
                        {
                            hitbox = create_article_hitbox(AT_FSPECIAL, 1, floor(x), floor(y - 64));
                        }
                    }
                    
                    if (!free) {
                        spawn_hitbox = false
                        if (instance_exists(hitbox)) instance_destroy(hitbox);
                    }
                }
            break;
            
            case EN_EVENT.ATTACK_UPDATE:
                
            break;
            case EN_EVENT.ANIMATION:
                if (state == PS_SPAWN) {
                    sprite_index = enemy_sprite_get(spr_name, "hurt");
                    image_index += state_timer * 0.25;
                }
                if (state == PS_IDLE && (player_id.state_cat == SC_HITSTUN && player_id.state != PS_TUMBLE)) {
                    sprite_index = enemy_sprite_get(spr_name, "help");
                    image_index += state_timer * 0.3;
                }
                if (state == PS_DEAD) {
                    sprite_index = enemy_sprite_get(spr_name, "spinhurt");
                    image_index += state_timer * 0.25;
                }
            break;
            case EN_EVENT.DEATH:
                spawn_hitbox = false
                if (instance_exists(hitbox)) instance_destroy(hitbox);
                mamizou_mark_id = noone;
                standard_death()
            break;
        }
    break;
}

#define standard_on_ledge()

var off_r = !position_meet(bbox_right + 2, bbox_bottom + room_height)
var off_l = !position_meet(bbox_left - 2, bbox_bottom + room_height)

if ((off_r && hsp > 0) || (off_l && hsp < 0)) {
    return true;
}
return false;

#define standard_death() 
invincible = 2;
if hitstop > 0 {
    state_timer = 0;
} else {
    if (state_timer == 2) {
        //ai_di();
    	sound_play(sound_get("sfx_kick"))
        orig_knock += 8;
        var new_dir = kb_dir;
        if !free && new_dir > 180 && new_dir < 360 vsp = orig_knock*sin(new_dir);
        else if !free vsp = -abs(orig_knock*dsin(new_dir));
        else vsp = -orig_knock*dsin(new_dir);
        hsp = orig_knock*dcos(new_dir);
        if hsp != 0 spr_dir = -sign(hsp);
        old_hsp = hsp;
        old_vsp = vsp;
    }
    if place_meeting(x + hsp, y, asset_get("par_block")) hsp = -old_hsp*.7;
    if (!free) {
        if (old_vsp > 3 && kb_dir > 180 && kb_dir < 360) {
            vsp = -old_vsp * 0.5 - 4;
            bounced = true;
        }
        else if (old_vsp >= -1) {
            vsp = -old_vsp;
        }
    }
    old_hsp = hsp;
    old_vsp = vsp;
    if (state_timer % 12 == 0) {
        var test = spawn_hit_fx(round(x), round(y - 16),  301);
        test.depth = depth + 2;
    }
    if (state_timer > 80)
    {
    	spawn_hit_fx(round(x), round(y - 32), player_id.hfx_leaf );
    	instance_destroy(id);
    	exit;
    }
}
#define enemy_sprite_get(_name,_sprite) //Get the sprite of this article
return sprite_get(string(_name)+"_"+string(_sprite));

#define create_article_hitbox(attack, hbox_num, _x, _y)
//Use this function to easily create hitboxes that ignore the article's hit detection.
var hbox = create_hitbox(attack, hbox_num, floor(_x), floor(_y))
hbox.follower_owner = id;
return hbox;

#define place_meet(__x,__y) //get place_meeting for the usual suspects
/*return (collision_rectangle(__x-colis_width/2,__y-colis_height,__x+colis_width/2,__y,asset_get("solid_32_obj"),true,true) ||
       collision_rectangle(__x-colis_width/2,__y-colis_height,__x+colis_width/2,__y,obj_stage_article_solid,true,true) ||
       collision_rectangle(__x-colis_width/2,__y-colis_height,__x+colis_width/2,__y,asset_get("jumpthrough_32_obj"),true,true) ||
       collision_rectangle(__x-colis_width/2,__y-colis_height,__x+colis_width/2,__y,obj_stage_article_platform,true,true));*/
return (place_meet_solid(__x,__y) || 
        place_meet_plat(__x,__y));

#define position_meet(__x,__y) //get place_meeting for the usual suspects
/*return (collision_rectangle(__x-colis_width/2,__y-colis_height,__x+colis_width/2,__y,asset_get("solid_32_obj"),true,true) ||
       collision_rectangle(__x-colis_width/2,__y-colis_height,__x+colis_width/2,__y,obj_stage_article_solid,true,true) ||
       collision_rectangle(__x-colis_width/2,__y-colis_height,__x+colis_width/2,__y,asset_get("jumpthrough_32_obj"),true,true) ||
       collision_rectangle(__x-colis_width/2,__y-colis_height,__x+colis_width/2,__y,obj_stage_article_platform,true,true));;*/

return (position_meeting(__x,__y,asset_get("par_block")) || 
        position_meeting(__x,__y,asset_get("par_jumpthrough")));    
#define place_meet_solid(__x,__y) //get place_meeting for the usual suspects
/*return (collision_rectangle(__x-colis_width/2,__y-colis_height,__x+colis_width/2,__y,asset_get("solid_32_obj"),true,true) ||
       collision_rectangle(__x-colis_width/2,__y-colis_height,__x+colis_width/2,__y,obj_stage_article_solid,true,true));*/
return (place_meeting(__x,__y,asset_get("par_block"))); 
#define place_meet_plat(__x,__y) //get place_meeting for the usual suspects
/*return (collision_rectangle(__x-colis_width/2,__y-colis_height,__x+colis_width/2,__y,asset_get("jumpthrough_32_obj"),true,true) ||
       collision_rectangle(__x-colis_width/2,__y-colis_height,__x+colis_width/2,__y,obj_stage_article_platform,true,true));*/
return (place_meeting(__x,__y,asset_get("par_jumpthrough")))