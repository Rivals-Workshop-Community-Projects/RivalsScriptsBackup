///

if introhit = 0 {
	introhit = -1
}
intro = 1

if nshit == -10 {
    nshit = 0
}

move_cooldown[AT_USPECIAL] = 0 ;
move_cooldown[AT_FSPECIAL] = 0 ;
move_cooldown[AT_DSPECIAL] = 0 ;
move_cooldown[AT_NSPECIAL] = 0 ;

if soultimer < -1 {
	sound_play(asset_get("sfx_holy_lightning"))	
take_damage( player, -1 , floor(-1 * enemy_hitboxID.damage))
souldmg += enemy_hitboxID.damage



}

if karmatimer > 0 {

 karma -= floor(enemy_hitboxID.damage)

}

