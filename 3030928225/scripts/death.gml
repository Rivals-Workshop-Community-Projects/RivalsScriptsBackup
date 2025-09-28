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

if (va_mode_active) {
    play_va_line("death", 3, 100, 1)
}

//nspec_charge = 1;

//stops grab
/*if (my_grab_id != noone)
{
    my_grab_id.hitstop = 0;
    my_grab_id = noone;
}*/

if (clinging) clinging = false;

// All voice lines start with va_, and will randomize between num_options
// Chance is 0 - 100 % chance of playing the line at all
// Volume needs to be between 0 and 1
#define play_va_line(va_line, num_options, chance, volume)
playing_stance_line = false;
curr_va_line_must_play_fully = false;
var roll = random_func(13, 100, false);
if (roll < chance) {
	if (curr_va_line != noone) {
		sound_stop(curr_va_line);
	}
	if (num_options > 1) {
		var choice = random_func(14, num_options, true);
		curr_va_line = sound_play(sound_get("va_" + va_line + string(choice + 1)), false /*looping*/, noone /*panning*/, volume/*volume*/, 1/*pitch*/);
	} else {
		curr_va_line = sound_play(sound_get("va_" + va_line), false /*looping*/, noone /*panning*/, volume/*volume*/, 1/*pitch*/);
	}
}