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



///if inkshield {
///if enemy_hitboxID.damage < 5 {    
///sound_play(sound_get("RI2"))	
///} else {
///sound_play(sound_get("RI"))	   
///}
///
///move_cooldown[AT_EXTRA_1] = 60
///
///
///spawn_hit_fx (x, y - 40, 304)
///inkshield -= enemy_hitboxID.damage*5
///}
