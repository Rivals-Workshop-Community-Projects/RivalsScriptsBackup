//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}



//e
if (attack == AT_BAIR){
    if (window == 2){
        if (window_timer == 6){
            hsp = -7*spr_dir;
        }
    }
}

if (attack == AT_UTILT){
    if (window >= 2 && window < 5){
        hud_offset = 35;
    }
}

if (attack == AT_DSPECIAL){
    if (window == 1){
        cancelled = false;
    }
    if (window == 4){
        if (!free){
            destroy_hitboxes();
            var idk = false;
            if (!was_parried){
                with (pHitBox){
                    if (player == other.player){
                        if ((attack == AT_DSPECIAL && hbox_num == 2) || player_id.star_cooldown > 0){
                            var idk = true;
                        }
                    }
                }
            }
            
            if (has_rune("N")){
                var idk = false;
            }

            if (!hitstop && !hitpause && !was_parried && !idk){
                sound_play(sound_get("go"));
                spawn_hit_fx( x + 55*spr_dir, y - 25, 21 );
                var bruh = create_hitbox(AT_DSPECIAL, 2, x + 55*spr_dir, y - 25);
                bruh.proj_angle = 90;
                //bruh.can_hit_self = true;
                spawn_hit_fx( x - 55*spr_dir, y - 25, 21 );
                var bruh_two = create_hitbox(AT_DSPECIAL, 2, x - 55*spr_dir, y - 25);
                //bruh_two.can_hit_self = true;
            }
            window = 5;
            window_timer = 0;
        }
        
        if ((special_pressed || jump_pressed || attack_pressed) && free && window_timer > 3 && !was_parried){
            spawn_hit_fx( x, y, 15 );
            cancelled = true;
            move_cooldown[AT_DSPECIAL] = 30;
            destroy_hitboxes();
            window = 7;
            window_timer = 0;
        }
    }
    if (window == 8){
        if (window_timer == 1){
            if (!hitstop && !hitpause){
                vsp = -9;
            }
        }
    }
    //if (window >= 5 && !cancelled && window_timer > 2 && has_hit){
    //    if (special_pressed || jump_pressed || attack_pressed){
    //        cancelled = true;
    //        window = 7;
    //        window_timer = 0;
    //    }
    //}
    if (window >= 5){
        move_cooldown[AT_DSPECIAL] = 30;
    }
    if (window > 2 && window < 7){
        soft_armor = rock_armor;
    }
    else{
        soft_armor = 0;
    }
}

if (attack == AT_DATTACK){
    if (window > 2 && window < 5){
        soft_armor = rock_armor;
    }
    else{
        soft_armor = 0;
    }
}

if (attack == AT_JAB && was_parried){
    was_parried = false;
}

if (attack == AT_FSPECIAL){
    
    if (window == 1){
        set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 4);
        can_fast_fall = false;
        bruh = noone;
        attack_end();
    }
    
    if (window == 2){
        can_move = false;
    }
    else{
        can_move = true;
    }
    
    if (window == 3){
        if (window_timer == 1){
            hsp = fspec_speed*spr_dir;
        }
    }
    
    if (window > 2){
        can_wall_jump = true;
    }

}

if (attack == AT_FSPECIAL_2){
    
    var thingy_variable = get_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_LENGTH);
    
    if (window == 2 || window == 3){
        if (!free && window_timer < thingy_variable){
            sound_play(asset_get("sfx_land_heavy"));
            window = 3;
            window_timer = thingy_variable;
        }
        
        if (free && y >= room_height - 20){
            has_walljump = true;
            window = 3;
            window_timer = thingy_variable + 1;
            vsp = 0;
        }
    }
    
    if (window < 4){
        invincible = true;
        if (should_clamp){
            hsp = clamp(hsp, -fspec_speed_max, fspec_speed_max);
        }
        else{
            if (right_down){
                hsp = 7;
            }
            if (left_down){
                hsp = -7;
            }
        }
        if (has_hit_player){
            bruh = hit_player_obj;
            if (!hitpause && hit_player_obj.super_armor == false && hit_player_obj.soft_armor <= 0 && hit_player_obj.wrap_time > 0 && hit_player_obj.state != PS_RESPAWN && hit_player_obj.state != PS_DEAD){
                bruh.invincible = true;
                bruh.invince_timer = 50;
                //this part doesn't work lol
                bruh.spr_dir = -spr_dir;
                bruh.hsp = lerp(hit_player_obj.hsp,hsp,1);
                bruh.vsp = lerp(hit_player_obj.vsp,vsp,1);
                bruh.x = lerp(hit_player_obj.x,x + 25*spr_dir,0.5);
                bruh.y = lerp(hit_player_obj.y,y + 2,0.5);
            }
        }
    }
    else{
        invincible = false;
    }
    
    if (window == 4){
        if (window_timer == 1){
            vsp = 0;
        }
        if (!was_parried){
            with (pHitBox){
                if (player == other.player){
                    if (attack == AT_DSPECIAL && hbox_num == 2){
                        var idk = true;
                    }
                }
            }
        }
        
        if (has_rune("N")){
            var idk = false;
        }
            
        if (window_timer == 2 && !was_parried && !idk && !hitpause && !hitstop){
            spawn_hit_fx( x + 55*spr_dir, y - 25, 21 );
            sound_play(sound_get("go"));
            var bruh = create_hitbox(AT_DSPECIAL, 2, x + 55*spr_dir, y - 25);
            bruh.proj_angle = 90;
        }
    }
    
    if (window == 5){
        if (window_timer == 1){
            vsp = -9;
            bruh = noone;
            move_cooldown[AT_FSPECIAL] = fspec_on_hit_cooldown;
        }
    }
}

if (attack == AT_USTRONG){
    if (window > 2 && window < 5){
        hud_offset = 45;
    }
}

if (attack == AT_NSPECIAL){
    if (window == 2){
        if (window_timer > nspecial_thing){
            super_armor = true;
        }
    }
    else{
        super_armor = false;
    }
    
    if (free){
        if (window == 3 && window_timer == 1){
            if (!hitstop && !hitpause){
                vsp = -6;
            }
        }
    }
}

if (attack == AT_USPECIAL){
    if (window > 2){
        can_wall_jump = true;
        if (spr_dir == 1){
            hsp = clamp(hsp, -uspec_speed_max, uspec_speed_max);
        }
        else{
            hsp = clamp(hsp, -uspec_speed_max, uspec_speed_max);
        }
    }
    if (window > 4){
        can_fast_fall = true;
    }
    else{
        can_fast_fall = false;
    }
}





//runes
if (has_rune("D")){
    if (attack == AT_DTILT || attack == AT_DATTACK){
        if (has_hit){
            can_jump = true;
        }
    }
}

if (has_rune("I")){
    if (attack == AT_TAUNT && thingy_type == 1){
        if (window == 1){
            
            if (window_timer == 1){
                bababooey = false;
            }
            
            if (window_timer == 2){
                if (!was_parried){ 
                    with (pHitBox){
                        if (player == other.player){
                            if (attack == AT_DSPECIAL && hbox_num == 2){
                                var idk = true;
                                other.bababooey = true;
                            }
                        }
                    }
                }
            }
            
        } 
        
        if (window == 3){
                
            if (!was_parried && !bababooey && window_timer == 2){
                spawn_hit_fx( x + 55*spr_dir, y - 35, 21 );
                sound_stop(sound_get("go"));
                sound_play(sound_get("go"));
                var bruh = create_hitbox(AT_DSPECIAL, 2, x + 55*spr_dir, y - 35);
                bruh.proj_angle = 90;
            }
            
            if (!was_parried && !bababooey && window_timer == 5){
                spawn_hit_fx( x - 55*spr_dir, y - 35, 21 );
                sound_stop(sound_get("go"));
                sound_play(sound_get("go"));
                var bruh = create_hitbox(AT_DSPECIAL, 2, x - 55*spr_dir, y - 35);
                bruh.proj_angle = 110;
            }
            
            if (!was_parried && !bababooey && window_timer == 8){
                spawn_hit_fx( x + 0*spr_dir, y - 70, 21 );
                sound_stop(sound_get("go"));
                sound_play(sound_get("go"));
                var bruh = create_hitbox(AT_DSPECIAL, 2, x + 0*spr_dir, y - 70);
                bruh.proj_angle = 50;
            }
            
            if (!was_parried && !bababooey && window_timer == 11){
                spawn_hit_fx( x + 85*spr_dir, y - 25, 21 );
                sound_stop(sound_get("go"));
                sound_play(sound_get("go"));
                var bruh = create_hitbox(AT_DSPECIAL, 2, x + 85*spr_dir, y - 25);
                bruh.proj_angle = 45;
            }
            
            if (!was_parried && !bababooey && window_timer == 14){
                spawn_hit_fx( x - 85*spr_dir, y - 25, 21 );
                sound_stop(sound_get("go"));
                sound_play(sound_get("go"));
                var bruh = create_hitbox(AT_DSPECIAL, 2, x - 85*spr_dir, y - 25);
                bruh.proj_angle = 35;
            }
            
        }
    }
    if (attack == AT_TAUNT){
        if (window == 2){
            if (window_timer == 1){
                if (thingy_type == 0){
                    with (oPlayer){
                        if (player != other.player){
                            spr_dir = spr_dir*-1;
                            hsp = hsp*-1;
                        }
                    }
                }
            }
        }
        if (window == 5){
            if (window_timer == 1){
                if (thingy_type == 0){
                    with (oPlayer){
                        if (player != other.player){
                            spr_dir = spr_dir*-1;
                            hsp = hsp*-1;
                        }
                    }
                }
            }
        }
    }
}

var thingy_variable_2 = get_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH);
if (has_rune("H")){
    if (attack == AT_NSPECIAL){
        if (window == 2){
            if (window_timer == thingy_variable_2 - 1){
                var bruh = create_hitbox(AT_DSPECIAL, 2, x + 55*spr_dir, y - 25);
                bruh.proj_angle = 90;
            }
        }
    }
}