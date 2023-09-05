//got_hit.gml
//this script runs when the player gets hit, can be useful to stop certain effects or apply certain effects on your player

// Release anyone we may have grabbed
with (asset_get("oPlayer")) {
    if (SQUIGLY_HOLDER_ID == other.id) {
        SQUIGLY_HOLDER_ID = noone;
    }
}
stun_counter = 0;
if ((grab_hitbox != noone) && (instance_exists(grab_hitbox))) {
    grab_hitbox.destroyed = true;
}
if ((non_grab_hitbox != noone) && (instance_exists(non_grab_hitbox))) {
    non_grab_hitbox.destroyed = true;
}
if ((dspecial_tail_article != noone) && (instance_exists(dspecial_tail_article))) {
    with (asset_get("obj_article1")) {
    	if (other.id == player_id) {
    	    //print_debug("Counter!");
    		instance_destroy(id);
    	}
    }
}
if (fspecial_whip_spin_sound_curr != noone) {
    sound_stop(fspecial_whip_spin_sound_curr);
    fspecial_whip_spin_sound_curr = noone;
}

//Reset charge detection state
if (special_charge_interrupted) {
    special_charge = 0;
}
if (strong_charge_interrupted) {
    stored_strong_charge = 0;
    strong_charge = 0;
}
fully_charged = false;
was_fully_charged = false;

// If we got hit while armor was in place, remove it.
if (super_armor && super_armor_available) {
    super_armor_available = false;
    super_armor = false;
    sound_play(asset_get("sfx_ice_shatter_big"));
}

//stops grab
/*if (my_grab_id != noone)
{
    my_grab_id.hitstop = 0;
    my_grab_id = noone; //let go of the grabbed person

    if (enemy_hitboxID.kb_value == 0) set_state(PS_IDLE);
}*/