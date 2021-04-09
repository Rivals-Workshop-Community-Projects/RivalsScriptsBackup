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


if souldmg > 35 {
				outline_color = [0, 0, 0]
	init_shader();
    spawn_hit_fx (x,y -30 , 302 )
    spawn_hit_fx (x,y - 30, wh )
    spawn_hit_fx (x,y - 30, bh )
	sound_play(asset_get("sfx_holy_lightning"))
	sound_play(sound_get("slicen"))
	sound_play(sound_get("strong1"))
soultimer = 0
    has_walljump = false 

x = soulx
y = souly
    vsp = -7
    hsp = 0
    spawn_hit_fx (x,y -30 , 302 )
    spawn_hit_fx (x,y - 30, wh )
    spawn_hit_fx (x,y - 30, bh )
set_state(PS_PRATFALL)
prat_land_time = 150;
take_damage(player,-1,15)
}



}

if karmatimer > 0 {

 karma -= floor(enemy_hitboxID.damage)

}

