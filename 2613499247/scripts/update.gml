user_event(9);

if (!free or state == PS_WALL_JUMP){
    move_cooldown[AT_UAIR] = 0;
    move_cooldown[AT_NAIR] = 0;
}
if(state_cat == SC_HITSTUN)
{
  move_cooldown[AT_NAIR] = 0;

}

//Uair giving double jump back fix
if (djumps >=  1 || uairDoubleJump = 1) {
    uairDoubleJump = 1
    djumps = 1
    if (!free) {
        uairDoubleJump = 0
    }
}