
/*
if (my_hitboxID.attack == AT_DATTACK) {
	var lerpam
	lerpam = [0.6, 0.6]
	

	hit_player_obj.x = lerp(floor(hit_player_obj.x), x+50*spr_dir, lerpam[0])
	hit_player_obj.y = lerp(floor(hit_player_obj.y), y-2, lerpam[1])
	
} */

//	smallfunnyslashfx = hit_fx_create( sprite_get( "smallfunnyslashfx" ), floor(6 + min(10, hitstop )) )
 //   actualworkdamn = spawn_hit_fx( hit_player_obj.x, hit_player_obj.y - 40, smallfunnyslashfx )
 //   actualworkdamn.draw_angle = random_func(9,360,true) + my_hitboxID.x*4
    
     sound_play(sound_get("counterhit"),false,noone,.4 + my_hitboxID.damage/20 , 2.4 - min((hit_player_obj.hitstop*hit_player_obj.hitstop)/150 , 1.2) - (random_func(1,10,true))/100 )

    if my_hitboxID.kb_scale >= .7 {
    	
    	//	smallfunnyslashfx = hit_fx_create( sprite_get( "smallfunnyslashfx" ), floor(6 + min(10, hitstop )) );
        //    actualworkdamn = spawn_hit_fx( hit_player_obj.x, hit_player_obj.y - 40, smallfunnyslashfx )
        //    actualworkdamn.draw_angle = random_func(9,360,true) + my_hitboxID.x*4 + 90
		 	sound_play(asset_get("sfx_absa_kickhit"),false,noone,.4 + my_hitboxID.damage/20 , 2 - min((hit_player_obj.hitstop*hit_player_obj.hitstop)/120 , 1.2) )
		 
    	
    } else {
    	
		    sound_play(asset_get("sfx_ori_energyhit_medium"),false,noone,.4 + my_hitboxID.damage/20 , 2 - min((hit_player_obj.hitstop*hit_player_obj.hitstop)/150 , 1.2) )
		 
    	
    }
		 


if (my_hitboxID.attack == AT_DAIR) {
	var lerpam
	lerpam = [0.25, 0.25]
	

	hit_player_obj.x = lerp(floor(hit_player_obj.x), x + hsp, lerpam[0])
	hit_player_obj.y = lerp(floor(hit_player_obj.y), y+10 + vsp, lerpam[1])
	
}


if (my_hitboxID.attack == AT_DSPECIAL && my_hitboxID.hbox_num == 1) {
	
				sound_play(asset_get("sfx_ori_energyhit_medium"))

}
else if (my_hitboxID.attack == AT_DSPECIAL && my_hitboxID.hbox_num == 2) {
	
				sound_play(asset_get("sfx_ori_energyhit_weak"))

}
else if (my_hitboxID.attack == AT_USPECIAL && my_hitboxID.hbox_num == 1) {
	
				sound_play(asset_get("sfx_ori_energyhit_medium"))

}
else if (my_hitboxID.attack == AT_USPECIAL && my_hitboxID.hbox_num == 2) {
	
				sound_play(asset_get("sfx_ori_energyhit_weak"))

}
/*
if (my_hitboxID.attack == AT_FSPECIAL && my_hitboxID.hbox_num != 6) {
	
	
	hit_player_obj.should_make_shockwave = false
}