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

if (!free or state == PS_WALL_JUMP){
    move_cooldown[AT_UAIR] = 0;
    move_cooldown[AT_NAIR] = 0;
}
if(state_cat == SC_HITSTUN)
{
  move_cooldown[AT_NAIR] = 0;

}