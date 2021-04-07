var exists = false;
var exists_2 = false;
var exists_3 = false;

with (asset_get("obj_article1")){
    if (player_id == other.id){
        exists = true;
    }
}    

with (asset_get("obj_article2")){
    if (player_id == other.id){
        exists_2 = true;
    }
}    

with (asset_get("obj_article3")){
    if (player_id == other.id){
        exists_3 = true;
    }
}    




//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}




//non-sandbert stuff
if (attack == AT_JAB && window == 3 && window_timer == 1){
    if (was_parried){
        was_parried = false;
    }
}


//ustrong stuff
if (attack == AT_USTRONG){
    can_fast_fall = false;
    
    if (window == 3 || window == 4){
        hud_offset = 20;
    }
    
    if (window == 1){
        set_attack_value(AT_USTRONG, AG_CATEGORY, 1);
    }
    else if (window == 2){
        set_attack_value(AT_USTRONG, AG_CATEGORY, 2);
    }
    
}

//utilt hud offset
if (attack == AT_UTILT){
    if (window == 2 || window == 3){
        hud_offset = 65;
    }
}

//uair hud offset
if (attack == AT_UAIR){
    if (window == 3 || window == 4){
        hud_offset = 55;
    }
}

//dspecial
if (attack == AT_DSPECIAL){
    if (window == 2 && window_timer == 1){
        if (!exists){
            instance_create(x + (spr_dir*55),y - 0,"obj_article1");
            spawn_hit_fx( x + (spr_dir*65), y - 5, 13 );
            
        }
    }
}

var test_var = 0;

//uspecial
if (attack == AT_USPECIAL){
    if (window < 4){
        if (spr_dir == 1){
            hsp = clamp(hsp, 0, 3);
        }
        if (spr_dir == -1){
            hsp = clamp(hsp, -3, 0);
        }
    }
    
    if (window == 1){
        if (window_timer == 1){
            clear_button_buffer( PC_SPECIAL_PRESSED );
        }
    }
    
    if (window > 1){
        can_wall_jump = true;
    }
    
    if (!free){
        attack = AT_USPECIAL_GROUND;
    }
    
    if ((test_var == 1 && exists_2) && free){
        attack = AT_USPECIAL_2;
    }
    
    if (free){
        if (window == 1 && window_timer > 7 && special_down && exists_2){
            attack = AT_USPECIAL_2;
            spawn_hit_fx( x + (spr_dir*2), y - 5, 14 );
        }
    }
}

if (attack == AT_USPECIAL_2){
    gravity_speed = .6
    prat_fall_accel = .45;
    
    
    if (window == 1){
        if (window_timer == 1){
            spawn_hit_fx( x + (spr_dir*2), y - 5, 14 );
        }
    }
    
    
    if (window <= 4){
        if (spr_dir == 1){
            hsp = clamp(hsp, 0, 3);
        }
        if (spr_dir == -1){
            hsp = clamp(hsp, -3, 0);
        }
        
        if (!exists_2){
            window = 5;
            window_timer = 0;
        }
    }
    
    var thingy_var = get_window_value(AT_USPECIAL, 3, AG_WINDOW_LENGTH);
    
    if (window == 3){
        if (window_timer == thingy_var - 1){
            spawn_hit_fx( x + (spr_dir*2), y - 5, 144 );
            x = vent.x;
            y = vent.y + 15;
            window = 4;
            window_timer = 1;
            vsp = -7;
            spawn_hit_fx( x + (spr_dir*2), y - 5, 144 );
            vent.open = true;
            vent.spr_dir = spr_dir;
            sound_play(asset_get("sfx_shovel_hit_heavy1"))
        }
    }
}

if (attack == AT_USPECIAL_GROUND){
    move_cooldown[AT_USPECIAL] = 50;
    
    
    
    if (window == 2){
        if (window_timer == 1){
            if (!exists_2){
                
                
                vent = instance_create(x + (spr_dir*2),y - 0,"obj_article2");
                vent.spr_dir = spr_dir;
                spawn_hit_fx( x + (spr_dir*2), y - 5, 28 );
                
                
            }
            else{

                
                with (asset_get("obj_article2")){
                    if (player_id == other.id){
                        spawn_hit_fx( x + (spr_dir*2), y - 5, 28 );
                        die = true;
                    }
                }
                
                vent = instance_create(x + (spr_dir*2),y - 0,"obj_article2");
                vent.spr_dir = spr_dir;
                spawn_hit_fx( x + (spr_dir*2), y - 5, 28 );
                
                
            }
        }
    }
}

//nspecial
if (attack == AT_NSPECIAL){
    move_cooldown[AT_NSPECIAL] = 25;
}

//fspecial
if (attack == AT_FSPECIAL){
    
    vsp = clamp(vsp, -9999, 1.5);
    
    if (move_cooldown[AT_FSPECIAL] < 10){
        move_cooldown[AT_FSPECIAL] = 10;
    }
    
    if (window == 2){
        if (!has_rune("O")){
            if (window_timer == 1){
                if (!exists_3){
                    laser = instance_create(x + (spr_dir*2),y - 25,"obj_article3");
                    laser.spr_dir = spr_dir;
                }
                else{
                    with (obj_article3){
                        if (player_id == other.id){
                            shoot = true;
                        }
                    }
                }
            }
        }
        else{
            if (window_timer == 1){
                if (!exists_3){
                    h = false;
                    laser = instance_create(x + (spr_dir*2),y - 25,"obj_article3");
                    laser.spr_dir = spr_dir;
                    laser = instance_create(x + (spr_dir*2*-1),y - 25,"obj_article3");
                    laser.spr_dir = spr_dir*-1;
                }
                else{
                    h = true;
                    with (obj_article3){
                        if (player_id == other.id){
                            shoot = true;
                        }
                    }
                }
            }
            if (window_timer == 2 && h){
                laser = instance_create(x + (spr_dir*2),y - 25,"obj_article3");
                laser.spr_dir = spr_dir;
                laser = instance_create(x + (spr_dir*2*-1),y - 25,"obj_article3");
                laser.spr_dir = spr_dir*-1;
            }
        }
    }
}

if (attack == AT_EXTRA_2){
    can_move = false;
}

if (attack == AT_TAUNT_2){
    if (window == 1){
        if (window_timer == 1){
            sound_play(sound_get("amongus_card_denied"));
            spawn_hit_fx( x, y - 18, 301 );
        }
        if (window_timer == 399){
            if (!hitpause && !hitstop){
                take_damage( player, -1, -1 );
                spawn_hit_fx( x, y - 18, 110 );
            }
        }
    }
}







//runes
if (has_rune("C")){
    if (attack == AT_NSPECIAL){
        if (window == 1 && window_timer > 5){
            super_armor = true;
        }
        if (window == 4){
            super_armor = false;
        }
    }
}

if (has_rune("D")){
    if (attack == AT_DATTACK){
        if (has_hit){
            can_attack = true;
            can_jump = true;
            can_shield = true;
            can_special = true;
        }
    }
}




