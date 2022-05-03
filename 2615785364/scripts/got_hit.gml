/*----------------------- got_hit.gml -----------------------------
*
* This file runs whenever your character gets hit. 
*/



//This applies the defense modifier from init.gml to damage you take
take_damage(player, enemy_hitboxID.player, floor(enemy_hitboxID.damage*(defense_modifier-1)));