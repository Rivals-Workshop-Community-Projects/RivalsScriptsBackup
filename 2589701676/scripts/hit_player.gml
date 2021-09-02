//hit player

if(my_hitboxID.attack==AT_USPECIAL && my_hitboxID.hbox_num==2){
    hit_player_obj.chainedDown = 0;
}

//scale knockback of chain attack with numChains
if ((my_hitboxID.attack==AT_FTILT && (my_hitboxID.hbox_num==1 || my_hitboxID.hbox_num==2)) ||
    (my_hitboxID.attack==AT_UTILT && (my_hitboxID.hbox_num==2 || my_hitboxID.hbox_num==3)) ||
    (my_hitboxID.attack==AT_DATTACK && (my_hitboxID.hbox_num==1 || my_hitboxID.hbox_num==2)) ||
    (my_hitboxID.attack==AT_FSTRONG && (my_hitboxID.hbox_num==2 || my_hitboxID.hbox_num==3)) ||
    (my_hitboxID.attack==AT_USTRONG && (my_hitboxID.hbox_num==1 || my_hitboxID.hbox_num==2)) ||
    //(my_hitboxID.attack==AT_DSTRONG && (my_hitboxID.hbox_num==1 || my_hitboxID.hbox_num==2)) ||
    (my_hitboxID.attack==AT_FAIR && (my_hitboxID.hbox_num==1 || my_hitboxID.hbox_num==2)) ||
    (my_hitboxID.attack==AT_BAIR && (my_hitboxID.hbox_num==1 || my_hitboxID.hbox_num==2))){
    if(hit_player_obj.chainedDown==0){
        hit_player_obj.orig_knock=ease_cubeOut(0, floor(hit_player_obj.orig_knock), hit_player_obj.numChains, 9);
        if (hit_player_obj.numChains!=9){
            hit_player_obj.should_make_shockwave=false;
        }
        //hit_player_obj.orig_knock = hit_player_obj.orig_knock/9
    }
    /*
    else if(hit_player_obj.should_make_shockwave){
        hit_player_obj.chainedDown=0;
    }
    */
}

if (hit_player_obj.chainedDown>6){
    hit_player_obj.should_make_shockwave = false;
}

if (my_hitboxID.attack == AT_FSPECIAL){
    my_boomerang.cooldown = 30;
    set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 1 + get_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE));
}

if  (hit_player_obj.id != my_key.current_owner_id) {
    hit_player_obj.numChains++;
    //check if in jail
    if (my_jail!=noone && y<my_jail.y+1 && x>my_jail.x && x<my_jail.x+180){
        if (my_hitboxID.attack == AT_DSTRONG || my_hitboxID.attack == AT_USTRONG || 
                (my_hitboxID.attack == AT_FSTRONG && my_hitboxID.hbox_num != 1)){
            hit_player_obj.numChains--;
            hit_player_obj.numChains*=2;
        }
        else {
            hit_player_obj.numChains++;
        }
    }
    //unjailed strongs apply more chain
    else if (my_hitboxID.attack == AT_DSTRONG || my_hitboxID.attack == AT_USTRONG ||
            (my_hitboxID.attack == AT_FSTRONG && my_hitboxID.hbox_num != 1)){
        if (point_distance(x,y, hit_player_obj.x, hit_player_obj.y)<120)
        {
            hit_player_obj.numChains++;
        }
        hit_player_obj.numChains++;
    }
    
    //certain moves apply more chain for nearby hits
    if (my_hitboxID.attack == AT_BAIR || my_hitboxID.attack == AT_FTILT ||
            my_hitboxID.attack == AT_DATTACK || my_hitboxID.attack == AT_FAIR){
        if (point_distance(x,y, hit_player_obj.x, hit_player_obj.y)<80)
        {
            hit_player_obj.numChains++;
        }
    }
    //others always apply extra
    if (my_hitboxID.attack == AT_DTILT || my_hitboxID.attack == AT_DAIR || 
            my_hitboxID.attack == AT_UAIR || my_hitboxID.attack == AT_DATTACK){
        hit_player_obj.numChains++;   
    }
    //uspecial stops at 9
    if (my_hitboxID.attack == AT_USPECIAL && hit_player_obj.numChains>=10){
        hit_player_obj.numChains=9;
    }
    if(hit_player_obj.numChains>=10){
        hit_player_obj.should_make_shockwave=false;
    }
}