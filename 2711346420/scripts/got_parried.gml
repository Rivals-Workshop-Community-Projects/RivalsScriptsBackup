//got_parried.gml

if (my_hitboxID.attack == AT_USPECIAL){
    uspecial_can_glide = false;
}

if (my_hitboxID.attack == AT_DSPECIAL && my_hitboxID.hbox_num == 1){
    with (monkeyBall){
		hey_did_i_get_parried = true;
    }
}