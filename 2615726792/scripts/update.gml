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

//====> NAIR #####################################################

/*
Rectify path when hitting the ground
*/
for (var i = 0; i < instance_number(pHitBox); ++i;)
{
    with (pHitBox)
    {
        if (player == other.player 
            && attack == AT_NAIR
            && hbox_num == 1)
        {
            if (!free)
            {
                sprite_index = sprite_get("jab_proj");
                hsp = 6 * spr_dir;
            }
        }
    }
}

//====> FAIR #####################################################
if (!free)
{
    move_cooldown[AT_FAIR] = 0;
}

//====> PREVIOUS FRAME VARIABLES #####################################################

pf_x = x;
pf_y = y;