//pre_update.gml
//this script runs before every script that runs every frame (attack_update.gml, update.gml, animation.gml)

///////////////////////////////////////////////////////// USEFUL CUSTOM VARIABLES /////////////////////////////////////////////////////////

// Let the character leave the ground on ANY attack if she's grabbing someone.
if ( (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && instance_exists(my_grab_id) ) {
    cancels_air = false;
}