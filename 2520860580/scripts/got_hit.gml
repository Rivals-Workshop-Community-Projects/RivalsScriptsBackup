///

 with (asset_get("pHitBox")) {
    if(player_id == other.id && attack == AT_FSPECIAL) {
        destroyed = true
    }
}    


if get_player_damage( player ) <= 300 or downed == false{
if !soft_armor and !super_armor {
pattern = 0
ptimer = 0
attackcd = 20
}

if downed == 1 {
    motivation2 += enemy_hitboxID.damage * 4
    hitstop += floor(enemy_hitboxID.hitpause/2)
    lockout = 999
}


if !soft_armor && !super_armor{
    
    sound_stop(sound_get("vhurt1"))  
    sound_stop(sound_get("vhurt2"))  
    sound_stop(sound_get("vhurt3"))  
    
       if random_func(1,3,true) == 0 {
         sound_play(sound_get("vhurt1"),false,noone,1.5)  
    }
    
        if random_func(1,3,true) == 1 {
         sound_play(sound_get("vhurt2"),false,noone,1.5)  
    }
    
        if random_func(1,3,true) == 2{
        sound_play(sound_get("vhurt3"),false,noone,1.5)  
    }
    

    attacking = false
    
    sound_stop(sound_get("firstkill"))  
sound_stop(sound_get("Fstrong1")) 
sound_stop(sound_get("Ustrong1")) 
sound_stop(sound_get("Dstrong1")) 

}


if super_armor or soft_armor {
    take_damage( player, -1 , round(-1 * enemy_hitboxID.damage))
}

if downed == 0 && !soft_armor && !super_armor {

    if hit_player_obj.x < x {
        spr_dir = -1 
    } else {
        spr_dir = 1 
    }
    shake_camera(3,10)
    
    hitstop = 15
    
    if enemy_hitboxID.type == 1{
    hit_player_obj.hitstop = 15
    }
    
    
    
    spawn_hit_fx(x,y,lighten)
    sound_stop(sound_get("vhurt1"))  
    sound_stop(sound_get("vhurt2"))  
    sound_stop(sound_get("vhurt3"))  
    
    sound_play(sound_get("RI"),false,noone,1.4, 0.9 + random_func(1,20,true)/10)
    
    if random_func(2,2,true) == 0 {
    set_attack(AT_JAB)
    window = 2
    window_timer = 1
    }
    
    else if random_func(2,2,true) == 1 {
    set_attack(AT_JAB)
    window = 5
    window_timer = 1
    }
    
    
    invincible = true
    invince_time = 20
    motivation -= 40 + enemy_hitboxID.damage*5
    hit_player_obj.can_move = true
    hit_player_obj.can_jump = true
    style += 40 + enemy_hitboxID.damage*5
    lockout = 15
    retreat = 8
    old_hsp = -7*spr_dir
    old_vsp = -4
    
    y -= 2
}


if rankm > 4 {
rankm -= enemy_hitboxID.damage * 15
}


  if  (triggered &&  move_cooldown[AT_TAUNT_2] = 0) {
  	DT -= 2
  	move_cooldown[AT_TAUNT_2] = 30
  }	
  
} else {
    
    sound_play(sound_get("vdeath"),false,noone,2)
    style = min(1000,style)
    if ending = 0 {
    ending = -1
    }
}