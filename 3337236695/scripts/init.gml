//The variable used to randomize the stage's music, set to -1 for the randomizer in update.gml to work.
cur_song = -1

//Variable that controls the bg Miis animation state.
//Defined here to work easily with player_death.gml
mii_can_cheer = false

//Qua Mario floortype compat
//Allows Qua Mario to play different footstep sfxs on different surfaces.
if is_aether_stage() {
    neo_data_compat = {
    	default_floortype: "ice",
    	default_floortype_plats: "wood"
    };
}else{
    neo_data_compat = {
    	default_floortype: "wood",
    	default_floortype_plats: "wood"
    };
}