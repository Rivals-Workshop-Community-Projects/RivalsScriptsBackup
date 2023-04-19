///

if hit_player_obj != self {
wjcap = 0
move_cooldown[AT_DSPECIAL] = 0
move_cooldown[AT_FSPECIAL] = 0
}

    with (asset_get("pHitBox")) {
         if player_id == other.id && damage == 1.005 {
         	 destroyed = true
         }
    }

if hit_player_obj != self {
	gudhit = 0
}    

if enemy_hitboxID.damage == 1.005 && hit_player_obj == self {
	y -= 20
    hitstop += 5
    gudhit = 1
}

if savex != 0 {
    spawn_hit_fx(x,y - 30,305)
         spawn_hit_fx (x,y - 40, shit5)
    x = savex
    y = savey
    hitstop += 20
    take_damage(player,-1, -33)
    sound_play(sound_get("fstrong1"),false,noone,0.6)
     set_state (PS_HITSTUN)
         savex = 0
}

if attackbar > 0  && enemy_hitboxID.type == 1 {
	take_damage(player, -1, floor(enemy_hitboxID.damage*0.2) + 2)
     sound_play(sound_get("hextra"))
     //set_state (PS_HITSTUN)
     spawn_hit_fx (x,y - 40, lighten2)
     spawn_hit_fx (x,y - 40, shit5)
     //move_cooldown[AT_FTILT] = 30
     hit_player_obj.hitstop += 5
     hitstop += 5
     //ohsp = x
     //ovsp = y - 10
     move_cooldown [AT_NSPECIAL] = 180
     dmgmul = 0
attackbar = 0
sound_stop(sound_get("buzzing"))
}

/////if attackbar > 0  && enemy_hitboxID.type != 1{
/////	if hit_player_obj.x < x {
/////		spr_dir = -1
/////	} else {
/////		spr_dir = 1
/////	}
/////     spawn_hit_fx(x,y - 30, shit5)
/////	hitstop = 20
/////	hitstop_full = 20
/////	     spawn_hit_fx(x,y,lighten2)
/////        		sound_stop(cur_sound)
/////                sound_play(sound_get("buzzing"),false,noone,0.4)		
/////            
/////        	sound_play(sound_get("tauntflash"),false,noone,1.2)
/////        	sound_play(sound_get("fspec2"),false,noone,1.2)
/////        	sound_play(sound_get("fspec3"),false,noone,1.2)
/////        	
/////                 
/////        	
/////
/////        	enemy_hitboxID.hsp *= -2
/////        	enemy_hitboxID.vsp *= -2
/////        	enemy_hitboxID.can_hit_self = true
/////        	
/////        	enemy_hitboxID.destroyed = true
/////        	
/////        	set_attack(AT_FSPECIAL)
/////        	window = 2
/////        	window_timer = 0
/////        	state_timer = 400
/////        	move_cooldown [AT_NSPECIAL] = 300
/////}
/////




if super_armor {
    take_damage( player, -1 , -1 * enemy_hitboxID.damage)
}


if attacking && attack == AT_DSPECIAL && super_armor && enemy_hitboxID.type == 1{
    window = 4 
    window_timer = 0
        state_timer = 1
        sound_play(sound_get("dspec"))
        sound_play(sound_get("hextra"))
        create_hitbox(AT_DSPECIAL,3,x,y)
        spawn_hit_fx (x,y - 40, 304)
        
        with hit_player_obj {
        	take_damage(player,-1, floor(other.enemy_hitboxID.damage*1.5))
        }
        
    if hit_player_obj.x < x {
        spr_dir = -1
    } else {
        spr_dir = 1
    }
}

if attacking && attack == AT_DSPECIAL && super_armor && enemy_hitboxID.type == 2{
	if hit_player_obj.x < x {
		spr_dir = -1
	} else {
		spr_dir = 1
	}
     spawn_hit_fx(x,y - 30, shit5)
	hitstop = 10
	hitstop_full = 10
	     spawn_hit_fx(x,y,lighten2)
            
        	sound_play(sound_get("tauntflash"),false,noone,1.2)
        	sound_play(sound_get("fspec2"),false,noone,1.2)
        	sound_play(sound_get("fspec3"),false,noone,1.2)
        	
        	enemy_hitboxID.destroyed = true
        	set_attack(AT_FSPECIAL)
        	window = 2
        	window_timer = 0
        	state_timer = 400
}


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