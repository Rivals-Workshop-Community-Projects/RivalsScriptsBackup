//when you hit someone

if (my_hitboxID.orig_player_id != self){
    exit;
}

if (my_hitboxID.attack == AT_BAIR && my_hitboxID.hbox_num == 1 || my_hitboxID.attack == AT_FSPECIAL && my_hitboxID.hbox_num == 1 || my_hitboxID.attack == AT_UTILT && my_hitboxID.hbox_num < 3){
    if (hit_player_obj.last_attack == AT_BAIR || hit_player_obj.last_attack == AT_FSPECIAL){
        //the fucking kragg shards bug applies to this... why?????
        sound_play(sound_get("grab"))
        grabbed_player = hit_player_obj.id;
    }
}

summersault = 0;

if (my_hitboxID.attack == AT_BAIR && my_hitboxID.hbox_num == 5 || my_hitboxID.attack == AT_FSPECIAL_2 && my_hitboxID.hbox_num == 1 || my_hitboxID.attack == AT_UTILT && my_hitboxID.hbox_num == 3){
    if (hit_player_obj.id == grabbed_player){
        grabbed_player = noone;
    }
}

if (my_hitboxID.attack == AT_NSPECIAL){
    hit_player_obj.spr_dir *= -1;
}

if (my_hitboxID.attack == AT_NSPECIAL){
    footstooled_player = hit_player_obj;
    sound_play(sound_get("footstool"), false, false, 1, 1);
    x = hit_player_obj.x;
    y = hit_player_obj.y - char_height;
    window = 4;
    window_timer = 0;
}

if (my_hitboxID.attack == AT_FSPECIAL){
    attack_end();
    set_attack(AT_FSPECIAL_2);
    destroy_hitboxes();
    if (invincible == false){
        hurtboxID.sprite_index = sprite_get("fspecial_p2_hurt")
    }
    fspecial_charge = 0;
}

if (my_hitboxID.attack == AT_FSPECIAL_2){
    if (hit_player_obj.hitpause == false){
        grabbed_invisible = true;
    }
}

if (my_hitboxID.attack == AT_UAIR){
    sound_play(sound_get("squeak"), false, false, 0.25, 1);
}

if (my_hitboxID.attack == AT_FAIR){
    sound_play(sound_get("tammorra2"), false, false, 1, 1);
}

if (my_hitboxID.attack == AT_USTRONG && my_hitboxID.hbox_num == 1){
    sound_play(sound_get("jitb_end"));
}