///#args state
//  ^ this line up here makes gmedit not freak out

//set_state.gml
//this script runs every time a new state is changed

is_attacking = false; //attack check - it's never PS_ATTACK_GROUND or PS_ATTACK_AIR in set_state

//once per airtime resets
if (!free || state == PS_WALL_JUMP || state_cat == SC_HITSTUN || state == PS_DEAD || state == PS_RESPAWN)
{
    can_fspec = true;
}