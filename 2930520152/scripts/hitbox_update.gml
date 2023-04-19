//hitbox update
if(attack == AT_FTILT && hbox_num == 2){
    if(place_meeting(x, y, obj_article2)){
        var eruption = instance_place(x, y, obj_article2);
        if(variable_instance_exists(eruption, "is_ike_eruption") && eruption.state != 420){ // set state later
            eruption.state = 420;
            eruption.state_timer = 0;
            eruption.image_index = 0;
            sound_play(asset_get("sfx_burnend"));
            transcendent = true;
            multi_hits += 2;
            if(has_rune("H")){
                multi_hits += 4;
            }
            max_mult_hits = multi_hits;
            
            damage = 2;
            hit_flipper = 9;
            kb_scale = 0;
            hitpause_growth = 0;
            hitstun_factor = 1;
            can_tech = 3;
            force_flinch = 2;
            enemies = 1;
            sdi_mult = -.99;
        }
    }
    if(max_mult_hits > 0 && hitbox_timer == length - 1){
        var hbox = create_hitbox(AT_FTILT, 3, x, y);
        hbox.multi_hits = multi_hits;
        hbox.max_mult_hits = max_mult_hits;
    }
}

if(attack == AT_FTILT && hbox_num == 3 && hitbox_timer == length - 1){
    multi_hits--;
    if(multi_hits > 0){
        var hbox = create_hitbox(AT_FTILT, 3, x, y);
        hbox.multi_hits = multi_hits;
        hbox.max_mult_hits = max_mult_hits;
    } else {
        var hbox = create_hitbox(AT_FTILT, 4, x, y);
        hbox.multi_hits = multi_hits;
        hbox.max_mult_hits = max_mult_hits;
        hbox.kb_scale = hbox.kb_scale + hbox.max_mult_hits * .1;
    }
}