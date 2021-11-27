///


   
   batt2 += (enemy_hitboxID.damage*2.8)/(max(1, (supply+1)/5 ))
   battfade = 45



if has_rune("F") {
 if state == PS_ATTACK_GROUND or state == PS_ATTACK_AIR {
     if attack == AT_TAUNT {
     	take_damage( player, -1 , -1 * enemy_hitboxID.damage)
     }
 }
	
}

///
if introhit = 0 {
	introhit = -1
}

intro = 1


if drop = 0 && hit_player_obj.url != 2154720280 && enemy_hitboxID.type == 1 {
drop = 40
if supply > 0  {
    supply -= 1
    create_hitbox(AT_FSPECIAL , 4 , x , y - 40 );
}

}



if hit_player_obj.url == 2154720280 && drop = 0 && enemy_hitboxID.type == 1 {
    
    if enemy_hitboxID.attack != AT_FSPECIAL and enemy_hitboxID.attack != AT_DSPECIAL and enemy_hitboxID.attack != AT_NSPECIAL {
        drop = 10
if supply > 0   {
    supply -= 1
    create_hitbox(AT_FSPECIAL , 4 , x , y - 40 );
}
} 
    
    
        if (enemy_hitboxID.attack == AT_FSPECIAL and enemy_hitboxID.hbox_num != 5) 
        or (enemy_hitboxID.attack == AT_DSPECIAL and enemy_hitboxID.hbox_num != 5) 
        or (enemy_hitboxID.attack == AT_NSPECIAL and enemy_hitboxID.hbox_num != 8) {
        drop = 10
if supply > 0  {
    supply -= 1
    create_hitbox(AT_FSPECIAL , 4 , x , y - 40 );
}
} 
    
    
}

move_cooldown[AT_USPECIAL] = 0 

move_cooldown[AT_DSPECIAL] = 0 





///
 ///2B please, no sfx_blow, no, no, it hurt me, just dont, AHHhhh
 if string_count("2b", string_lower( get_char_info(hit_player_obj.player, INFO_STR_NAME))) > 0 {

if enemy_hitboxID.attack != AT_NAIR and ((enemy_hitboxID.attack != AT_USPECIAL) or (enemy_hitboxID.attack ==  AT_USPECIAL && vsp > 0)) 
and ((enemy_hitboxID.attack != AT_FSTRONG) or (enemy_hitboxID.attack ==  AT_FSTRONG && enemy_hitboxID.hbox_num > 1)){
	
sound_stop(asset_get("sfx_blow_weak1"))
sound_stop(asset_get("sfx_blow_weak2"))
sound_stop(asset_get("sfx_blow_medium1"))
sound_stop(asset_get("sfx_blow_medium2"))
sound_stop(asset_get("sfx_blow_medium3"))
sound_stop(asset_get("sfx_blow_heavy1"))
sound_stop(asset_get("sfx_blow_heavy2"))

if enemy_hitboxID.damage < 4 {
   sound_play(asset_get("sfx_ori_energyhit_medium"),false,noone,0.4)
      sound_play(sound_get("slicel"))
}

if enemy_hitboxID.damage <= 8 and enemy_hitboxID.damage >= 4 {
	   sound_play(asset_get("sfx_ori_energyhit_medium"),false,noone,0.4)
	   	   sound_play(sound_get("slice"))
	spawn_hit_fx(x,y - 40, 303 )
}

if enemy_hitboxID.damage > 8 {
       sound_play(sound_get("sliceh2"))
	 	   sound_play(asset_get("sfx_ori_energyhit_heavy"))
	spawn_hit_fx(x,y - 40, 305 )
}
}
}