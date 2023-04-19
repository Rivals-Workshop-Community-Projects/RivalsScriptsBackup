//ATTACK UPDATE

if (attack == AT_NSPECIAL || attack == AT_FSPECIAL|| attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}


if (attack == AT_NSPECIAL && free) { //Stop the players horizontal momentum when using these specials
    vsp -= vsp*0.05;

}

if ((attack == AT_FSPECIAL && window < 10 || attack == AT_USPECIAL && window < 4) && in_angelfield){
    
    if (specialEmpowered == 0){
        specialEmpowered = 1;
        
         with (asset_get("obj_article2")){ //Consumed the field upon empowering specials
            if (player_id == other.id){
                state = 3;
                state_timer = 0;
                sprite_index = sprite_get("field_consume");
                player_id.field_consumed = 1;
                player_id.field_x = x;
                player_id.field_y = y;
            }
        }
        
    }
}


if (attack == AT_FTILT){
    
    if (window == 3 && window_timer == 7 && !hitpause){
        window = 6;
        window_timer = 10;
    }
    
}

if (attack == AT_FSPECIAL){
    
   if (window != 11){
       can_fast_fall = 0;
   } else if (window == 11 && window_timer == 1 && !hitpause){
       can_fast_fall = 1;
   }
   
   if (window == 11){
       can_wall_jump = true;
   }
   
   if (window < 9 && hide_fspecial){
        hide_fspecial = 0;
   } else if ( window > 9 && !hide_fspecial) {
        hide_fspecial = 1;
       
   }
   
    if ((window >= 1 && window <= 9) && !hitpause){ //Sparkly trail
        
        if (random_func(0,2, true) > 0){
                if (state_timer%8 == 0){
                spawn_hit_fx(x,y-32,sparkle1);
            }
        } else {
                if (state_timer%8 == 0){
                spawn_hit_fx(x,y-32,sparkle2);
            }
        }
        
    }
   
   
    if (free && window < 10){
        vsp -= vsp*1;
    }
    
    if (window == 10 && window_timer == 3 && !hitpause){
        
        if (specialEmpowered == 1){
            specialEmpowered = -1; //-1 means that it is currently being used and will become false faster finished
            
            if (up_down){
                attack_end();
                //hurtbox_spr = sprite_get("uspecial_hurt");
                attack = AT_USPECIAL;
                window = 1;
                window_timer = 1; 
            } else if (shield_down) {
                specialEmpowered = 0;
            } else {
                attack_end();
                attack = AT_FSPECIAL;
                window = 1;
                window_timer = 1;
            }
            
        } else if (specialEmpowered == -1){ //If currently using the additioanl special, stop
            specialEmpowered = 0;
        }
        
    }
    
    //Hitbox Creation
    if (window == 10 && window_timer == 1 && !hitpause){
        if (specialEmpowered == 1){
            create_hitbox(AT_FSPECIAL, 10, x,y);
        } else {
            create_hitbox(AT_FSPECIAL, 9, x,y);
        }
    }
    

    if (!moved_up){ //Moves Sora up slightly if she collides with the side of the stage during Fspecial
        if (free && place_meeting(x+hsp,y,asset_get("par_block"))){
            for (var i = 0; i < 24; i++){
                if (!place_meeting(x+hsp,y-(i+1),asset_get("par_block"))){
                    y -= i;
                    moved_up = true;
                    break;
                }
            }
        }
    }

}

if (attack == AT_USPECIAL){
    
    if (window == 2 && !hitpause){ //Sparkly trail
        
        if (random_func(0,2, true) > 0){
                if (state_timer%7 == 0){
                spawn_hit_fx(x,y,sparkle1);
            }
        } else {
                if (state_timer%7 == 0){
                spawn_hit_fx(x,y,sparkle2);
            }
        }
        
    }
    
    if (window < 4){
        can_fast_fall = 0;
    } else if (window == 4 && window_timer == 1 && !hitpause){
        can_fast_fall = 1;
    }
    
    if (window == 5){
       can_wall_jump = true;
   }
    
        if (window == 4 && window_timer == 3 && !hitpause){
            if (specialEmpowered == 1){
                specialEmpowered = -1;
                
                if ((left_down && spr_dir == -1) || (right_down && spr_dir == 1)){
                    attack_end();
                    attack = AT_FSPECIAL;
                    window = 1;
                    window_timer = 1;
                } else if (shield_down){
                    specialEmpowered = 0;
                } else {
                    attack_end();
                    window = 1;
                    window_timer = 1;
                }
                
            } else if (specialEmpowered == -1){
                specialEmpowered = 0;
            }
        }
        
    //Hitbox Creation
    if (window == 4 && window_timer == 1 && !hitpause){
        if (specialEmpowered == 1){
            create_hitbox(AT_USPECIAL, 5, x,y);
        } else {
            create_hitbox(AT_USPECIAL, 4, x,y);
        }
    }

}


if (attack == AT_DSPECIAL) {
    
    if (free && (window == 3 || window == 4)){ 
        vsp -= vsp*1;
    }
    
    if ((window >= 2 && window <= 4) && !hitpause){ //Sparkly trail
        
        if (random_func(0,2, true) > 0){
                if (state_timer%6 == 0){
                spawn_hit_fx(x,y-24,sparkle1);
            }
        } else {
                if (state_timer%6 == 0){
                spawn_hit_fx(x,y-24,sparkle2);
            }
        }
        
    }
    
    
    if (window == 1 && window_timer == 1 && !hitpause){ //Invincible on startup
        move_cooldown[AT_DSPECIAL] = 90;
        invincible = 1;
        invince_time = 9;
    }
    
    if (window < 6){ //Cannot fastfall until end of the move
        can_fast_fall = 0;
    } else {
        can_fast_fall = 1;
    }
    
    
    if (window == 3 && in_angelfield && !fieldRelocate){ //Field Relocating mechanic
        
        fieldRelocate = 1;
        
        with (asset_get("obj_article2")){
            if (player_id == other.id){
                state = 3;
                state_timer = 0;
                sprite_index = sprite_get("field_consume");
                player_id.field_consumed = 1;
                player_id.field_x = x;
                player_id.field_y = y;
            }
        }
    }
    
    if (window == 5 && window_timer == 1 && !hitpause){
        if (fieldRelocate){
            fieldRelocate = 0;
            
            var field = instance_create(x+64*spr_dir, y-32,"obj_article2");
            field.sprite_index = sprite_get("field_spawn");
        }
    }
}


if (attack == AT_NSPECIAL){
    
    if (window == 2 && window_timer == 1 && !hitpause){
        var swordspin = instance_create(x+16*spr_dir, y-32,"obj_article1");
        swordspin.sprite_index = sprite_get("nspecial_proj");
        swordspin.dir = spr_dir;
        swordspin.depth = 3;
        swordspin.proj_speed = 11 + (abs(hsp)*.5);
        move_cooldown[AT_NSPECIAL] = 99999999;
    }
    
}

//sfx

if (attack == AT_DSTRONG && window == 2 && window_timer == 1 && !hitpause){
    sound_play(asset_get("sfx_spin"));
}