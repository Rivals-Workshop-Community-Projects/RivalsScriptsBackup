//got_parried.gml
//as the name suggests, this script runs when the player is parried, this can be useful for disabling effects like certain debuffs
//or redirecting the character into certain states

// Release anyone we may have grabbed
with (asset_get("oPlayer")) {
    if (SQUIGLY_HOLDER_ID == other.id) {
        SQUIGLY_HOLDER_ID = noone;
    }
}
// Mark hitbox as parried
if (my_hitboxID.attack == AT_FSPECIAL) {
    was_parried = true;
    //my_hitboxID.was_parried = true;
    //window = fspecial_recovery_window + 1;
    //window_timer = 0;
    if ((grab_hitbox != noone)
    	&& (instance_exists(grab_hitbox)))
    {
        grab_hitbox.mask_index = asset_get("empty_sprite");
    	//grab_hitbox.destroyed = true;
    }
}
if ((dspecial_tail_article != noone) && (instance_exists(dspecial_tail_article))) {
    was_parried = true;
    /*with (asset_get("obj_article1")) {
    	if (other.id == player_id) {
    	    //print_debug("Counter!");
    		instance_destroy(id);
    	}
    }*/
}

// Remove charges on parry
// *Except for jab 1/2*
if ((my_hitboxID.attack != AT_JAB)
    || (my_hitbox.hbox_num > 2))
{
    stored_strong_charge = 0;
    strong_charge = 0;
    special_charge = 0;
    fully_charged = false;
    was_fully_charged = false;
}

//prevents the grab ID from staying
//if (my_grab_id != noone) my_grab_id = noone;

//disables u-air status on parry
if (hit_player_obj.test_status_timer > 0) hit_player_obj.test_status_timer = 0;

//multihit projectile hit count resets on parry
if (my_hitboxID.type == 2 && my_hitboxID.multihit_amount > 0 && my_hitboxID.proj_hit_count < my_hitboxID.multihit_amount)
{
    my_hitboxID.proj_hit_count = 0;
    my_hitboxID.hitbox_timer = 0;
}

//normally we would use HG_PROJECTILE_PARRY_STUN in the attack script, but that hitbox index will instantly put us in pratland,
//this allows us to finish playing the animation first and then being put in pratland
//if (my_hitboxID.attack == AT_FSPECIAL && my_hitboxID.hbox_num == 2) was_parried = true;