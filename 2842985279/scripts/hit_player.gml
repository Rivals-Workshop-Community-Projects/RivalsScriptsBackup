//hitplayer

if (my_hitboxID.attack == unown_form_data[UNOWN_ATK.J].atk && my_hitboxID.hbox_num == 1)
{
    if (!instance_exists(unown_j_victim))
    {
        //track victim
        unown_j_victim = hit_player_obj;
        sound_play(sound_get("ssbm_grab"));
        //grab phase 2
        window = 4;
        window_timer = 0;
        destroy_hitboxes();
    }
}

else if (my_hitboxID.attack == UNOWN_ATK.Y && my_hitboxID.hbox_num == 2)
{
    var hfx = spawn_hit_fx(lerp(my_hitboxID.x, hit_player_obj.x, 0.5),
                           lerp(my_hitboxID.y, hit_player_obj.y, 0.5),
                                my_hitboxID.hit_effect);
}

else if (my_hitboxID.attack == UNOWN_ATK.G && my_hitboxID.hbox_num == 2)
{
    should_make_shockwave = false;
}


/*         
*                 ---------- hit_player.gml ------------
*       This file runs whenever you hit a player with a hitbox.
*       Useful for applying status effects or triggering on hit events.
*/


//EXAMPLE CODE FOR SLEEP
/*
if(my_hitboxID.attack == AT_FTILT and my_hitboxID.hbox_num == 1){
    sleep(30);
}
if(my_hitboxID.attack == AT_DTILT and my_hitboxID.hbox_num == 1){
	sound_play(sound_get("wheesh"));
    sleep(45);
}
//Using this code will make the first hitbox of your ftilt attack inflict sleep
//The durration of this sleep is the same as snake's sleep dart
*/
var sticky_ledge = true;

//sleep example
//sticky_ledge = sleep(300); //always set sticky ledge = to sleep if using a melee attack;

//End of hit_player.gml. write your code above this line------------------------
if(sticky_ledge) {sticky_ledge_protection()}
#define sleep(time) //This function sets people to sleep. Time is the base value for sleep, a good base value is 30.
{
    if(!hit_player_obj.super_armor and hit_player_obj.soft_armor == 0){
        with(hit_player_obj){
            if(!("ssl_sleep_lockout" in self) or ssl_sleep_lockout <= 0){
                orig_knock = 0;
                old_vsp = 0;
                old_hsp = 0;
                hitstun = 0;
                hitpause = 0;
                ssl_sleep_owner = other.player;
                if(!free){
                    was_parried = true;
                    parry_lag = max(20, floor((get_player_damage(player)+time)/2));
                    ssl_sleep_lag = parry_lag;
                    ssl_sleep_lockout = 10;
                    ssl_air_sleep = false;
                    set_state(PS_PRATLAND);
                    
                } else {
                    ssl_air_sleep = true;
                    ssl_sleep_lag = max(10, floor((get_player_damage(player)+time)/4))
                    set_state(PS_PRATFALL);
                }
            }
        }
    }
    return false;
}

#define sticky_ledge_protection()
{
   //sticky ledge protection, if you use a force flinch move disable this for that move
    if (my_hitboxID.type == 1 && hit_player_obj.free == false) {
         hit_player_obj.y -= 1;
    } 
}