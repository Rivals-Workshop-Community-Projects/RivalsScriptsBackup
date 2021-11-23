/*if(AT_NSPECIAL == my_hitboxID.attack){
    if(instance_exists(my_article)){
        instance_destroy(my_article);
    }
}
*/
if (my_hitboxID.attack == AT_NSPECIAL && my_hitboxID.hbox_num == 1) {
    my_hitboxID.hitbox_timer = 0;
}

if (my_hitboxID.attack == AT_USPECIAL && my_hitboxID.hbox_num == 3) {
    my_hitboxID.hitbox_timer = 0;
}

with(obj_article1)
{
    if(other.id == player_id)
        state = 3;
}

