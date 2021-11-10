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
//Using this code will make the first hitbox of your ftilt attack inflict sleep
//The durration of this sleep is the same as snake's sleep dart
*/

if(my_hitboxID.attack == AT_NAIR){
    old_vsp = -5;
}
//if(my_hitboxID.attack == AT_FAIR){
//   old_vsp = -5;
//}
if(my_hitboxID.attack == AT_DAIR){
    old_vsp = -5;
}

// heals damage to self:
if (attack == AT_DSPECIAL && window == 4) {
    set_player_damage( player, clamp(get_player_damage(player)-50, 0 , 999) ); 

    }


if(!hit_player_obj.super_armor and hit_player_obj.soft_armor == 0){
    if(my_hitboxID.attack == AT_FSPECIAL and my_hitboxID.hbox_num < 6){
        //print("ora")
        hit_player_obj.y = lerp(floor(hit_player_obj.y), y-90, .35);
    }
}