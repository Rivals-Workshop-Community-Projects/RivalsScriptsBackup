if(attack == AT_FSTRONG && hbox_num == 1){
    move_angle = 0;
    with(player_id){
        var mag = get_hitbox_value(AT_FSTRONG, 1, HG_PROJECTILE_HSPEED);
    }
    magnitude = mag * player_id.spr_dir;
    if(player_id.strong_charge == 60 || player_id.job == "office"){
        loop = true;
        length *= 2;
        transcendent = true;
    } else {
        loop = false;
    }
    if(loop == false){
        vsp = -1;
        grav = .05;
    }
}