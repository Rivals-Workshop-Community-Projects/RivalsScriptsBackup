if (hit_player_obj.omori_debuff == true && hit_player_obj.omori_debuff_id == id && my_hitboxID.attack != AT_JAB){
    should_play = 0;
    hit_player_obj.omori_debuff = false;
    hit_player_obj.omori_debuff_id = 0;
    hit_player_obj.omori_debuff_timer = 0;
    stats_changed = false;
    
    
    //this doesn't want to work in the other place so i guess i'll just put it here :/
    with (hit_player_obj){
        outline_color = [ 0, 0, 0 ];
        init_shader();
    }
}

if (my_hitboxID.attack == AT_DATTACK){
    hsp = 0;
}

if (my_hitboxID.attack == AT_FSPECIAL){
    my_hitboxID.hitbox_timer = 0;
    my_hitboxID.hsp += 4;
}

//put emotion on cooldown on parry
if (my_hitboxID.attack != AT_JAB){
    switch (emotion){
    
        case 1:
            happy_cooldown = emotion_cooldown;
            emotion = 0;
        break;
    
        case 2:
            sad_cooldown = emotion_cooldown;
            emotion = 0;
        break;
    
        case 3:
            angry_cooldown = emotion_cooldown;
            emotion = 0;
        break;
    
    }
}