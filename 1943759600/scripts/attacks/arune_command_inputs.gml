//i put an a before the name because attack scripts are run in alphabetical order

proj=1; //which version of super kiss is performed(1=normal, 0=super)
grabbedid=noone;
mash=0;
//face the enemy
looking=spr_dir;
noturn=false; //False to turn to enemy when possible
deactivate_turn=0;
//soft/hard attack variables
attack_input = 0; //how many frames youre holding the button to change to strong version
special_input = 0;

///input system variables
inputs = ds_list_create();
ds_list_add(inputs,[0,0,0,0,0]);

currentInput = [0,0,"0000"];

input_leniency = 12;
input_charge_time = 20;
input_time_covered = 0;
/*input_patterns = [
    [7,8,1],//qcf/qcb
    [7,6,5]
    ];*/
input_patterns = [
    [8,8],//lenDP
    [6,6],
    [1,7],//qcf/qcb
    [5,7],
    ];
input_prog = 0;
latest_pattern = 0;
current_success = 0;

can_command_input = false;
was_command_input = false;
move_variation = 0;

set_hitbox_value(AT_BAIR, 1, HG_HITBOX_ENABLE_COMMANDINPUT, 1);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_ENABLE_COMMANDINPUT, 1);

set_hitbox_value(AT_DAIR, 1, HG_HITBOX_ENABLE_COMMANDINPUT, 1);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_ENABLE_COMMANDINPUT, 1);

set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_ENABLE_COMMANDINPUT, 1);

set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_ENABLE_COMMANDINPUT, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_ENABLE_COMMANDINPUT, 1);
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_ENABLE_COMMANDINPUT, 1);
set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_ENABLE_COMMANDINPUT, 1);

set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_ENABLE_COMMANDINPUT, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_ENABLE_COMMANDINPUT, 1);

set_hitbox_value(AT_DTILT, 1, HG_HITBOX_ENABLE_COMMANDINPUT, 1);

set_hitbox_value(AT_FAIR, 1, HG_HITBOX_ENABLE_COMMANDINPUT, 1);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_ENABLE_COMMANDINPUT, 1);

set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_ENABLE_COMMANDINPUT, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_ENABLE_COMMANDINPUT, 1);

set_hitbox_value(AT_FTILT, 1, HG_HITBOX_ENABLE_COMMANDINPUT, 1);

set_hitbox_value(AT_JAB, 1, HG_HITBOX_ENABLE_COMMANDINPUT, 1);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_ENABLE_COMMANDINPUT, 1);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_ENABLE_COMMANDINPUT, 1);
set_hitbox_value(AT_JAB, 4, HG_HITBOX_ENABLE_COMMANDINPUT, 1);
set_hitbox_value(AT_JAB, 5, HG_HITBOX_ENABLE_COMMANDINPUT, 1);

set_hitbox_value(AT_NAIR, 1, HG_HITBOX_ENABLE_COMMANDINPUT, 1);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_ENABLE_COMMANDINPUT, 1);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_ENABLE_COMMANDINPUT, 1);

set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_HITBOX_ENABLE_COMMANDINPUT, 1);

set_hitbox_value(AT_UAIR, 1, HG_HITBOX_ENABLE_COMMANDINPUT, 1);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_ENABLE_COMMANDINPUT, 1);
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_ENABLE_COMMANDINPUT, 1);

set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_ENABLE_COMMANDINPUT, 1);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_ENABLE_COMMANDINPUT, 1);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_ENABLE_COMMANDINPUT, 1);
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_ENABLE_COMMANDINPUT, 1);

set_hitbox_value(AT_UTILT, 1, HG_HITBOX_ENABLE_COMMANDINPUT, 1);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_ENABLE_COMMANDINPUT, 1);