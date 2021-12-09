///
if my_hitboxID.attack == AT_FAIR && my_hitboxID.hbox_num == 1 {
	sound_play(sound_get("slice"),false,noone,1.2,0.6)
	sound_play(asset_get("sfx_blow_heavy1"),false,noone,1, 2.2 - min((hitstop*hitstop)/120 , 1.5) )
}


if attack != AT_FSTRONG && my_hitboxID.hbox_num < 2 {
	hit_player_obj.x += 10*spr_dir
	hit_player_obj.y += 10
}


if my_hitboxID.attack == AT_USPECIAL && my_hitboxID.hbox_num == 3 && isyellow {
	
		move_cooldown[AT_USPECIAL] = 15
	set_hitbox_value(AT_BAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
    set_hitbox_value(AT_BAIR, 1, HG_VISUAL_EFFECT, 304);	
	set_hitbox_value(AT_BAIR, 1, HG_WIDTH, 124);
    set_hitbox_value(AT_BAIR, 1, HG_HEIGHT, 124);
    set_attack_value(AT_BAIR, AG_CATEGORY, 2);
    
    y += floor ( (hit_player_obj.y + 20 - y)/3 )
    
	spr_dir *= -1
	old_vsp = -12
	old_hsp = 3*spr_dir
	vsp = -12
	hsp = 3*spr_dir
    set_attack(AT_BAIR)
    window = 1
    window_timer = 5


}

if my_hitboxID.attack == AT_FSPECIAL  {

}


if my_hitboxID.attack == AT_EXTRA_2{
	
	sound_play(sound_get("slice"),false,noone,1,0.8 + random_func(4,4,true)/10)
	
	if my_hitboxID.hbox_num != 5 {
	 	var hfx1 = spawn_hit_fx( hit_player_obj.x,hit_player_obj.y - 60, fxslash3 )
			hfx1.draw_angle = random_func(9,360,true) + my_hitboxID.x*4
   }
		
		if my_hitboxID.hbox_num == 3 move_cooldown[AT_NAIR] = 0
			if my_hitboxID.hbox_num == 5 {
		  sound_play(asset_get("sfx_blow_heavy2"),false,noone,1,1.1 - random_func(1,4,true)/20)	
			}
}


if 	move_cooldown[AT_USPECIAL] = 0 {

if move_cooldown[AT_NSPECIAL_2] = 0 && uphit != 0 && downhit != 0 && sidehit != 0 && neutralhit != 0 && my_hitboxID.type == 1
and my_hitboxID.attack != AT_NSPECIAL and my_hitboxID.attack != AT_USPECIAL and my_hitboxID.attack != AT_DSPECIAL and my_hitboxID.attack != AT_FSPECIAL
and my_hitboxID.attack != AT_EXTRA_1{
	
	inkvictim = hit_player_obj
    finaldir = spr_dir

	


    inkvictim.hitstop += 60
    spawn_hit_fx(x,y - 40,SC)
 
    
	
if my_hitboxID.attack != AT_USTRONG and my_hitboxID.attack != AT_FSTRONG and my_hitboxID.attack != AT_DSTRONG {
	
    set_hitbox_value(AT_EXTRA_2, 1, HG_BASE_KNOCKBACK, my_hitboxID.kb_value);
	set_hitbox_value(AT_EXTRA_2, 1, HG_KNOCKBACK_SCALING, my_hitboxID.kb_scale);
	set_hitbox_value(AT_EXTRA_2, 1, HG_ANGLE, my_hitboxID.kb_angle);
	set_hitbox_value(AT_EXTRA_2, 1, HG_HITSTUN_MULTIPLIER, my_hitboxID.hitstun_factor);
	
	set_hitbox_value(AT_EXTRA_2, 2, HG_BASE_KNOCKBACK, my_hitboxID.kb_value);
	set_hitbox_value(AT_EXTRA_2, 2, HG_KNOCKBACK_SCALING, my_hitboxID.kb_scale);
	set_hitbox_value(AT_EXTRA_2, 2, HG_ANGLE, my_hitboxID.kb_angle);
	set_hitbox_value(AT_EXTRA_2, 2, HG_HITSTUN_MULTIPLIER, my_hitboxID.hitstun_factor);

	set_hitbox_value(AT_EXTRA_2, 3, HG_BASE_KNOCKBACK, my_hitboxID.kb_value);
	set_hitbox_value(AT_EXTRA_2, 3, HG_KNOCKBACK_SCALING, my_hitboxID.kb_scale);
	set_hitbox_value(AT_EXTRA_2, 3, HG_ANGLE, my_hitboxID.kb_angle);
	set_hitbox_value(AT_EXTRA_2, 3, HG_HITSTUN_MULTIPLIER, my_hitboxID.hitstun_factor);
	
	set_hitbox_value(AT_EXTRA_2, 4, HG_BASE_KNOCKBACK, my_hitboxID.kb_value);
	set_hitbox_value(AT_EXTRA_2, 4, HG_KNOCKBACK_SCALING, my_hitboxID.kb_scale);
	set_hitbox_value(AT_EXTRA_2, 4, HG_ANGLE, my_hitboxID.kb_angle);
	set_hitbox_value(AT_EXTRA_2, 4, HG_HITSTUN_MULTIPLIER, my_hitboxID.hitstun_factor);
	
	
	create_hitbox(AT_EXTRA_2,1,x,y)
    create_hitbox(AT_EXTRA_2,2,x,y)
    create_hitbox(AT_EXTRA_2,3,x,y)
    hitstop += 40
    move_cooldown[AT_NAIR] = 40 
    

	
} else {
	
	
	set_hitbox_value(AT_EXTRA_2, 1, HG_BASE_KNOCKBACK, 6);
	set_hitbox_value(AT_EXTRA_2, 1, HG_KNOCKBACK_SCALING, 0);
	set_hitbox_value(AT_EXTRA_2, 1, HG_ANGLE, 90);
	set_hitbox_value(AT_EXTRA_2, 1, HG_HITSTUN_MULTIPLIER, 1);
	
	set_hitbox_value(AT_EXTRA_2, 2, HG_BASE_KNOCKBACK, 6);
	set_hitbox_value(AT_EXTRA_2, 2, HG_KNOCKBACK_SCALING, 0);
	set_hitbox_value(AT_EXTRA_2, 2, HG_ANGLE, 90);
	set_hitbox_value(AT_EXTRA_2, 2, HG_HITSTUN_MULTIPLIER, 1);

	set_hitbox_value(AT_EXTRA_2, 3, HG_BASE_KNOCKBACK, 6);
	set_hitbox_value(AT_EXTRA_2, 3, HG_KNOCKBACK_SCALING, 0);
	set_hitbox_value(AT_EXTRA_2, 3, HG_ANGLE, 90);
	set_hitbox_value(AT_EXTRA_2, 3, HG_HITSTUN_MULTIPLIER, 1);
	
	set_hitbox_value(AT_EXTRA_2, 4, HG_BASE_KNOCKBACK, 6);
	set_hitbox_value(AT_EXTRA_2, 4, HG_KNOCKBACK_SCALING, 0);
	set_hitbox_value(AT_EXTRA_2, 4, HG_ANGLE, 90);
	set_hitbox_value(AT_EXTRA_2, 4, HG_HITSTUN_MULTIPLIER, 1);
	
	sound_stop(asset_get("sfx_troupple_rumble"))
	
	finalattack = get_attack_value(my_hitboxID.attack, AG_SPRITE);
    finalx = x
    
    attack_end();
    
	if my_hitboxID.attack != AT_FSTRONG { 
	set_hitbox_value(AT_EXTRA_2, 5, HG_BASE_KNOCKBACK, my_hitboxID.kb_value);
	set_hitbox_value(AT_EXTRA_2, 5, HG_KNOCKBACK_SCALING, my_hitboxID.kb_scale);
	set_hitbox_value(AT_EXTRA_2, 5, HG_ANGLE, my_hitboxID.kb_angle);
	set_hitbox_value(AT_EXTRA_2, 5, HG_HITSTUN_MULTIPLIER, my_hitboxID.hitstun_factor);
	finalframe = image_index - 1
	} else {
    finalframe = 6
	set_hitbox_value(AT_EXTRA_2, 5, HG_BASE_KNOCKBACK, 8);
	set_hitbox_value(AT_EXTRA_2, 5, HG_KNOCKBACK_SCALING, 1);
	set_hitbox_value(AT_EXTRA_2, 5, HG_ANGLE, 40);
	set_hitbox_value(AT_EXTRA_2, 5, HG_HITSTUN_MULTIPLIER, 1);	
	}
	
	if my_hitboxID.attack == AT_DSTRONG {
		set_hitbox_value(AT_EXTRA_2, 5, HG_ANGLE_FLIPPER, 7 );
		set_hitbox_value(AT_EXTRA_2, 5, HG_KNOCKBACK_SCALING, 1);
	    set_hitbox_value(AT_EXTRA_2, 5, HG_ANGLE, 40);
	    set_hitbox_value(AT_EXTRA_2, 5, HG_HITSTUN_MULTIPLIER, 1);	
			old_hsp = 14 * (1  - (x < inkvictim.x)*2)
	} else {
		set_hitbox_value(AT_EXTRA_2, 5, HG_ANGLE_FLIPPER, 0 );
		
			old_hsp = -14 * spr_dir 
	}
	


	set_attack(AT_EXTRA_2)
	window = 1
	window_timer = 0
	
	create_hitbox(AT_EXTRA_2,1,x,y)
    create_hitbox(AT_EXTRA_2,2,x,y)
    create_hitbox(AT_EXTRA_2,3,x,y)
    create_hitbox(AT_EXTRA_2,4,x,y)
}

	uphit = 0
	downhit = 0
	sidehit = 0
	neutralhit = 0
	allhit = 30
	sound_play(sound_get("RI"),false,noone,1,1)
	sound_play(asset_get("sfx_waterhit_heavy2"),false,noone,1,1)
	

}

if uphit == 0 && (attack == AT_UAIR or (my_hitboxID.attack == AT_UTILT and my_hitboxID.hbox_num != 3)
or my_hitboxID.attack == AT_USTRONG ){
	uphit = 30
	downhit = 30
	sound_play(asset_get("sfx_waterwarp_start"),false,noone,1.2,1.35)
		sound_play(asset_get("sfx_boss_vortex_end"),false,noone,1,1.8)
	with hit_player_obj {
		//take_damage(player,-1,4)
		//hitstop += 6
	}
	//hitstop += 3
}

if downhit == 0 && (my_hitboxID.attack == AT_DAIR
or my_hitboxID.attack == AT_DTILT or my_hitboxID.attack == AT_DSTRONG){
	downhit = 30
	uphit = 30
	sound_play(asset_get("sfx_waterwarp_start"),false,noone,1.2,0.8)
	sound_play(asset_get("sfx_boss_vortex_end"),false,noone,1,1.4)
	with hit_player_obj {
		//take_damage(player,-1,4)
		//hitstop += 6
	}
	//hitstop += 3
}

if sidehit == 0 && (my_hitboxID.attack == AT_FTILT or (attack == AT_JAB && window > 3)
or my_hitboxID.attack == AT_FAIR or (my_hitboxID.attack == AT_BAIR && move_cooldown[AT_NSPECIAL_2] == 0) or my_hitboxID.attack == AT_FSTRONG){
	sidehit = 30
	sound_play(asset_get("sfx_waterwarp_start"),false,noone,1.2,1.2)
	sound_play(asset_get("sfx_boss_vortex_end"),false,noone,1,1.6)	
	with hit_player_obj {
		//take_damage(player,-1,4)
		//hitstop += 6
	}
	//hitstop += 3
}

if neutralhit == 0 && ((attack == AT_JAB && window <= 3) or (my_hitboxID.attack == AT_UTILT and my_hitboxID.hbox_num == 3)
or my_hitboxID.attack == AT_NAIR or my_hitboxID.attack == AT_TAUNT){
	neutralhit = 30
	sound_play(asset_get("sfx_waterwarp_start"),false,noone,1.2,1)
    sound_play(asset_get("sfx_boss_vortex_end"),false,noone,1,1.65)	
	with hit_player_obj {
		//take_damage(player,-1,4)
		//hitstop += 6
	}
	//hitstop += 3
}



}

move_cooldown[AT_FSPECIAL_2] = 0
move_cooldown[AT_NSPECIAL_2] = 999