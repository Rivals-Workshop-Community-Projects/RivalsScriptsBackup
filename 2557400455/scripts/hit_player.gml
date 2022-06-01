///

if redP < 300 && gun == 0 && move_cooldown[AT_EXTRA_2] == 0 && hit_player_obj != 0 && my_hitboxID.type == 2{
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_HSPEED, 6 - random_func(1,12,true));
        set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_VSPEED, 3 - random_func(2,12,true));
		create_hitbox(AT_DSPECIAL,3,hit_player_obj.x, hit_player_obj.y - 20)
		move_cooldown[AT_EXTRA_2] = 15
}

if my_hitboxID.type == 1 && attack != AT_NSPECIAL {
	if gun != 0 && move_cooldown[AT_FSPECIAL_2] = 0 {
		
		if gun == 1 {
			bulletnum += 2
			bulletnum = clamp(bulletnum,0,6)
			sound_play(sound_get("gunload"),false,noone,.7,0.9)
			load = spawn_hit_fx(x - 40*spr_dir,y - 56,302)
			load.pause = 5
		} 
		
		if gun == 2 {
			bulletnum += 4
			bulletnum = clamp(bulletnum,0,12)
			sound_play(sound_get("gunload"),false,noone,.7,0.9)
			load = spawn_hit_fx(x - 40*spr_dir,y - 56,302)
			load.pause = 5
		} 
		
		if gun == 3 {
			bulletnum += 1
			bulletnum = clamp(bulletnum,0,3)
			sound_play(sound_get("gunload"),false,noone,.7,0.9)
			load = spawn_hit_fx(x - 40*spr_dir,y - 56,302)
			load.pause = 5
		} 
		
		move_cooldown[AT_FSPECIAL_2] = 20
	}
}
if my_hitboxID.attack == AT_FAIR {
    move_cooldown[AT_EXTRA_1] = 10
}

if my_hitboxID.attack == AT_FSPECIAL{
    //sound_play(sound_get("hmk"),false,noone,1,2)
    //spawn_hit_fx(hit_player_obj.x - 20 + random_func(2,20,true), hit_player_obj.y - 40 + random_func(1,20,true), hmk)
    if my_hitboxID.hbox_num == 2 {
     sound_play(asset_get("sfx_shovel_hit_med2"),false,noone,1,1)
     move_cooldown[AT_EXTRA_3] = 6
    }
    
    if my_hitboxID.hbox_num == 3 {
     sound_play(asset_get("sfx_shovel_hit_heavy2"),false,noone,1,1)
     move_cooldown[AT_EXTRA_3] = 11
    }

    if my_hitboxID.hbox_num == 4 {
     sound_play(asset_get("sfx_blow_heavy2"),false,noone,1,1)
     move_cooldown[AT_EXTRA_3] = 16
    }
    
}

if my_hitboxID.attack == AT_DSPECIAL && my_hitboxID.hbox_num == 2 {
	
	crossout = 0
	if gun == 0 {
		move_cooldown[AT_DSPECIAL] = 60
	move_cooldown[AT_EXTRA_3] = 16
	}
}

if my_hitboxID.attack == AT_NSPECIAL && my_hitboxID.type == 2{
	//sound_play(sound_get("hmk"),false,noone,1,2)
    //spawn_hit_fx(hit_player_obj.x - 20 + random_func(2,40,true), hit_player_obj.y - 40 + random_func(1,40,true), hmk)
}

move_cooldown[AT_FSPECIAL] = 0

if my_hitboxID.type == 1 && my_hitboxID.sound_effect != asset_get("sfx_ori_energyhit_heavy") 
&& my_hitboxID.sound_effect != asset_get("sfx_ori_energyhit_medium") 
{
	sound_play(asset_get("sfx_waterhit_medium"),false,noone, 0.5 + my_hitboxID.damage/20, 1.5 - random_func(1,20,true)/100 - my_hitboxID.damage/200,)
	
	
}
	
	
	
	if my_hitboxID.attack == AT_EXTRA_1 {
		move_cooldown[AT_EXTRA_1] = 2
		set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_HSPEED, 6 - random_func(1,12,true));
        set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_VSPEED, 3 - random_func(2,12,true));
	
	if gun == 0 {
		create_hitbox(AT_DSPECIAL,3,hit_player_obj.x, hit_player_obj.y - 20)
	}
	
		sound_play(asset_get("sfx_leafy_hit1"))
	}
	
	
	
	
	