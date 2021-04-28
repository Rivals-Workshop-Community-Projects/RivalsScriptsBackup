///


 
if cosmetic = 1{
if get_player_color(player) = 1 {

	if songcd <= 70 {
		songcd = 121
			songplay += 1
	}
}


finishercd = 0




if move_cooldown[AT_EXTRA_1] > 0 && move_cooldown[AT_EXTRA_2] > 0 && move_cooldown[AT_EXTRA_3] == 0{
move_cooldown[AT_EXTRA_3] = 36
dx3 = hit_player_obj.x
dy3 = hit_player_obj.y   
cdamage3 = ((my_hitboxID.damage)*(1 + random_func(1, 4, true)/10) +
    (get_player_damage(hit_player_obj.player)*my_hitboxID.damage*my_hitboxID.damage))*(dmgmul + 1)
if cdamage3 > 9999 {
    cdamage3 = 9999
}
}

if move_cooldown[AT_EXTRA_1] > 0 && move_cooldown[AT_EXTRA_2] == 0{

cdamage2 = ((my_hitboxID.damage)*(1 + random_func(1, 4, true)/10) +
    (get_player_damage(hit_player_obj.player)*my_hitboxID.damage*my_hitboxID.damage))*(dmgmul + 1)
    move_cooldown[AT_EXTRA_2] = 36
if cdamage2 > 9999 {
    cdamage2 = 9999
}
dx2 = hit_player_obj.x
dy2 = hit_player_obj.y
}


if move_cooldown[AT_EXTRA_1] == 0 {

cdamage1 = ((my_hitboxID.damage)*(1 + random_func(1, 4, true)/10) +
(get_player_damage(hit_player_obj.player)*my_hitboxID.damage*my_hitboxID.damage))*(dmgmul + 1)
if cdamage1 > 9999 {
    cdamage1 = 9999
}    
move_cooldown[AT_EXTRA_1] = 36
dx1 = hit_player_obj.x
dy1 = hit_player_obj.y
}
}


if my_hitboxID.attack != AT_NSPECIAL and my_hitboxID.attack != AT_USPECIAL and  my_hitboxID.attack != AT_FSPECIAL and  my_hitboxID.attack != AT_DSPECIAL 
&& attackbar != 0 {
    attackbar = 1
        spawn_hit_fx (x,y,lighten3)
        
        hitstop += my_hitboxID.hitpause/2
        hit_player_obj.hitstop += my_hitboxID.hitpause/2
        barpause = 0
        move_cooldown[AT_NSPECIAL] = 0
  
                
if dmgmul == 1.5 {
	   	 with hit_player_obj {
                 take_damage( player, -1 , floor(enemy_hitboxID.damage/2.5) + 1)
         }	
    sound_play(sound_get("hcine"),false,noone,0.6)
        dmgmul = 0
    spawn_hit_fx (hit_player_obj.x  + 10*spr_dir + (random_func(1, 36, true))*spr_dir, hit_player_obj.y - 30 - random_func(2, 66, true) , shit1)
}

if dmgmul == 2 {
	   	 with hit_player_obj {
                 take_damage( player, -1 , floor(enemy_hitboxID.damage/2) + 3)
         }	
    sound_play(sound_get("hcine"),false,noone,0.9)
        dmgmul = 0
     spawn_hit_fx (hit_player_obj.x + 10*spr_dir  + (random_func(1, 36, true))*spr_dir, hit_player_obj.y - 30 - random_func(2, 66, true) , shit4)    
}

if dmgmul == 3 {
	   	 with hit_player_obj {
                 take_damage( player, -1 , floor(enemy_hitboxID.damage/1.5) + 6)
         }	
    sound_play(sound_get("hcine"),false,noone,1.2)
        dmgmul = 0
     spawn_hit_fx (hit_player_obj.x + 10*spr_dir  + (random_func(1, 36, true))*spr_dir, hit_player_obj.y - 30 - random_func(2, 66, true) , shit5)    
}

}
