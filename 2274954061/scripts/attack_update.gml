var pot_out = false;
var target_out = false;
var umpire_out = false;

with(asset_get("obj_article1")){
    if (player_id == other.id){
        pot_out = true;
    }
}

with(asset_get("obj_article2")){
    if (player_id == other.id){
        target_out = true;
    }
}

with(asset_get("obj_article3")){
    if (player_id == other.id){
        umpire_out = true;
    }
}




//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

if (attack == AT_NSPECIAL){
    if (window == 3){
        if (window_timer == 2 && !target_out){
            instance_create(x + (spr_dir*55),y - 45,"obj_article2");
            spawn_hit_fx( x + (spr_dir*65), y - 52, 13 );
        }
        if (window_timer == 1 && target_out){
            with (obj_article2){
                if (player_id == other.id){
                    if (state != 1){
                        spawn_hit_fx( x, y - 15, 304 );
                        explode_time = 35;
                        state = 1;
                        state_timer = 0;
                    }
                }
            }
        }
    }
}

if (attack == AT_FSPECIAL){
    if (window == 2){
        if (window_timer == 2 && !umpire_out){
            instance_create(x + (spr_dir*25),y - 15,"obj_article3");
            spawn_hit_fx( x + (spr_dir*35), y - 25, 13 );
        }
        if (window_timer == 1 && umpire_out){
            set_num_hitboxes(AT_FSPECIAL, 1);
        }
    }
}

if (attack == AT_USPECIAL){
    if (window == 1 && window_timer == 1){
        set_window_value(AT_USPECIAL, 4, AG_WINDOW_TYPE, 7);
    }
    if (window == 2){
        
        if (window_timer == 1 && !hitpause){
            spawn_hit_fx( x + (spr_dir*0), y - 25, 21 );
        }
        
        can_wall_jump = true;
        
        if (window_timer == 1 && !hitpause){
            vsp = -11;
        }
        
        if (!has_rune("H")){ //the non-rune thing
            
            if (has_hit && window_timer <= 2){ //the normal thing
                set_window_value(AT_USPECIAL, 4, AG_WINDOW_TYPE, 1);
                move_cooldown[AT_USPECIAL] = 99999;
            }
            
        }
        else{ //the rune thing
        
            if (has_hit){
                set_window_value(AT_USPECIAL, 4, AG_WINDOW_TYPE, 1);
            }
            
        }
    }
    if (window == 3){
        
        if (!free){
            window = 4;
            window_timer = 12;
        }
        
        if (has_rune("C")){ //another rune thing
            if (has_hit){
                set_window_value(AT_USPECIAL, 4, AG_WINDOW_TYPE, 1);
            }
        }
        
        can_wall_jump = true;
    }
    if (window == 4){
        if (!special_down){ //tap
            set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 4);
            set_window_value(AT_USPECIAL, 4, AG_WINDOW_TYPE, 7);
            if (window_timer == 2 && !hitpause){
                spawn_hit_fx( x + (spr_dir*0), y - 25, 20 );
            }
        }
        else{ //hold
            set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 5);
            set_window_value(AT_USPECIAL, 4, AG_WINDOW_TYPE, 1);
            if (window_timer == 2 && !hitpause){
                spawn_hit_fx( x + (spr_dir*0), y - 25, 21 );
            }
        }
        
        can_wall_jump = true;
    }
    if (window == 5){
        can_wall_jump = true;
    }
    if (window > 2){
        if (!free){
            window = 5;
            window_timer = 100;
            can_wall_jump = true;
            sound_play(asset_get("sfx_blow_heavy1"));
        }
    }
}

if (attack == AT_JAB){
    if (was_parried){
        was_parried = false;
    }
    if (has_hit){
        can_jump = true;
    }
}

if (attack == AT_USTRONG){
    if (window > 2 && window < 5){
        hud_offset = 60;
    }
}





var idk_what_to_call_this_lol = 0;

if (has_rune("K")){
    var idk_what_to_call_this_lol = 15;
}

if (!has_rune("O")){ //normal

    if (attack == AT_DSPECIAL){
        if (window == 3){
            if (window_timer == 2 && !pot_out){
                instance_create(x + (spr_dir*45),y - 5,"obj_article1");
                spawn_hit_fx( x + (spr_dir*55), y - 12, 13 );
            }
            if (pot_out && window_timer == 1){
                move_cooldown[AT_DSPECIAL] = 60 - idk_what_to_call_this_lol;
            }
        }
    } 

}
else{ //rune
    
    if (attack == AT_DSPECIAL){
        if (window == 3){
            if (window_timer == 2 && !pot_out){
                var instance_one = instance_create(x + (spr_dir*45),y - 5,"obj_article1");
                var instance_two = instance_create(x - (spr_dir*45),y - 5,"obj_article1");
                var instance_three = instance_create(x + (spr_dir*0),y - 5,"obj_article1");
                instance_one.delay = 0;
                instance_two.delay = 20;
                instance_three.delay = 10;
                spawn_hit_fx( x + (spr_dir*55), y - 12, 13 );
            }
            if (pot_out && window_timer == 1){
                move_cooldown[AT_DSPECIAL] = 60 - idk_what_to_call_this_lol;
            }
        }
    } 
}

//up air stuff
if (attack == AT_UAIR){
    if (window == 1){
        if (window_timer == 8){
            vsp = clamp(vsp, -99, 0);
        }
    }
}

//holdable taunt
if (attack == AT_TAUNT){
    if (window == 4){
        if (taunt_down){
            window_timer = 1;
        }
    }
}






//runes
if (has_rune("E")){
    if (attack == AT_FSTRONG){
        if (window <= 4){
            super_armor = true;
        }
        else{
            super_armor = false;
        }
    }
    else if (attack == AT_DSTRONG){
        if (window <= 3){
            super_armor = true;
        }
        else{
            super_armor = false;
        }
    }
    else if (attack == AT_USTRONG){
        if (window <= 3){
            super_armor = true;
        }
        else{
            super_armor = false;
        }
    }
}
