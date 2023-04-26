if(my_hitboxID.attack == AT_FSTRONG){
    was_parried = true;
    drop_weed();
}


if(my_hitboxID.type == 1 || (my_hitboxID.type == 2 && my_hitboxID.projectile_parry_stun)){
    drop_weed();
}

if(my_hitboxID.attack == AT_NSPECIAL){
    my_hitboxID.length = my_hitboxID.hitbox_timer + my_hitboxID.length;
}

#define drop_weed
if(weedcharge == max_weedcharge){
    weedcharge = mid_weedcharge;
} else {
    weedcharge = 0;
}