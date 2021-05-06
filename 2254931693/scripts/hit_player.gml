


with (asset_get("pHitBox")){
    if (self.attack == AT_DATTACK && other.has_hit_player){
        other.hsp = 0;
    }
}


if (my_hitboxID.attack == AT_NSPECIAL && my_hitboxID.hbox_num = 1){
    if  (hit_player_obj.state_cat = SC_HITSTUN){
    window = 8;
    nspecial_grabbedplayer = hit_player_obj;
    move_cooldown[AT_NSPECIAL] = 90;
    }
}


if (my_hitboxID.attack == 39 && my_hitboxID.hbox_num = 1){
    if  (hit_player_obj.state_cat = SC_HITSTUN){
    frog.grabbedplayer = hit_player_obj;
    frog.state = PS_WRAPPED;
    }
}


if (my_hitboxID.attack == 49 && my_hitboxID.hbox_num = 1){
    final_hitsprite = hit_player;
    window = 3;
}