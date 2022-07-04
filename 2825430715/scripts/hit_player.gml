///
 if my_hitboxID.type == 1 { 
   hitted = true 
 }
 
if my_hitboxID.kb_scale >= .4 && my_hitboxID.attack != AT_USPECIAL {
		 sound_play(asset_get("sfx_kragg_rock_shatter"),false,noone,.4 + my_hitboxID.damage/30 , 1.6 - min((hit_player_obj.hitstop*hit_player_obj.hitstop)/130 , 1) )
} 

if my_hitboxID.attack == AT_UAIR or my_hitboxID.attack == AT_FSPECIAL or my_hitboxID.attack == AT_USPECIAL 
or my_hitboxID.attack == AT_NSPECIAL or (my_hitboxID.attack == AT_DSTRONG && my_hitboxID.hbox_num == 1) or my_hitboxID.attack == AT_FTILT
or my_hitboxID.attack == AT_DSPECIAL {
	if my_hitboxID.type == 1 {
	with hit_player_obj {
		take_damage(player,-1,other.hasbody + other.hasmind + other.hasbalance)
	}
	}
	
}



if my_hitboxID.attack == AT_BAIR  {
 sound_play(asset_get("sfx_kragg_rock_land"),false,noone,.8,1.15)
}

if my_hitboxID.attack == AT_UAIR  {
 galaxplayer = hit_player_obj
}


if my_hitboxID.attack == AT_JAB{
   if hit_player_obj.y < y {
   	 hit_player_obj.y += floor ((y - hit_player_obj.y)/2)
   }
}

if my_hitboxID.attack == AT_FSTRONG {
   if  my_hitboxID.hbox_num == 1 {
       move_cooldown[AT_FSTRONG] = 60
       sound_stop(sound_get("RI"))
      sound_play(sound_get("RI"),false,noone,.7,1)
   }
   
   if my_hitboxID.hbox_num == 3 && hit_player_obj.state_cat == SC_HITSTUN {
      set_attack_value(AT_FSTRONG, AG_STRONG_CHARGE_WINDOW, 0);
   }
   
}



if my_hitboxID.attack == AT_NSPECIAL {
    sound_stop(sound_get("RI"))
      sound_play(sound_get("RI"),false,noone,.7,1)
}

if my_hitboxID.attack == AT_FTILT {
    sound_stop(sound_get("RI"))
       sound_play(sound_get("RI"),false,noone,.7,.95)
}
   
if my_hitboxID.attack == AT_USTRONG {
   if  my_hitboxID.hbox_num == 1 {
       sound_stop(sound_get("RI"))
       sound_play(sound_get("RI"),false,noone,.7,1)
   }
   
   if  my_hitboxID.hbox_num == 2 {
       sound_stop(sound_get("RI")) 
       sound_play(sound_get("RI"),false,noone,.7,.9)
   }
   
   if  my_hitboxID.hbox_num == 3 {
       sound_stop(sound_get("RI"))
       sound_play(sound_get("RI"),false,noone,.7,1)
   }
}

if my_hitboxID.attack == AT_DTHROW {
    sound_play(asset_get("sfx_absa_kickhit"))
}

if my_hitboxID.attack == AT_DTILT {
   vfx = spawn_hit_fx(hit_player_obj.x,hit_player_obj.y - 6,dtb )
   vfx.depth = -6
}

if my_hitboxID.attack == AT_FSPECIAL {
   hit_player_obj.y -= 10   
}