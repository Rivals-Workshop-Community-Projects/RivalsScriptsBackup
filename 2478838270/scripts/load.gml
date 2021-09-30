/*=========================================
CREDITS LIST
===========================================

IDEAS / GROOVES - SCRIBEAWOKEN
SPRITES - REGINA REFORGED
L-GROOVE PROGRAMMING - EQUINOXDOODLES
ANNOUNCER SOUNDS RIPPED BY MYSTICUS, PINGUS! FROM SOUNDS RESOURCE

===========================================
COMPAT LIST
-------------------------------------------
(General)
groove_hud_x / groove_hud_y
These can be set to adjust position to fit better with your hud elements

-------------------------------------------
(L-Groove)
lgroove_can_clutch - 
Can be set to 0 - 1 for during any attacks/specials to allow turnaround.

lgroove_strong -
Can be set to any attack, allows use and charging mid-air when strong is pressed.

-------------------------------------------
(E-Groove)
egroove_custom_action - 
Will be set to 1, if it detects this variable in your character it will turn that to 1
You can set your custom action by creating an if function. Otherwise, you will get a shorthop.
=========================================*/

temp_player  = -1;
temp_players = 0;
temp_count   = 0;
players_on   = 0;
player_count = 0;
players_ready = true;
sfx_move = 0;
sfx_select = 0;
sfx_cancel = 0;
groove_timer = 0;

sfx_announcer = 0;
announcer_say =  0;
announcer_timer = 0;
sfx_roundstart[0] = sound_get("round_start0");
sfx_roundstart[1] = sound_get("round_start1");
sfx_roundstart[2] = sound_get("round_start2");
sfx_roundstart[3] = sound_get("round_start3");

clone_comp = false;

//GROOVE STUFF
//0- D(an Fornace)
//1- B(rawlhalla)
//2- L(iquidicity)
//3- M(SLAYERS FOR HIRE)
//4- V(ortex Games)
//5- E(arth Romancer)
//6- H(al Labatories)
//7- N(intendo)

//Name
groove_name[0] = "D-Groove";
groove_name[1] = "B-Groove";
groove_name[2] = "L-Groove";
groove_name[3] = "M-Groove";
groove_name[4] = "V-Groove";
groove_name[5] = "E-Groove";
groove_name[6] = "H-Groove";
groove_name[7] = "N-Groove";

//Sprite
groove_sprite[0] = sprite_get("dgroove");
groove_sprite[1] = sprite_get("bgroove");
groove_sprite[2] = sprite_get("lgroove");
groove_sprite[3] = sprite_get("mgroove");
groove_sprite[4] = sprite_get("vgroove");
groove_sprite[5] = sprite_get("egroove");
groove_sprite[6] = sprite_get("hgroove");
groove_sprite[7] = sprite_get("ngroove");
groove_pick = sprite_get("select");

sprite_change_offset("select", 0, -30)
sprite_change_offset("GrooveWheel", 244, 148)
