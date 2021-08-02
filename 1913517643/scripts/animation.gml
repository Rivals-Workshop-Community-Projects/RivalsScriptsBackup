
if (floating && state != PS_ATTACK_AIR){
    
    
    if (floor(floatAnimTimer/10) > 11 ) {
        floatAnimTimer = 0;
    }
    sprite_index = sprite_get("float");
    image_index = floor(floatAnimTimer/10);
    floatAnimTimer++

}

/*if (get_player_color(player) == 13){
    
    set_attack_value(AT_NSPECIAL_2, AG_SPRITE, sprite_get("nspecial_2_beach"));
    
    if (spr_dir < 0){

    set_attack_value(AT_DATTACK, AG_SPRITE, sprite_get("dattacktwo_beach"));
    } else {
    set_attack_value(AT_DATTACK, AG_SPRITE, sprite_get("dattack_beach"));
    }
        
}else {
    
    set_attack_value(AT_NSPECIAL_2, AG_SPRITE, sprite_get("nspecial_2"));
    
    if (spr_dir < 0){

    set_attack_value(AT_DATTACK, AG_SPRITE, sprite_get("dattacktwo"));
    } else {
    set_attack_value(AT_DATTACK, AG_SPRITE, sprite_get("dattack"));
    }
        
}*/
    

if (spr_dir < 0){
    set_attack_value(AT_TAUNT_2, AG_SPRITE, sprite_get("taunt2reverse"));
    set_attack_value(AT_DATTACK, AG_SPRITE, sprite_get("dattacktwo"));
} else {
    set_attack_value(AT_TAUNT_2, AG_SPRITE, sprite_get("taunt2"));
    set_attack_value(AT_DATTACK, AG_SPRITE, sprite_get("dattack"));
}

//Beach props animation


/*

if (state == PS_ATTACK_GROUND && attack == AT_EXTRA_1) {
    if (state_timer == 0){
        beachpropsAnimTimer = 0;
    }
    
    if (window < 3 ){
        
        if (beachpropsAnimTimer < 7){
            beachpropsAnimTimer += beachpropsAnimSpeed;
        } else {
            beachpropsAnimTimer = 7;
        }
        
    } 
    
    if (window == 3){
        if (window_timer == 0){
            beachpropsAnimTimer = 21;
        }
        
        if (beachpropsAnimTimer < 27){
            beachpropsAnimTimer += beachpropsAnimSpeed;
        } else {
            beachpropsAnimTimer = 27;
        }
    }

        
}
    

//Handle certain looping animations
if (sprite_index == spr_idle){
    var frames = 12;
    var frame_dur = 8;
    image_index = floor((state_timer mod (frames * frame_dur)) / frame_dur);
}
if (sprite_index == spr_walk){
    var frames = 8;
    var frame_dur = 7;
    image_index = floor((state_timer mod (frames * frame_dur)) / frame_dur);
}
if (sprite_index == spr_dash){
    var frames = 8;
    var frame_dur = 5;
    image_index = floor((state_timer mod (frames * frame_dur)) / frame_dur);
}
*/
