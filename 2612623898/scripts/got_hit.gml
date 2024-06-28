/*----------------------- got_hit.gml -----------------------------
*
* This file runs whenever your character gets hit. 
*/

//This applies the defense modifier from init.gml to damage you take
if(enemy_hitboxID.damage > 1){
    var temp_damage_modification = floor(enemy_hitboxID.damage*(defense_modifier-1));
    if(enemy_hitboxID.damage - temp_damage_modification <= 0){
        temp_damage_modification = enemy_hitboxID.damage-1;
    }
    take_damage(player, enemy_hitboxID.player, temp_damage_modification);
}