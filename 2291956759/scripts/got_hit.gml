///
move_cooldown[AT_USPECIAL] = 0


sound_stop(asset_get("sfx_troupple_rumble"))

if countering == 1 {
    sound_play(asset_get("sfx_frog_fspecial_charge_gained_full"))
             window = 2
             window_timer = 9
             create_hitbox(AT_EXTRA_3, 3, x, y)
             spawn_hit_fx(x+70*spr_dir,y - 30, 304)
             sound_play(sound_get("Fstrong"))
             countering = 0
}



if inkshield {
    
   if enemy_hitboxID.damage < 5 {    
   sound_play(sound_get("RI2"),false,noone,1,.8)	
   } else {
   sound_play(sound_get("RI"),false,noone,1,.8)	   
   }

take_damage(player,-1,enemy_hitboxID.damage*-1)


spawn_hit_fx (x, y - 40, 304)


	inkshield = -1

}
