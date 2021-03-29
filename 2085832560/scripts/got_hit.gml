move_cooldown[AT_USPECIAL] = 0 ;
move_cooldown[AT_DSPECIAL] = 0 ;
if introhit = 0 {
	introhit = -1
}
intro = 1

 if drops == 1 && droptime = 0{   
 	droptime = 40
    if attack == AT_NAIR  or attack == AT_UAIR or attack == AT_DTILT or attack == AT_FTILT and window < 5{
        sound_play(sound_get("exp1"));
        take_damage(player, -1, 4)
		var exp1 = hit_fx_create( sprite_get( "exp1" ), 32 );
		spawn_hit_fx( x , y - 40 , 304 )
		
    }
    
     if attack == AT_FSTRONG or attack == AT_USTRONG or attack == AT_DSTRONG {
        sound_play(sound_get("exp1"));
        take_damage(player, -1, 5)
		var exp1 = hit_fx_create( sprite_get( "exp1" ), 32 );
		spawn_hit_fx( x , y - 40 , 306 )
    }
    
    if attack == AT_FSPECIAL or attack == AT_USPECIAL {
        sound_play(sound_get("exp2"));
        take_damage(player, -1, 6)
		var exp1 = hit_fx_create( sprite_get( "exp1" ), 32 );
		spawn_hit_fx( x , y - 40 , exp1 )
    }
    
        
    if attack == AT_EXTRA_1 or attack == AT_EXTRA_2 {
        sound_play(sound_get("QSGF"));
        sound_play(sound_get("exp2"));
        take_damage(player, -1, 8)
		var exp2 = hit_fx_create( sprite_get( "exp2" ), 32 );
		spawn_hit_fx( x , y - 60 , exp2 )
    }
    
    drops = 0
    
 }
 
 
 

 
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