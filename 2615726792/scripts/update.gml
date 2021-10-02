//====> SMASH LAND STUFF #####################################################

has_airdodge = false;
can_shield = false;
can_tech = false;
can_wall_tech = false;
clear_button_buffer(PC_SHIELD_PRESSED);
parry_cooldown = 5;
if(state == PS_ROLL_BACKWARD || state == PS_ROLL_FORWARD)
{
    set_state(PS_IDLE);
    sound_stop(asset_get("sfx_roll"));
}

old_spr_dir = spr_dir;

//====> JUMP #####################################################

if (state == PS_DOUBLE_JUMP)
{
    if (x < pf_x && spr_dir > 0) {  }
}

//====> PREVIOUS FRAME VARIABLES #####################################################

pf_x = x;
pf_y = y;