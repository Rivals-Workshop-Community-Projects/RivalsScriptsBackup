//hit player

// uair is a pseudo-multiperson-grab
if(my_hitboxID.attack == AT_UAIR && my_hitboxID.hbox_num > 1 && my_hitboxID.hbox_num < get_num_hitboxes(AT_UAIR)){
    if(my_hitboxID.hbox_num == 2){
        finishUair = true;
        if(!hit_player_obj.clone && hit_player_obj.hitstun > 0){
            uairGrabbedid[hit_player, 0] = hit_player_obj;
            uairGrabbedid[hit_player, 0].grabbed = 1;
            uairGrabbedid[hit_player, 0].ungrab = 0;
            uairGrabbedid[hit_player, 1] = hit_player_obj.x - x;
            uairGrabbedid[hit_player, 2] = hit_player_obj.y - y;
        }
    }
} else {
    uairGrabbedid[hit_player, 0] = noone;
}

// command grab (template)
if (my_hitboxID.attack == AT_FSPECIAL){
    if(my_hitboxID.hbox_num == 1){
        if(!hit_player_obj.clone && hit_player_obj.hitstun > 0){
            grabbedid = hit_player_obj;
            grabbedid.grabbed = 1;
            grabbedid.ungrab = 0;
            window = 5;
            window_timer = 0;
            my_hitboxID.length = 0;
        }
    } else if(my_hitboxID.hbox_num == 2){
        grabbedid = noone;
    }
} else if(hit_player_obj == grabbedid){
    if(grabbedid.state == PS_WRAPPED){
        grabbedid.state = PS_TUMBLE;
    }
    grabbedid = noone;
    window = 6;
    window_timer = 0;
    if(!runeI){
        hsp = -7*spr_dir;
        if(free){
            vsp = -1;
        }
    }
}

//dattack knockback control for better connecting
if(my_hitboxID.attack == AT_DATTACK && my_hitboxID.hbox_num < 4){
    if((hit_player_obj.x - (x+20*spr_dir))*spr_dir > 0){
        hit_player_obj.orig_knock = 6;
    }
    hit_player_obj.should_make_shockwave = false;
}

//uspecial knockback control for better connecting
if(my_hitboxID.attack == AT_USPECIAL && my_hitboxID.hbox_num > 2 && my_hitboxID.hbox_num < 13){
    if(hit_player_obj.y < y - char_height){
        hit_player_obj.orig_knock = 4;
    }
    hit_player_obj.should_make_shockwave = false;
}

// [Random alt on hit feature]
// Random alt on hit
if(randomAltOnHit){ // if "random alt on hit" activated
    set_color_profile_slot(0, 8, random_func(10, get_color_profile_slot_b(0, 8), true), get_color_profile_slot_g(0, 8), get_color_profile_slot_b(0, 8)); // update the unlimited alt to a random alt
    init_shader(); // update the alt visually
}