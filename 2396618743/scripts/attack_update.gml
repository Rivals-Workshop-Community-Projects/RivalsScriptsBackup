//ATTACK UPDATE

//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}


if ((attack == AT_FSPECIAL || attack == AT_NSPECIAL || attack == AT_NSPECIAL_2 || attack == AT_FAIR || attack == AT_DSPECIAL) && free) { //Stop the players horizontal momentum when using these specials
    hsp -= hsp*0.05;
    can_fast_fall = false;
    
    if (attack == AT_NSPECIAL || attack == AT_NSPECIAL_2) vsp -= vsp*.1;
    
}

if ((attack == AT_DTILT || (attack == AT_JAB && window > 6) || attack == AT_UTILT || attack == AT_FTILT || (attack == AT_DATTACK && window > 2)) && has_hit){ // Sword/physical attacks can be canceled into specials

    can_special = true;
    
}


if (attack == AT_FSPECIAL){
    
    if (window == 1 && window_timer == 16 && !hitpause){
        if (chargeSpent == 1){
            
            var fira = create_hitbox(AT_FSPECIAL, 2, x+32*spr_dir, y- 40);
            
        } else {
            var fira = create_hitbox(AT_FSPECIAL, 1, x+32*spr_dir, y- 40);

        }
        
        
    }
    
    if (window == 3 && window_timer == 15){
        move_cooldown[AT_FSPECIAL] = 45;
        chargeSpent = 0;
    }
    
}

if (attack == AT_DSPECIAL){

    
    if (window == 1){
        if (state_timer%8 == 0 && free){
            vsp = vsp - 1;
        }
        
        
        if (window_timer == 9){
            if (special_down && dspecialcharge < 16){
                window_timer = 8;
                dspecialcharge++;
            }
        }
        
        if (window_timer == 14){
            var drain = create_hitbox(AT_DSPECIAL, 1, x+(dspecialcharge*8+64)*spr_dir, y- 40);
            dspecialcharge = 0;
            move_cooldown[AT_DSPECIAL] = 60;
        }
    }
    
    if (window == 3){
        
    }
    
}

if (attack == AT_DAIR){
    hsp -= hsp*0.05;
    if (window == 1 && window_timer == 12 && !hitpause){
        if (chargeSpent){
            var graviga = instance_create(x-8*spr_dir,y,"obj_article3");
            graviga.sprite_index = sprite_get("graviga_small");
        } else {
            var graviga = instance_create(x-8*spr_dir,y,"obj_article3");
            graviga.sprite_index = sprite_get("graviga_small");
        }
        
        graviga.charged = chargeSpent;
        graviga.depth = 3;
        
        move_cooldown[AT_DAIR] = 90;
    }
    
    if (window == 3 && window_timer == 12){
        chargeSpent = 0;
    }
}


if (attack == AT_NSPECIAL){
    if (window == 1 && window_timer == 20 && !hitpause){
        if (chargeSpent){ //create big ice shard
            var iceshard = instance_create(x+48*spr_dir,y-32,"obj_article1");
            iceshard.sprite_index = sprite_get("iceshard_big_appear");
            
        } else { //create small ice shard
            var iceshard = instance_create(x+32*spr_dir,y-32,"obj_article1");
            iceshard.sprite_index = sprite_get("iceshard_small_appear");
            
        }
        iceshard.charged = chargeSpent;
        iceshard.depth = 3;
        iceshard.dir = spr_dir;
        //iceshard.spr_dir = spr_dir;
        
        if (spr_dir < 0){
            iceshard.image_angle -= 180;
            iceshard.image_yscale = -1;
        }
        
    }
    
    if (window == 3 && window_timer == 15){
        move_cooldown[AT_NSPECIAL] = 60;
        chargeSpent = 0;
    }
}

if (attack == AT_NSPECIAL_2) {
    if (window == 1 && window_timer == 12){
        with (asset_get("obj_article1")){
            if (player_id == other.id){
                if (state == 1 || state == 0){
                    state = 2;
                    state_timer = 0;
                    player_id.move_cooldown[AT_NSPECIAL_2] = 9999;
                }
                
            }
        }
    }
}





if (attack == AT_FSTRONG){
    
    if (chargeSpent){
        if (window == 1 && window_timer == 1) {
            set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrong_big"));
        }
        
        
        if (window == 2 && window_timer == 12 && !hitpause){
            create_hitbox(AT_FSTRONG, 1, x, y);
            create_hitbox(AT_FSTRONG, 2, x, y);
        }
        
        if (window == 3 && window_timer == 4 && !hitpause){
            create_hitbox(AT_FSTRONG, 3, x, y);
            create_hitbox(AT_FSTRONG, 4, x, y);
        }
        
        
    } else {
        if (window == 1 && window_timer == 1) {
            set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrong_small"));
        }
        
        
        
        if (window == 2 && window_timer == 12 && !hitpause){
            create_hitbox(AT_FSTRONG, 5, x, y);
        }
        
        if (window == 3 && window_timer == 4 && !hitpause){
            create_hitbox(AT_FSTRONG, 6, x, y);
        }
        
        
    }
    
    if (window == 4 && window_timer == 24){
        chargeSpent = 0;
    
    }
}


if (attack == AT_USTRONG){
    
    if (chargeSpent){
        
        if (window == 1 && window_timer == 1) {
            set_attack_value(AT_USTRONG, AG_SPRITE, sprite_get("ustrong_big"));
        }
        
        
        if (window == 2 && !hitpause){
            if (window_timer == 16){
                create_hitbox(AT_USTRONG, 1, x, y);
                create_hitbox(AT_USTRONG, 2, x, y);
                create_hitbox(AT_USTRONG, 5, x, y);
            } 
        }   
    } else {
        
        if (window == 1 && window_timer == 1) {
            set_attack_value(AT_USTRONG, AG_SPRITE, sprite_get("ustrong_small"));
        }
        
        
        
       if (window == 2 && !hitpause){
            if (window_timer == 16){
                create_hitbox(AT_USTRONG, 3, x, y);
                create_hitbox(AT_USTRONG, 4, x, y);
                create_hitbox(AT_USTRONG, 6, x, y);
            }
        }
        
        
    }
    
    if (window == 4 && window_timer == 20){
        chargeSpent = 0;
      
    }
}



if (attack == AT_BAIR){
    
    if (window <= 7 && has_hit_player && hit_player_obj.super_armor == false){
        
        /*if (hit_player_obj.x > (x-60*spr_dir)) {
            hit_player_obj.x -= (hit_player_obj.x - (x-60*spr_dir))/20;
        }
        if (hit_player_obj.x < (x-60*spr_dir)) {
            hit_player_obj.x += ( (x-60*spr_dir) - hit_player_obj.x)/20;
        }
        
        if (hit_player_obj.y > y) {
            hit_player_obj.y -= (hit_player_obj.y - y)/2;
        }
        if (hit_player_obj.y < y) {
            hit_player_obj.y += (y - hit_player_obj.y)/2;
        }*/
        
    }
    
    if (chargeSpent){
        set_attack_value(AT_BAIR, AG_SPRITE, sprite_get("bair_big"));
        
        if (window == 1 && window_timer == 6 && !hitpause){
            create_hitbox(AT_BAIR, 1, x, y);
        }
        
        if (window == 2 && window_timer == 3 && !hitpause){
            create_hitbox(AT_BAIR, 1, x, y);
        }
        
        if (window == 2 && window_timer == 6 && !hitpause){
            create_hitbox(AT_BAIR, 1, x, y);
        }
        
        if (window == 2 && window_timer == 9 && !hitpause){
            create_hitbox(AT_BAIR, 2, x, y);
        }
        
    } else {
        set_attack_value(AT_BAIR, AG_SPRITE, sprite_get("bair_small"));
        
        
        if (window == 1 && window_timer == 6 && !hitpause){
            create_hitbox(AT_BAIR, 3, x, y);
        }
        
        if (window == 2 && window_timer == 3 && !hitpause){
            create_hitbox(AT_BAIR, 3, x, y);
        }
        
        if (window == 2 && window_timer == 6 && !hitpause){
            create_hitbox(AT_BAIR, 3, x, y);
        }
        
        if (window == 2 && window_timer == 9 && !hitpause){
            create_hitbox(AT_BAIR, 4, x, y);
        }
        
        
    }
    
    if (window == 3 && window_timer == 9){
        chargeSpent = 0;
    }
}

if (attack == AT_UAIR){
    
    if (chargeSpent){
        
        if (window == 1 && window_timer == 1){
            set_attack_value(AT_UAIR, AG_SPRITE, sprite_get("uair_big"));
        }
        
        if (window == 1 && window_timer == 12 && !hitpause){
                create_hitbox(AT_UAIR, 1, x, y);
                create_hitbox(AT_UAIR, 4, x, y);
            }
            
    } else {
        
        if (window == 1 && window_timer == 1){
            set_attack_value(AT_UAIR, AG_SPRITE, sprite_get("uair_small"));
        }
        
        if (window == 1 && window_timer == 12 && !hitpause){
                create_hitbox(AT_UAIR, 2, x, y);
                create_hitbox(AT_UAIR, 3, x, y);
                create_hitbox(AT_UAIR, 5, x, y);
    
        }
    } 
    
    if (window == 3 && window_timer == 16){
        chargeSpent = 0;
    }
}


if (attack == AT_FAIR){
    
    if (chargeSpent){
        
        if (window == 1 && window_timer == 1){
            sound_play(asset_get("sfx_abyss_explosion_start"));
            set_attack_value(AT_FAIR, AG_SPRITE, sprite_get("fair_big"));
        }
        
        if (window == 1 && window_timer == 18 && !hitpause){
                create_hitbox(AT_FAIR, 1, x, y);
                create_hitbox(AT_FAIR, 3, x, y);
            }
            
    } else {
        
        if (window == 1 && window_timer == 1){
            sound_play(asset_get("sfx_abyss_explosion_start"));
            set_attack_value(AT_FAIR, AG_SPRITE, sprite_get("fair_small"));
        }
        
        if (window == 1 && window_timer == 18 && !hitpause){
                create_hitbox(AT_FAIR, 2, x, y);
                create_hitbox(AT_FAIR, 4, x, y);
    
        }
    }
    
    if (window == 3 && window_timer == 16){
        chargeSpent = 0;
    }
}


if (attack == AT_DSTRONG){
    
    if (window == 1 && window_timer == 1){
        
        if (chargeSpent){
            set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("dstrong_big"));
        
        } else {
            set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("dstrong_small"));
        
        }
        
    }
    
    if (chargeSpent){
        
        if (window == 1 && window_timer == 1){
            set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("dstrong_big"));
        }
        
        if (window == 2 && window_timer == 8 && !hitpause){
                create_hitbox(AT_DSTRONG, 1, x, y);
            }
            
    } else {
        
        if (window == 1 && window_timer == 1){
            set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("dstrong_small"));
        }
        
        if (window == 2 && window_timer == 8 && !hitpause){
                create_hitbox(AT_DSTRONG, 2, x, y);
        }
    }
    
    if (window == 4 && window_timer == 19){
        chargeSpent = 0;
    }
}

if (attack == AT_JAB && !hitpause){ //I need this because it will play the sound queue even when jab 2 is canceled when using the windows
    if (window == 4 && window_timer == 1){
        sound_play(sound_get("terra_slash2"));
    }
}


if (attack == AT_USPECIAL && !hitpause){
    
    can_wall_jump = true;
    
    //Handle charge
    
    if (chargeSpent){
        set_attack_value(AT_USPECIAL, AG_SPRITE, sprite_get("uspecial_big"));
        set_attack_value(AT_USPECIAL, AG_AIR_SPRITE, sprite_get("uspecial_big"));
        
        if ((window == 2) && ( window_timer == 5 || window_timer == 10 || window_timer == 15)){
            create_hitbox(AT_USPECIAL, 1, x, y);
        } else if (window == 1 && window_timer == 6){
            create_hitbox(AT_USPECIAL, 1, x, y);
        } else if (window == 3 && window_timer == 1){
            create_hitbox(AT_USPECIAL, 2, x, y);
        }
        
    } else {
        set_attack_value(AT_USPECIAL, AG_SPRITE, sprite_get("uspecial_small"));
        set_attack_value(AT_USPECIAL, AG_AIR_SPRITE, sprite_get("uspecial_small"));
        
        if ((window == 2) && (window_timer == 0 || window_timer == 5 || window_timer == 10 || window_timer == 15)){
            create_hitbox(AT_USPECIAL, 3, x, y);
        } else if (window == 1 && window_timer == 6){
            create_hitbox(AT_USPECIAL, 3, x, y);
        } else if (window == 3 && window_timer == 1){
            create_hitbox(AT_USPECIAL, 4, x, y);
        }
        
    }
    
    if (window == 4 && window_timer == 12){
        
        if (chargeSpent){
            state = PS_IDLE_AIR;
            escapedPratfall = 1;
            move_cooldown[AT_USPECIAL] = 9999;
        }
        
        uspecialtime = 0;
        uspecial_speed = 0;
        tornadoAnimTimer = 0;
        tornadoXposition = 0;
        chargeSpent = 0;
        
        
    }
    
    //Handle movement
    
    if (shield_pressed && window < 4){ //cancel out of up B
        uspecialtime = 0;
        window = 4;
        window_timer = 0;
    }
    
    if (window < 2 ){
        if (window_timer == 5 ){
            uspecialtime = 30;
        }
        
    } else if (uspecialtime){
        
        uspecialtime--;
        
        uspecial_speed = max(uspecial_speed - 0.5-(chargeSpent*0.5), -5-(chargeSpent*3));
        
        vsp = uspecial_speed;
        hsp = clamp(hsp+(right_down - left_down)*0.1, -air_max_speed, air_max_speed);
        
        
        if (window == 2 && window_timer == 15){
            window_timer = 0;
        }
    } else {
        if (window == 2){
            window = 3;
            window_timer = 0;
        }
        
    }
    
}

//Old Ftilt
/* 
if (attack == AT_FTILT){
    
    
    if (window == 2 && window_timer == 1 && !hitpause){
        if (chargeSpent){ //charged variant, will create blizzard and thunder later
            
            if (attack_down == true){
                var fire = create_hitbox(AT_FTILT, 1, x+176*spr_dir, y- 40);
                ftilt_timer = 0;
                ftilt_x = fire.x;
                ftilt_y = fire.y;
                
                
            } else {
                var fire = create_hitbox(AT_FTILT, 1, x+64*spr_dir, y- 40);
                ftilt_timer = 0;
                ftilt_x = fire.x;
                ftilt_y = fire.y;
        
            }
            
        } else { //uncharged
            
            if (attack_down == true){
                var fire = create_hitbox(AT_FTILT, 1, x+176*spr_dir, y- 40);
                ftilt_timer = 0;
                ftilt_x = fire.x;
                ftilt_y = fire.y;
                
            } else {
                var fire = create_hitbox(AT_FTILT, 1, x+64*spr_dir, y- 40);
                ftilt_timer = 0;
                ftilt_x = fire.x;
                ftilt_y = fire.y;
            }
            
        }
        
        ftilt_extra_timer = 0;
        move_cooldown[AT_FTILT] = 90;
        
    }
    
    if (window == 3 && window_timer == 14){
        chargeSpent = 0;
    }
}*/


//Sandbert Remove later
/*
if (attack == AT_USPECIAL){
    if (window == 1 && window_timer == 1){
        times_through = 0;
    }
    if (window == 2){
        if (window_timer == get_window_value(attack, 2, AG_WINDOW_LENGTH)){
            if (times_through < 10){
                times_through++;
                window_timer = 0;
            }
        }
        if (!joy_pad_idle){
            hsp += lengthdir_x(1, joy_dir);
            vsp += lengthdir_y(1, joy_dir);
        } else {
            hsp *= .6;
            vsp *= .6;
        }
        var fly_dir = point_direction(0,0,hsp,vsp);
        var fly_dist = point_distance(0,0,hsp,vsp);
        var max_speed = 12;
        if (fly_dist > max_speed){
            hsp = lengthdir_x(max_speed, fly_dir);
            vsp = lengthdir_y(max_speed, fly_dir);
        }
        if (special_pressed && times_through > 0){
            window = 4;
            window_timer = 0;
        }
        if (shield_pressed){
            window = 3;
            window_timer = 0;
        }
    }
    if (window > 3 && window < 6 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
        window++;
        window_timer = 0;
    }
}*/

if (attack == AT_DSPECIAL){
    if (window == 2 && !was_parried){
        can_jump = true;
    }
    can_fast_fall = false;
    can_move = false
}
