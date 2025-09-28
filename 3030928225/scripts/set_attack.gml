///#args attack
//  ^ this line up here makes gmedit not freak out

//set_attack.gml
//this script runs at on the first frame of an attack, sort of like an init.gml but for attack_update.gml


// Set this true if the previous attack didn't actually end
this_attack_was_the_result_of_a_cancel = can_stancle;
// Reset our ability to stancle - is set true on hit
can_stancle = false;
//Reset charge detection state
fully_charged = false;
was_fully_charged = false;

// Do the aerial variant of nspecial if in the air
if ((attack == AT_NSPECIAL) && free) {
    attack = AT_NSPECIAL_AIR;
}

if ((attack == AT_DSPECIAL) && free) {
    attack = AT_DSPECIAL_AIR;
}

if ((attack == AT_USPECIAL)
    && place_meeting(x, y + 1, asset_get("par_block"))
    && !free)
{
    attack = AT_USPECIAL_GROUND;
}

if ((attack == AT_FAIR) && (strong_down || ((spr_dir > 0) && right_strong_down) || ((spr_dir < 0) && left_strong_down)) && free) {
    attack = AT_FSTRONG_2;
}
if ((attack == AT_BAIR) && (strong_down || ((spr_dir > 0) && left_strong_down) || ((spr_dir < 0) && right_strong_down)) && free) {
    spr_dir *= -1;
    attack = AT_FSTRONG_2;
}

// If in training mode, down + taunt to refresh charges
if ((get_training_cpu_action() != CPU_FIGHT) && (attack == AT_TAUNT) && down_down) {
    stored_strong_charge = strong_full_charge_time;
    special_charge = special_full_charge_time;
}