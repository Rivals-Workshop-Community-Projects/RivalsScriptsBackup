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
prat_land_time = 15;

if enemy_hitboxID.type == 1 {
						outline_color = [0, 0, 0]
                     	init_shader();
                         spawn_hit_fx (x,y -30 , 302 )
                         spawn_hit_fx (x,y - 30, wh )
                         spawn_hit_fx (x,y - 30, bh )
                     	sound_play(asset_get("sfx_holy_lightning"))
                     	sound_play(sound_get("slicen"))
                     	
                     	
                     x = soulx 
                     y = souly 
                     spr_dir = souldir

                if admw == 4 {
                	admb = 3
                	admw = 0
                } else if admb = 3 {
                	admb = 0
                	admw = 4
                }  
                
                move_cooldown[AT_DSPECIAL] = 0
                hsp = 0
                vsp = 0
                set_attack (AT_DSPECIAL)
                window = 4
                window_timer = 0
                soultimer = 0
}
}


if karmatimer > 0 {

 karma -= floor(enemy_hitboxID.damage)

}

