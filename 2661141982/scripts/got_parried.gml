/*if(AT_NSPECIAL == my_hitboxID.attack){
    if(instance_exists(my_article)){
        instance_destroy(my_article);
    }
}
*/
if (my_hitboxID.attack == AT_NSPECIAL && my_hitboxID.hbox_num == 1) {
    my_hitboxID.hitbox_timer = 0;
    //my_hitboxID.spr_dir = my_hitboxID.spr_dir*-1;
    my_hitboxID.proj_angle = my_hitboxID.proj_angle + 180;
    //my_hitboxID.draw_xscale = spr_dir;
}


//if (my_hitboxID.attack == AT_NSPECIAL_2 && my_hitboxID.hbox_num == 2) {
//    state = PS_PRATLAND;
//}

if (my_hitboxID.attack == AT_USPECIAL && my_hitboxID.hbox_num == 3) {
    my_hitboxID.hitbox_timer = 0;
}

with(obj_article1)
{
    if(other.id == player_id)
        state = 3;
}

