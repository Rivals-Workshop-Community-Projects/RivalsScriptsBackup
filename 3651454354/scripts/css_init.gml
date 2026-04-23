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
alt_name[7] = "HEARTS AND DIAMONDS!";
alt_name[8] = "COMPLAISANT KING";
alt_name[9] = "SIDE ACT";
alt_name[10] = "PISSING ME OFF, OFF!";;
alt_name[11] = "TRUE AND RETRO CHAOS";
alt_name[12] = "USELESS BIRD";
alt_name[13] = "SIMPLE PUPPET";
alt_name[14] = "BURNING, BURNING!";
alt_name[15] = "DARK, DARKER!";
alt_name[16] = "Yet Darker.";
alt_name[17] = "CLOWN PRINCE OF CHAOS!";
alt_name[18] = "CORRUPTED CAREGIVER";
alt_name[19] = "CLOWN GONE ASTRAY";
alt_name[20] = "MADNESS, MADNESS!";
alt_name[21] = "CLOWN CONFINED IN CODE";
alt_name[22] = "NOW, I CAN DO ANYTHING!";
alt_name[23] = "FOOL OF PROPHECY";
alt_name[24] = "END BEYOND CHAOS";
alt_name[25] = "CARTOON CARNIVAL";
alt_name[26] = "LUCK OF THE DRAW";
alt_name[27] = "CIRCUS CLOWN";
alt_name[28] = "LOOSE CANNON";
alt_name[29] = "LALI-HO!";
alt_name[30] = "UNMAPPED, UNMAPPED!";
alt_name[31] = "METAL BOY";

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

//TAG ALTS
//========================
tag_alt = 0;

tag_alt_names = [
"UNMAPPED, UNMAPPED!",
"GAME OF CHANCE",
"ILLUSION OF CHOICE",
"???",
"DIAMONDS ARE FOREVER",
];

//custom tag alt array because dan is fucking stupid and doing "get_color_profile_slot(32+" works ingame but crashes CSS
//stolen with love from floppos clood everybody say thank you floppo
alt_arrays = [
[ //Unmapped
[80, 50, 105],
[42, 34, 49],
[157, 168, 194],
[216, 179, 0],
[84, 169, 21],
[61, 57, 107],
[179, 172, 192],
[255, 254, 164],
],
[ //Mutt
[48, 17, 40],
[67, 23, 56],
[253, 253, 253],
[255, 195, 148],
[187, 115, 161],
[242, 211, 186],
[212, 163, 194],
[241, 226, 153],
],
[ //Flop
[91, 235, 173],
[104, 79, 179],
[251, 250, 255],
[255, 82, 174],
[245, 212, 120],
[78, 61, 128],
[255, 122, 235],
[245, 212, 120],
],
[ //Cheez
[255, 204, 254],
[242, 143, 222],
[255, 224, 196],
[120, 19, 78],
[83, 65, 102],
[227, 179, 89],
[114, 194, 240],
[255, 132, 0],
],
[ //Vi
[75, 70, 73],
[53, 47, 51],
[163, 85, 194],
[28, 205, 67],
[255, 22, 234],
[28, 205, 67],
[255, 22, 234],
[255, 231, 0],
],
];