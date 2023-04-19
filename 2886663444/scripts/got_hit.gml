/*----------------------- got_hit.gml -----------------------------
*
* This file runs whenever your character gets hit. 
*/



//making uair's self-hitpause frame into a hurt sprite
if(enemy_hitboxID.player_id == self && enemy_hitboxID.attack == AT_NSPECIAL){
    image_index = 4;   
}
