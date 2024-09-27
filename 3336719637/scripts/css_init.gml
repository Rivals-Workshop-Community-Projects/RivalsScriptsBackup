//css_init.gml
//every script that has the word "init" will run only for the first frame of the "update" of it
//this script is used to assign character select screen variables
//css_init.gml runs as soon as the character loads in on the character select screen
//NOTE: CSS is short for Character Select Screen

css_anim_time = 0;

//set these positions in css_update, not here
icon_x_pos = 0; //icon placement for the event/unlock based alts from rivals
icon_y_pos = 0;
preview_x = 50; //preview char
preview_y = 84;



//ALT NAMES
//seasonal alt names
season_name[1] = "V-day";
season_name[2] = "Summer";
season_name[3] = "Halloween";
season_name[4] = "Christmas";

//alts
//there can be a total of 32 (0 - 31) alts normally
alt_name[0] = "Iris";
alt_name[1] = "Blue";
alt_name[2] = "Red";
alt_name[3] = "Green";
alt_name[4] = "Black";
alt_name[5] = "Pink";
alt_name[6] = "Abyss";
alt_name[7] = "Early Access";
alt_name[8] = "Mistaken Identity";
alt_name[9] = "Queen Bee";
alt_name[10] = "Acrid?";
alt_name[11] = "Stinker";
alt_name[12] = "Otherworld";

//everything in between abyss and gold rank alts can be anything, i just like to put these in this pattern
//if you change it don't forget to change the icon order!
alt_name[13] = "Madness"; //has the abyss death effect
alt_name[14] = "YipYapper";
alt_name[15] = "Replayer";
alt_name[16] = "Hired Blade"; //it uses the season_name array above
alt_name[17] = "No More Rivals";
alt_name[18] = "Virtual Esc"; //has the shiny effect

alt_name[19] = "Swordie Skunk";
alt_name[20] = "Savagenic";
alt_name[21] = "Wild Assault";
alt_name[22] = "Indigo Villain";
alt_name[23] = "Chickenhare Guide";
alt_name[24] = "Tumble and Rough";
alt_name[25] = "Skunk of the Titans";
alt_name[26] = "Perfume Seller";
alt_name[27] = "Pearl and Diamond";
alt_name[28] = "Fuming Decepticon";
alt_name[29] = "Scooter Skunk";
alt_name[30] = "Slacker Yokai";
alt_name[31] = "Black Fit";

alt_cur = 0; //checks current alt
alt_prev = 0; //checks previous alt
alt_total = array_length(alt_name); //sets the alt total depending on the amount of alt names provided



//ANIMATION VARS
sprite_change_offset("idle", 46, 57); //should mimic the load.gml offsets

preview_idle = sprite_get("idle");
preview_scale = 2; //depends on if we have small sprites on, if we do, type 2, if not type 1
preview_anim_speed = 0.15; //should mimic "idle_anim_speed" - controls the sprites animation speed