///

if boostedparry > 1 {
	boostedparry = 0
	
	 
	 with hit_player_obj {
	 	take_damage(player,-1,15)
	 	hitstop += 10
	 }
	 hitstop += 10
		sound_play(asset_get("sfx_absa_kickhit"));
		sound_play(asset_get("sfx_ori_energyhit_heavy"),false,noone,1,0.7);
		fx = spawn_hit_fx(x - 6*spr_dir,y - 50,304)
    	fx.pause = 12
    	
    	fx1 = spawn_hit_fx(x - 6*spr_dir + 30,y - 50,306)
    	fx1.pause = 12
    	fx2 = spawn_hit_fx(x - 6*spr_dir - 30,y - 50,306)
    	fx2.pause = 12
    	fx3 = spawn_hit_fx(x - 6*spr_dir,y - 80,306)
    	fx3.pause = 12
    	fx4 = spawn_hit_fx(x - 6*spr_dir,y - 20,306)
    	fx4.pause = 12

}



if my_hitboxID.attack == AT_FSPECIAL && move_cooldown [AT_NAIR] > 0 {
    move_cooldown [AT_NAIR] = 0
    move_cooldown [AT_BAIR] = 105
    fxchad2 = spawn_hit_fx( floor((hit_player_obj.x + x)/2) + 10*spr_dir, floor((hit_player_obj.y + y)/2) - 40, i5) 
   fxchad2.depth = 5
}

if my_hitboxID.attack == AT_FSPECIAL && move_cooldown [AT_BAIR] > 0 {

     //spawn_hit_fx( floor((hit_player_obj.x + x)/2) + 10*spr_dir, floor((hit_player_obj.y + y)/2) - 40, 305) 

}


if ltrain < 95 {
    ltrain += my_hitboxID.damage/5
}
if btrain < 95 {
    btrain += my_hitboxID.damage/10
}
if atrain < 95 {
    atrain += my_hitboxID.damage/5
}
if htrain < 95 {
    htrain += my_hitboxID.damage/5
}

if my_hitboxID.attack == AT_DAIR && my_hitboxID.hbox_num > 1 {
    
    fxchad1 = spawn_hit_fx(x,y,npsp)
    fxchad1.depth = -100
}

if my_hitboxID.attack == AT_DSTRONG  {
    
shake_camera(8,8)

}

if my_hitboxID.attack == AT_FSPECIAL  {
    
    hsp = 0

    sound_play(asset_get("sfx_absa_kickhit"))
}



if my_hitboxID.attack == AT_FSTRONG  {
    
sound_play(asset_get("sfx_absa_kickhit"))

}

if my_hitboxID.attack == AT_USPECIAL && my_hitboxID.hbox_num > 1 {
  should_make_shockwave = false   
}


if ltrain < 100 {
if my_hitboxID.attack == AT_DAIR or my_hitboxID.attack == AT_DTILT or my_hitboxID.attack == AT_DSPECIAL or my_hitboxID.attack == AT_DSTRONG {
    
    if my_hitboxID.sound_effect == asset_get("sfx_blow_heavy2") {
        sound_stop(asset_get("sfx_blow_heavy2"))
        sound_play(asset_get("sfx_blow_medium2"),false,noone,1.2,.9)
    }    
    if my_hitboxID.sound_effect == asset_get("sfx_blow_heavy1") {
        sound_stop(asset_get("sfx_blow_heavy1"))
        sound_play(asset_get("sfx_blow_medium1"),false,noone,1.2,.9)
    } 
    
    
    ltrain += my_hitboxID.damage/1.5
}

if my_hitboxID.attack == AT_EXTRA_1 && my_hitboxID.hbox_num == 7{
    fxlup = spawn_hit_fx(hit_player_obj.x,y - 120,lup)
    fxlup.depth = -100
    sound_play(asset_get("sfx_coin_collect"))
    ltrain += 10
}

} else {
    
    if my_hitboxID.attack == AT_DAIR or my_hitboxID.attack == AT_DTILT or my_hitboxID.attack == AT_DSPECIAL or my_hitboxID.attack == AT_DSTRONG {
  
    if my_hitboxID.kb_scale >= .7 or my_hitboxID.attack == AT_DAIR  {
		 sound_play(asset_get("sfx_kragg_rock_shatter"),false,noone,.5 + my_hitboxID.damage/10 , 1.6 - min((hit_player_obj.hitstop*hit_player_obj.hitstop)/130 , 1) )
    } else {
		 sound_play(asset_get("sfx_kragg_rock_land"),false,noone,.4 + my_hitboxID.damage/10 , 1.6 - min((hit_player_obj.hitstop*hit_player_obj.hitstop)/130 , 1) )
    }
    
    }
    
    if my_hitboxID.attack == AT_EXTRA_1 && my_hitboxID.hbox_num == 7{
    sound_play(asset_get("sfx_blow_heavy2"),false,noone,1,.8)
   }
   
}

if htrain < 100 && hit_player_obj != self {
if my_hitboxID.attack == AT_UAIR or my_hitboxID.attack == AT_UTILT or my_hitboxID.attack == AT_USPECIAL or my_hitboxID.attack == AT_USTRONG {
  
    if my_hitboxID.sound_effect == asset_get("sfx_blow_heavy2") {
        sound_stop(asset_get("sfx_blow_heavy2"))
        sound_play(asset_get("sfx_blow_medium2"),false,noone,1.2,.9)
    }    
    if my_hitboxID.sound_effect == asset_get("sfx_blow_heavy1") {
        sound_stop(asset_get("sfx_blow_heavy1"))
        sound_play(asset_get("sfx_blow_medium1"),false,noone,1.2,.9)
    } 
    
    htrain += my_hitboxID.damage/1.5
}

if my_hitboxID.attack == AT_EXTRA_1 && my_hitboxID.hbox_num == 6{
    fxhup = spawn_hit_fx(hit_player_obj.x,y - 120,hup)
    fxhup.depth = -100
    sound_play(asset_get("sfx_coin_collect"))
    htrain += 10
}

} else {
   if my_hitboxID.attack == AT_UAIR or my_hitboxID.attack == AT_UTILT or my_hitboxID.attack == AT_USPECIAL or my_hitboxID.attack == AT_USTRONG {

    if my_hitboxID.kb_scale >= .7 {
		 sound_play(asset_get("sfx_kragg_rock_shatter"),false,noone,.5 + my_hitboxID.damage/10 , 1.6 - min((hit_player_obj.hitstop*hit_player_obj.hitstop)/130 , 1) )
    } else {
		 sound_play(asset_get("sfx_kragg_rock_land"),false,noone,.4 + my_hitboxID.damage/10 , 1.6 - min((hit_player_obj.hitstop*hit_player_obj.hitstop)/130 , 1) )
    }
   }  
    if my_hitboxID.attack == AT_EXTRA_1 && my_hitboxID.hbox_num == 6{
    sound_play(asset_get("sfx_blow_heavy2"),false,noone,1,.8)
   }
   
}

if atrain < 100 {
if my_hitboxID.attack == AT_BAIR or my_hitboxID.attack == AT_FAIR or my_hitboxID.attack == AT_FTILT or my_hitboxID.attack == AT_FSPECIAL or my_hitboxID.attack == AT_FSTRONG or my_hitboxID.attack == AT_DATTACK{
        
    if my_hitboxID.sound_effect == asset_get("sfx_blow_heavy2") {
        sound_stop(asset_get("sfx_blow_heavy2"))
        sound_play(asset_get("sfx_blow_medium2"),false,noone,1.2,.9)
    }    
    if my_hitboxID.sound_effect == asset_get("sfx_blow_heavy1") {
        sound_stop(asset_get("sfx_blow_heavy1"))
        sound_play(asset_get("sfx_blow_medium1"),false,noone,1.2,.9)
    } 
    
  if  move_cooldown [AT_NAIR] == 0 && move_cooldown [AT_BAIR] == 0 {  
    atrain += my_hitboxID.damage/1.5
  }
}

if my_hitboxID.attack == AT_EXTRA_1 && my_hitboxID.hbox_num == 2{
    fxaup = spawn_hit_fx(hit_player_obj.x,y - 120,aup)
    fxaup.depth = -100
    sound_play(asset_get("sfx_coin_collect"))
    atrain += 10
}

} else {
   if my_hitboxID.attack == AT_BAIR or my_hitboxID.attack == AT_FAIR or my_hitboxID.attack == AT_FTILT or my_hitboxID.attack == AT_FSPECIAL or my_hitboxID.attack == AT_FSTRONG or my_hitboxID.attack == AT_DATTACK{

    if my_hitboxID.kb_scale >= .5 {
		 sound_play(asset_get("sfx_kragg_rock_shatter"),false,noone,.5 + my_hitboxID.damage/10 , 1.6 - min((hit_player_obj.hitstop*hit_player_obj.hitstop)/130 , 1) )
    } else {
		 sound_play(asset_get("sfx_kragg_rock_land"),false,noone,.4 + my_hitboxID.damage/10 , 1.6 - min((hit_player_obj.hitstop*hit_player_obj.hitstop)/130 , 1) )
    }
    
  }
    
    if my_hitboxID.attack == AT_EXTRA_1 && my_hitboxID.hbox_num == 2{
    sound_play(asset_get("sfx_blow_heavy2"),false,noone,1,.8)
   }
   
}

if btrain < 100 {
if my_hitboxID.attack == AT_NAIR or my_hitboxID.attack == AT_JAB {
    btrain += my_hitboxID.damage/1.5
}

if my_hitboxID.attack == AT_EXTRA_1 && my_hitboxID.hbox_num == 1{
    fxbup = spawn_hit_fx(hit_player_obj.x,y - 120,bup)
    fxbup.depth = -100
    sound_play(asset_get("sfx_absa_kickhit"))
    sound_play(asset_get("sfx_coin_collect"))
    btrain += 10
}

} else {
    
    if my_hitboxID.attack == AT_NAIR or my_hitboxID.attack == AT_JAB {
       sound_play(asset_get("sfx_kragg_rock_land"),false,noone,.4 + my_hitboxID.damage/10 , 1.6 - min((hit_player_obj.hitstop*hit_player_obj.hitstop)/130 , 1) )
    }
    
    if my_hitboxID.attack == AT_EXTRA_1 && my_hitboxID.hbox_num == 1{
    sound_play(asset_get("sfx_blow_heavy2"),false,noone,1,.8)
   }
   
}


if "cosmicman" in self {
	if uped >= 3 {
	playhitsound = 60
	echo = my_hitboxID.sound_effect
	} 
	if uped >= 4 {
	 sound_play(asset_get("sfx_bird_downspecial"),false,noone,min(.8, hit_player_obj.hitstop*hit_player_obj.hitstop/150), 2.2 - min(1.5, 1 + hit_player_obj.hitstop*hit_player_obj.hitstop/150) )
	}
}
