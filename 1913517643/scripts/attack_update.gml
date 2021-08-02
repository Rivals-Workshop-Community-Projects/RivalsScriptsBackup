//ATTACK UPDATE

if (attack == AT_NSPECIAL || attack == AT_NSPECIAL_2 || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}


if ((attack == AT_NSPECIAL || attack == AT_DSPECIAL || attack == AT_FSPECIAL || attack == AT_FAIR) && free) { //Stop the players horizontal momentum when using these specials
    hsp -= hsp*0.05;
    can_fast_fall = false;
    
    if (attack = AT_DSPECIAL) vsp -= vsp*.1;

}

if (attack == AT_NSPECIAL && window == 2 && window_timer == 1){ //Create article 1 for neutral special
    hasNote = 1;
    var musicnote = instance_create(x-25*spr_dir,y-52,"obj_article1");
    musicnote.depth = 3;
    /*
    move_cooldown[AT_NSPECIAL] = 45;
    var note = create_hitbox(AT_NSPECIAL, 1, x+32*spr_dir, y-40);
    note.vsp = -1.5;
    note.hsp = 3.5 * spr_dir;
    */
    
    
    if (singsfxCounter <= 0) {
        singsfxCounter = 75;
    }
    
}

if (attack == AT_DTILT && window > 2 && has_hit){ //Jump cancels Downtilt on hit
    
    can_jump = true;
    
}

if (attack == AT_JAB && window == 1){
    clear_button_buffer( PC_ATTACK_PRESSED );
}

if (attack == AT_DSPECIAL){ //Create article 2 for down special

    if (window == 1 && window_timer == 1){
        
        if (floating){
            can_fast_fall = 1;
		    floating = -1;
        }
        
    }

    if (window == 2 && window_timer == 16){
        var song = instance_create(x,y,"obj_article2");
        song.depth = 6;
        
        if (free){
            songAir = 1;
            move_cooldown[AT_DSPECIAL] = 99999;
        } else{
            move_cooldown[AT_DSPECIAL] = 40;
        }
    }



}

if (attack == AT_DATTACK){
    
    if (window <= 2 && has_hit_player){
        
       
        if (spr_dir){
            if (hit_player_obj.x > (x+60)) {
                hit_player_obj.x -= (hit_player_obj.x - (x+60))/5;
            }
            if (hit_player_obj.x < (x+60)) {
                hit_player_obj.x += ( (x+60) - hit_player_obj.x)/5;
            }
        } else {
            if (hit_player_obj.x > (x-60)) {
                hit_player_obj.x -= (hit_player_obj.x - (x-60))/5;
            }
            if (hit_player_obj.x < (x+-60)) {
                hit_player_obj.x += ( (x-60) - hit_player_obj.x)/5;
            }
        }
   
        

                
                
        if (hit_player_obj.y > y) {
            hit_player_obj.y -= (hit_player_obj.y - y)/2;
        }
        if (hit_player_obj.y < y) {
            hit_player_obj.y += (y - hit_player_obj.y)/2;
        }
        
    }
}


if (attack == AT_FSPECIAL && window == 2 && window_timer == 1){ //Create article 3 for forward special

    var bodyguard = instance_create(x+75*spr_dir,y,"obj_article3");
    bodyguard.depth = 3;
    bodyguard.spr_dir = spr_dir;
    move_cooldown[AT_FSPECIAL] = 99999;
    
}


if (attack == AT_UTILT){
    if (window == 1){
        char_height = ease_quartIn(52, 82, window_timer, 5)
    }
    if (window == 2){
        char_height = 82;
    }
    if (window == 4 && window_timer < 11){
        char_height = ease_quartIn(82, 52, window_timer, 8)
    }
}

if (attack == AT_TAUNT_2){
    if (window == 1){
        char_height = ease_quartIn(52, 100, window_timer, 15)
    }
    if (window == 2){
        char_height = 112;
    }
    if (window == 3 && window_timer < 10){
        char_height = ease_quartIn(100, 52, window_timer, 9)
    }
}

if (attack == AT_USTRONG){
    if (window == 2){
        char_height = ease_quartIn(52, 112, window_timer, 15)
    }
    if (window == 3){
        char_height = 112;
    }
    if (window == 4 && window_timer < 11){
        char_height = ease_quartIn(112, 52, window_timer, 10)
    }
}

if (attack == AT_USPECIAL){
    
    if (window == 1 && window_timer == 1){
        set_attack_value(AT_USPECIAL, AG_SPRITE, sprite_get("uspecial"));
        
        if (floating){
            can_fast_fall = 1;
		    floating = -1;
        }
        
    }
    
    if (window == 4){
        can_wall_jump = true;
    }
    
    if (window == 3 && window_timer == 7 && in_songfield){
        set_attack_value(AT_USPECIAL, AG_SPRITE, sprite_get("uspecial_song"));
        sound_play(asset_get("sfx_bird_cheer"));
    }
    
    
}

if (attack == AT_TAUNT && window == 3){
    if (window_timer == 1){
        var mic = create_hitbox(AT_TAUNT, 1, x+34*spr_dir, y-38);
        mic.vsp = 2;
        mic.spr_dir = -spr_dir;
        move_cooldown[AT_TAUNT] = 60;
    }
        
}

if (attack == AT_EXTRA_1 && window == 2){
    if (taunt_down){
        if (window_timer > 47){
            window_timer = 0;
        }
    } else {
    
    }

}

//Float Cancels
if (floatCancel){ 
    set_attack_value(AT_NAIR, AG_LANDING_LAG, 0);
    set_attack_value(AT_BAIR, AG_LANDING_LAG, 0);
    set_attack_value(AT_FAIR, AG_LANDING_LAG, 6);
} else {
    set_attack_value(AT_NAIR, AG_LANDING_LAG, 6);
    set_attack_value(AT_BAIR, AG_LANDING_LAG, 6);
    set_attack_value(AT_FAIR, AG_LANDING_LAG, 10);
}


//sfx

if (attack == AT_FSTRONG && window == 2 && window_timer == 15 && !has_hit){
    sound_play(asset_get("sfx_shovel_hit_light1"));
}

if (attack == AT_USTRONG && window == 2 && window_timer == 9){

    sound_play(asset_get("sfx_swipe_medium2"));
    
    if (voiceEnabled){
        sound_play(sound_get("pomme_scream4"));
    } else {
        sound_play(asset_get("sfx_may_arc_hit"));
    }
}

if (attack == AT_FAIR && window == 1 && window_timer == 11){

    sound_play(asset_get("sfx_swipe_medium2"));
    
    if (voiceEnabled){
        sound_play(sound_get("pomme_scream4"));
    } else {
        sound_play(asset_get("sfx_may_arc_hit"));
    }
}

if (attack == AT_DSTRONG && window == 2 && window_timer == 4){

    sound_play(asset_get("sfx_swipe_medium1"));
    
    if (voiceEnabled){
        sound_play(sound_get("pomme_scream1"));
    } else {
        sound_play(asset_get("sfx_may_arc_hit"));
    }
}

if (attack == AT_NSPECIAL && window == 1 && window_timer == 4){
    
    if (voiceEnabled){
        //sound_play(sound_get("pomme_sing1"));
    } else {
        sound_play(asset_get("sfx_dream_star"));
    }
    
}

if (attack == AT_DSPECIAL && window == 1 && window_timer == 1){
    
    if (voiceEnabled){
        sound_play(sound_get("pomme_sing2"));
    } else {
        sound_play(asset_get("sfx_dream_star"));
    }
    
}

if (attack == AT_USPECIAL && window == 1 && window_timer == 4){
    
    if (voiceEnabled){
        sound_play(sound_get("pomme_sing3"));
    } else {
        sound_play(asset_get("sfx_dream_star"));
    }
    
}

if (attack == AT_EXTRA_1 && window == 1 && window_timer == 52 ){
    sound_play(asset_get("sfx_birdflap"));
}