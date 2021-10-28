user_event(9);

if (!free or state == PS_WALL_JUMP){
    move_cooldown[AT_UAIR] = 0;
    move_cooldown[AT_NAIR] = 0;
}

if(state_cat == SC_HITSTUN)
{
  move_cooldown[AT_NAIR] = 0;
 move_cooldown[AT_UAIR] = 0;
}

//Uair giving double jump back fix
if (djumps >=  1 || uairDoubleJump = 1) {
    uairDoubleJump = 1
    djumps = 1
    if (!free) {
        uairDoubleJump = 0
    }
}


if move_cooldown[AT_NSPECIAL_2] == 0 && hit_player_obj != -4 {
       with oPlayer if (activated_kill_effect) {
       	
         if hit_player_obj == other {
                    with other {
                    	 sound_play(sound_get("vcGITGUD"),false,noone,1.2,1)	
                      move_cooldown[AT_NSPECIAL_2] = 150
                    }
          }
       }
       
       if (hit_player_obj.state == PS_RESPAWN or hit_player_obj.state == PS_DEAD) && move_cooldown[AT_NSPECIAL_2] = 0 {
           move_cooldown[AT_NSPECIAL_2] = 150
           sound_play(sound_get("vcHoho"),false,noone,.8,1)
       }

}