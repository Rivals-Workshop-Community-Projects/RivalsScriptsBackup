//got_parried.gml

//ignore everything if the attack parried was a reflected attack.
if (my_hitboxID.player != my_hitboxID.orig_player || is_master_player) exit;

//when the leader gets parried at melee range AND the clone isn't using dspecial, the clone gets parry stun too.
if (my_hitboxID.type == 1 && instance_exists(teammate_player_id) && (!custom_clone || is_solo_player)) {
    
    
    //don't parry jabs
    if ((my_hitboxID.attack == AT_JAB || my_hitboxID.attack == 0) && my_hitboxID.hbox_num == 1) {
        was_parried = 0;
    }
    else {
        with (teammate_player_id) {
            //get parried at the correct buffer point.
            if (leading_teammate_got_parried_trigger == 0) leading_teammate_got_parried_trigger = partner_input_buffer_delay;

        }
        //instantly reset helping hand charge level.
        master_player_id.hh_charge_level = 0;
        master_player_id.hh_charge_percent = 0;
    }
}
    

else {
    //make fspecial reflect
    if (my_hitboxID.attack == AT_FSPECIAL) {
        my_hitboxID.hitbox_timer = 0; //extend the projectile lifetime so that it can reach plusle
        my_hitboxID.image_index = 0;
    }
    
    //make fspecial2 article reflect
    else if (my_hitboxID.attack == AT_FSPECIAL_2 && instance_exists(my_hitboxID.spawned_by_article_id)) {
        with (my_hitboxID.spawned_by_article_id) {
            //mark the article as being parried
            was_parried = true;
            trigger_got_parried = true;
            parried_by_player = other.hit_player;
            //extend the article's lifetime 
            max_exist_timer += 150 - (max_exist_timer - exist_timer);
        }
    }
}
