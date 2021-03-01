//#region Specials
    //#region N-special
if (my_hitboxID.attack == AT_NSPECIAL && my_hitboxID.hbox_num == 2){
    /*my_hitboxID.source.state = 100;
    my_hitboxID.source.state_timer = 0;
    my_hitboxID.source.image_index = 0;*/
    
    my_hitboxID.source.state_timer = 39;
    
    hit_player_obj.should_make_shockwave = false;
}
    //#endregion
    
    
    //#region U-special
if(my_hitboxID.attack == AT_USPECIAL && my_hitboxID.hbox_num == 2 && instance_find(obj_article1, true)){
    
    hit_player_obj.should_make_shockwave = false;
    my_hitboxID.source.usp_forger_id = hit_player_obj.id;
    if(hit_player_obj.soft_armor <= 0 && hit_player_obj.super_armor == false && hit_player_obj.invincible == false){
        my_hitboxID.source.usp_forger_drag = true;
    }
}
    
    //#endregion
    
    //#region Dspecial_air
if(my_hitboxID.attack == AT_DSPECIAL_AIR 
&& (my_hitboxID.hbox_num == 2 || my_hitboxID.hbox_num == 1 || my_hitboxID.hbox_num == 3)){
    
    hit_player_obj.should_make_shockwave = false;
    //hit_player_obj.hitpause = true;
    //hit_player_obj.hitstop += 70;
    DSPA_grab_id = hit_player_obj.id;
    if(!DSPA_grab){
        DSPA_timer = 0;
    }
    if(hit_player_obj.soft_armor <= 0 && hit_player_obj.super_armor == false && hit_player_obj.invincible == false){
        DSPA_grab = true;
    }
    
}
    
    
    
    //#endregion
    
    
    //#region Fspecial_2
if(attack == AT_FSPECIAL_2){
    fspec_jump = true;
}    
    
    
    //#endregion
//#endregion


//#region Ground attacks


//#endregion


//#region Aerials

    //#region Uair
/*if(attack == AT_UAIR){
    if(window_timer < 15){
        UAGrab_timer = 0;
        UAGrab = true;
        UAGrab_id = hit_player_obj.id;
    }
    if(my_hitboxID.hbox_num == 1){
        UAGdir = 1;
    }
    if(my_hitboxID.hbox_num == 2){
        UAGdir = 2;
    }
}*/


//#endregion

//#endregion


//#region Strongs
    //#region Dstrong
if ( my_hitboxID.attack == AT_DSTRONG && (my_hitboxID.hbox_num == 2 || my_hitboxID.hbox_num == 1 )) {
    hit_player_obj.should_make_shockwave = false;
    //hit_player_obj.hitpause = true;
    //hit_player_obj.hitstop += 70;
    Dgrab_id = hit_player_obj.id;
    if(hit_player_obj.soft_armor <= 0 && hit_player_obj.super_armor == false && hit_player_obj.invincible == false){
        Dgrab = true;
    }
    set_hitbox_value(AT_NSPECIAL, 1, HG_HITSTUN_MULTIPLIER, 10);
}

if ( my_hitboxID.attack == AT_DSTRONG && (my_hitboxID.hbox_num == 3)){
    take_damage(player, 1, floor(-my_hitboxID.damage))
    
    reset_hitbox_value(AT_NSPECIAL, 1, HG_HITSTUN_MULTIPLIER);
}

if ( my_hitboxID.attack == AT_DSTRONG && (my_hitboxID.hbox_num == 3 || my_hitboxID.hbox_num == 4)){
    
    hit_player_obj.should_make_shockwave = false
}

//#endregion

    //#region Ustrong
if(my_hitboxID.attack == AT_USTRONG && my_hitboxID.hbox_num != 3){
    hit_player_obj.should_make_shockwave = false;
    if(my_hitboxID.hbox_num == 2){
        hit_player_obj.fall_through = true;
    }
        
    
    
}
if(my_hitboxID.attack == AT_USTRONG){
    sound_stop(asset_get("sfx_swipe_medium2"))
}


    
    
    //#endregion


//#endregion

//#region Dair Splat
if(my_hitboxID.attack == AT_DAIR){
    hit_player_obj.Dsplat = true;
}

//#endregion

/* Ftilt Jump Cancel
if(my_hitboxID.attack == AT_FTILT && (my_hitboxID.hbox_num == 4 || my_hitboxID.hbox_num == 5)){
    ftilt_canc = true;
}
*/


//#region Ftilt follow up

if(my_hitboxID.attack == AT_FTILT && my_hitboxID.hbox_num < 3){
    set_num_hitboxes(attack, 4)
}