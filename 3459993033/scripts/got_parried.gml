//got parried
var hbox = my_hitboxID.hbox_num;

if (my_hitboxID.attack == AT_NSPECIAL){
    if (hbox == 1){
        my_hitboxID.hsp += 9*my_hitboxID.spr_dir;
    }
    if (hbox == 2){
         my_hitboxID.hsp += 6*my_hitboxID.spr_dir;
    }
}

if( my_hitboxID.attack == AT_FSPECIAL_2 && hbox == 2){
    my_hitboxID.was_parried = true;
    my_hitboxID.vsp = 7;
    with(pHitBox){
        if(player_id == other and (is_fspec_magic and was_parried == false)){
            player = other.hit_player;
            vsp = -7;
            new_vsp = vsp;
            hitbox_timer = 0;
            was_parried = true;
        }
    }
}

if my_hitboxID.attack == AT_DSPECIAL and (my_hitboxID.hbox_num == 2 or my_hitboxID.hbox_num == 3) {
    var dir = point_direction(my_hitboxID.x, my_hitboxID.y, x, y-(char_height*2))
    var spd = -(12 + (5*(my_hitboxID.hbox_num - 2))) //if it's a bobomb it gets extra speed
    my_hitboxID.hsp = lengthdir_x(spd,dir)
    my_hitboxID.vsp = lengthdir_y(spd,dir)
}


if (!nspec_is_casting){
    nspecial_charge = 0;
    nspec_fully_charged = false;
    nspec_is_casting = false;
}