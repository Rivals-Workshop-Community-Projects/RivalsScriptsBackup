////

//if sagemode >= 0 and sagemode < 5 and  hit_player_obj != self and ((my_hitboxID.attack == AT_FSTRONG or my_hitboxID.attack == AT_DSTRONG or my_hitboxID.attack == AT_USTRONG or my_hitboxID.attack == AT_FSPECIAL ) 
//or (my_hitboxID.attack == AT_NSPECIAL && my_hitboxID.hbox_num <= 6) or (my_hitboxID.attack == AT_USPECIAL && my_hitboxID.hbox_num == 2)) {


if sagemode >= 0 and sagemode <= 5 and  move_cooldown[AT_EXTRA_3] = 0 and hit_player_obj != self{
    if sagemode == 0 {
    sagefx1 = hit_player_obj.x
    sagefy1 = hit_player_obj.y
    }
    if sagemode == 1 {
    sagefx2 = hit_player_obj.x
    sagefy2 = hit_player_obj.y
    }
    if sagemode == 2 {
    sagefx3 = hit_player_obj.x
    sagefy3 = hit_player_obj.y
    }
    if sagemode == 3 {
    sagefx4 = hit_player_obj.x
    sagefy4 = hit_player_obj.y
    }
    if sagemode == 4 {
    sagefx5 = hit_player_obj.x
    sagefy5 = hit_player_obj.y
    }
    
    if sagemode == 5 {
            sound_play(sound_get("sage"),false,noone,1.2)
    sound_play(asset_get("sfx_absa_whip3"),false,noone,1)
    sound_play(asset_get("sfx_bird_downspecial"),false,noone,1)
                    spawn_hit_fx(x, y - 36, 306)
    }

//sagemode += 1

if my_hitboxID.attack == AT_FSTRONG {
    move_cooldown[AT_EXTRA_3] = 40 
} else {
    move_cooldown[AT_EXTRA_3] = 20 
}

}

if (my_hitboxID.attack == AT_FSTRONG or my_hitboxID.attack == AT_DSTRONG or my_hitboxID.attack == AT_USTRONG) {
    

            if voiced == 1 {
               sound_play(sound_get("bat2"),false,noone,1)	
            } else {
                sound_play(asset_get("sfx_blow_heavy1"),false,noone,1.4,0.8)	
            }

}

if (my_hitboxID.attack == AT_FAIR and my_hitboxID.damage == 12 ) {
    
            if voiced == 1 {
               sound_play(sound_get("bat2"),false,noone,1)	
            } else {
                sound_play(asset_get("sfx_blow_heavy1"),false,noone,1.2,0.8)		
            }

}

if my_hitboxID.type == 1 && my_hitboxID.damage >= 8 {
    sound_play(asset_get("sfx_kragg_rock_land"),false,noone, 0.7 + my_hitboxID.damage/20, 1.1 - random_func(5,20,true)/100)


   if get_gameplay_time() %2 == 0 {
            sound_play(asset_get("sfx_shovel_hit_heavy2"),false,noone, 0.5 + my_hitboxID.damage/20,  min(1, 2.2 - min((hitstop*hitstop)/120,1.8)) )
   } else {
       sound_play(asset_get("sfx_shovel_hit_med2"),false,noone, 0.5 + my_hitboxID.damage/20,  min(1, 2.2 - min((hitstop*hitstop)/120,1.8)) )
   }
   
}

if my_hitboxID.attack == AT_NSPECIAL && my_hitboxID.hbox_num <= 3 {
    
    my_hitboxID.vsp = -7
             	my_hitboxID.hsp *= -0.4
             	my_hitboxID.spr_dir *= -1
             	my_hitboxID.hitbox_timer = 20
             	my_hitboxID.y -= 2
             	my_hitboxID.batted = 0
             	
    if my_hitboxID.hbox_num == 1  {
        spawn_hit_fx(my_hitboxID.x, my_hitboxID.y - 10, 301 )
    }
    if my_hitboxID.hbox_num == 2  {
        spawn_hit_fx(my_hitboxID.x, my_hitboxID.y - 10, 305 )
    }
    if my_hitboxID.hbox_num == 3 {
        spawn_hit_fx(my_hitboxID.x, my_hitboxID.y - 10, 306 )
    }
}

if my_hitboxID.attack == AT_NSPECIAL && my_hitboxID.hbox_num <= 6 {
    
    

   

   if get_gameplay_time() %2 == 0 {
            sound_play(asset_get("sfx_blow_heavy1"),false,noone, 0.5 + my_hitboxID.damage/20)  
   } else {
          sound_play(asset_get("sfx_blow_heavy2"),false,noone, 0.5 + my_hitboxID.damage/20)  
   }
   
   if get_player_color(player) == 13  {
    sound_play(asset_get("sfx_waterhit_heavy"),false,noone, 0.6 + my_hitboxID.damage/20)  
   }
   
   if get_player_color(player) == 16 {
    sound_play(sound_get("shot1"),false,noone,.7)
    sound_play(sound_get("death"),false,noone,.6,1.4)
    }
    
   
    if get_player_color(player) == 21 {
           sound_stop(sound_get("Lycahit"))	
          sound_play(sound_get("Lycahit"),false,noone,1.2,0.8)
    }
    
    if get_player_color(player) == 22  {
       sound_play(sound_get("vineboom"),false,noone, 1)  
       
   }
    

}

if my_hitboxID.attack == AT_NSPECIAL && my_hitboxID.hbox_num == 4 {
  create_hitbox(AT_NSPECIAL, 12 ,hit_player_obj.x,hit_player_obj.y - 40)
}

if my_hitboxID.attack == AT_NSPECIAL && my_hitboxID.hbox_num == 5 {
  create_hitbox(AT_NSPECIAL, 13 ,hit_player_obj.x,hit_player_obj.y - 40)
}
if my_hitboxID.attack == AT_NSPECIAL && my_hitboxID.hbox_num == 6 {
  create_hitbox(AT_NSPECIAL, 14 ,hit_player_obj.x,hit_player_obj.y - 40)
}

if my_hitboxID.attack == AT_DSPECIAL {
    //create_hitbox(AT_NSPECIAL, 2, hit_player_obj.x, hit_player_obj.y - 30)
    
}


