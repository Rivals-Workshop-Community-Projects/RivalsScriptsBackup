//death.gml
//this script runs when the player loses a stock/dies, useful for resetting variables

can_stancle = false;
//Reset charge detection state
stored_strong_charge = 0;
strong_charge = 0;
special_charge = 0;
fully_charged = false;
was_fully_charged = false;
// Reset nspecial air stall
nspecial_air_stall_available = true;

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



//nspec_charge = 1;

//stops grab
/*if (my_grab_id != noone)
{
    my_grab_id.hitstop = 0;
    my_grab_id = noone;
}*/

if (clinging) clinging = false;