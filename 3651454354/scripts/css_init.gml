//css_init.gml
//every script that has the word "init" will run only for the first frame of the "update" of it
//this script is used to assign character select screen variables
//css_init.gml runs as soon as the character loads in on the character select screen
//NOTE: CSS is short for Character Select Screen

css_anim_time = 0;

//set these positions in css_update, not here
icon_x_pos = 0; //icon placement for the event/unlock based alts from rivals
icon_y_pos = 0;
preview_x = 0; //preview char
preview_y = 0;

alt_name = []; //refresh name array in case other characters use the same system

//alts
//there can be a total of 32 (0 - 31) alts normally
alt_name[0] = "JEVIL";
alt_name[1] = "OLD FRIEND";
alt_name[2] = "LIGHT BRINGER";
alt_name[3] = "SHARK-TO-SHARK";
alt_name[4] = "FEEBLE PRINCE";
alt_name[5] = "HEARTS!";
alt_name[6] = "DIAMONDS!";
alt_name[7] = "COMPLAISANT KING";
alt_name[8] = "SIDE ACT";
alt_name[9] = "PISSING ME OFF, OFF!";;
alt_name[10] = "SIMPLE PUPPET";
alt_name[11] = "HELL BRINGER";
alt_name[12] = "CLOWN PRINCE OF CHAOS!";
alt_name[13] = "CORRUPTED CAREGIVER";
alt_name[14] = "CLOWN GONE ASTRAY";
alt_name[15] = "MADNESS, MADNESS!";
alt_name[16] = "CLOWN CONFINED IN CODE";
alt_name[17] = "NOW, I CAN DO ANYTHING!";
alt_name[18] = "FOOL OF PROPHECY";
alt_name[19] = "UNMAPPED, UNMAPPED!";
alt_name[20] = "Megaman";

alt_cur = 0; //checks current alt
alt_prev = 0; //checks previous alt
alt_total = array_length(11); //sets the alt total depending on the amount of alt names provided



//ANIMATION VARS
//ANIMATION VARS
sprite_change_offset("idle", 35, 70);

preview_idle = sprite_get("idle");
preview_scale = 0; //depends on if we have small sprites on, if we do, type 2, if not type 1
preview_anim_speed = 0.18; //should mimic "idle_anim_speed" - controls the sprites animation speed



//used by the milestone alt's mask
mask_anim_speed = 0.15;
mask_move_x = 0.05;
mask_move_y = -0.15;