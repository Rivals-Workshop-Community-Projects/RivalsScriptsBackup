///
move_cooldown[AT_USPECIAL] = 0
if inkshield {
if enemy_hitboxID.damage < 5 {    
sound_play(sound_get("RI2"))	
} else {
sound_play(sound_get("RI"))	   
}

move_cooldown[AT_EXTRA_1] = 60


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

spawn_hit_fx (x, y - 40, 304)
take_damage( player, -1 , floor(-0.5 * enemy_hitboxID.damage))
inkshield -= enemy_hitboxID.damage*5
x -= 20 * spr_dir
} else {
    sound_stop(sound_get("zoice_at1"))
    sound_stop(sound_get("zoice_at2"))
    sound_stop(sound_get("zoice_at3"))
  if enemy_hitboxID.damage > 3 {
      sound_stop(sound_get("zoice_hurt1"))
      sound_stop(sound_get("zoice_hurt2"))
      sound_stop(sound_get("zoice_hurt3"))
    switch random_func(1,3,true) {
    	     	case 0:
    	     	sound_play(sound_get("zoice_hurt1"),false,noone,zolume,zitch)
    	     	sound_play(sound_get("zoice_hurt1"),false,noone,zolume/2,zitch)
    	     	break;
    	     	
    	     	case 1 :
    	     	sound_play(sound_get("zoice_hurt2"),false,noone,zolume ,zitch)
    	     	sound_play(sound_get("zoice_hurt2"),false,noone,zolume/2 ,zitch)
    	     	break;
    	     	
    	     	case 2 :
    	     	sound_play(sound_get("zoice_hurt3"),false,noone,zolume ,zitch)
    	     	sound_play(sound_get("zoice_hurt3"),false,noone,zolume/2 ,zitch)
    	     	break;
    }
  }
}
sound_stop(asset_get("sfx_troupple_rumble"))

//if countering == 1 {
//    sound_play(asset_get("sfx_frog_fspecial_charge_gained_full"))
//             window = 2
//             window_timer = 9
//             create_hitbox(AT_EXTRA_3, 3, x, y)
//             spawn_hit_fx(x+70*spr_dir,y - 30, 304)
//             sound_play(sound_get("Fstrong"))
//             countering = 0
//}

if !super_armor {

if (hit_player_obj.attack == AT_FTILT or hit_player_obj.attack == AT_FAIR or hit_player_obj.attack == AT_DATTACK
   or hit_player_obj.attack == AT_BAIR or hit_player_obj.attack == AT_FSTRONG)
   && sidehit != 0{
    sidehit = 0
    allhit = 20
    take_damage(player,-1,1)
    sound_play(asset_get("sfx_waterhit_medium"),false,noone,1,1.1)

}

if (hit_player_obj.attack == AT_UTILT or hit_player_obj.attack == AT_UAIR or hit_player_obj.attack == AT_USTRONG)
   && uphit != 0{
    uphit = 0
    downhit = 0
    allhit = 20
    take_damage(player,-1,1)
    sound_play(asset_get("sfx_waterhit_medium"),false,noone,1,1.3)
}

if (hit_player_obj.attack == AT_DTILT or hit_player_obj.attack == AT_DAIR or hit_player_obj.attack == AT_DSTRONG)
   && downhit != 0{
    downhit = 0
    uphit = 0
    allhit = 20
    sound_play(asset_get("sfx_waterhit_medium"),false,noone,1,0.7)
}

if (hit_player_obj.attack == AT_JAB or hit_player_obj.attack == AT_NAIR)
   && neutralhit != 0{
    neutralhit = 0
    allhit = 20
    take_damage(player,-1,1)
    sound_play(asset_get("sfx_waterhit_medium"),false,noone,1,0.9)
}

} else {
    sound_play(sound_get("RI2"),false,noone,1,max(0.8, 1.6 - (hit_player_obj.hitpause*hit_player_obj.hitpause)/100))
    take_damage(player,-1, floor(enemy_hitboxID.damage*-0.5) )
}