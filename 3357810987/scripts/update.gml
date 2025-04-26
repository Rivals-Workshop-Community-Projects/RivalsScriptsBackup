//
with(pHitBox){
	if attack == AT_NSPECIAL && orig_player == 5{
		proj_angle = spr_dir?point_direction(0,0,hsp,vsp):point_direction(hsp,vsp,0,0);
		if hitbox_timer%5 == 0 { 
			var trail = spawn_hit_fx(x-16*spr_dir,y,player_id.fx_nspecial_trail);
			trail.depth = depth+1;
			trail.spr_dir = spr_dir;
			trail.hsp = hsp/1.5;
		}
		if destroyed {
			var explosion = spawn_hit_fx(x,y-8,player_id.fx_nspecial_destroy);
			explosion.depth = depth-1;
			if free explosion.draw_angle = point_direction(0,0,hsp,vsp)+90;
			sound_stop(player_id.sfx_hellfire_hit);
			sound_play(player_id.sfx_hellfire_hit,0,0,.5,.8);
		}
		//if (hbox_num == 1) proj_angle = 30*spr_dir;
		//if (hbox_num == 3) proj_angle = -30*spr_dir;
	}
	if attack == AT_EXTRA_5 && orig_player == 5 {
		var bat_scale = lerp(1,0,(length-hitbox_timer)*0.1);
		//print(bat_scale)
		
		if(bat_scale > 0){
			draw_yscale += bat_scale/5;
			if(draw_xscale > 0){
				draw_xscale -= bat_scale/5;
			} else {
				draw_xscale += bat_scale/5;
			}
		} else {
			if sign(hsp) != 0 draw_xscale = sign(hsp);
		}
	}
	//if attack == AT_EXTRA_2 && orig_player == 5{
	//	proj_angle = 50;
	//}
	if attack == AT_TAUNT && orig_player == 5 {
		if position_meeting(x,y,asset_get("par_block")){
			sound_play(sound_get("sfx_goblet_impact"),0,0,.5,1);
			destroyed = 1; 
		}
		if destroyed {
			var i = 0
			repeat(3){
				var trail = spawn_hit_fx(x+ease_sineInOut(8,-8,random_func_2(i,40,true),40),y,player_id.fx_glass_part[i]);
				trail.depth = depth+1;
				trail.hsp = lengthdir_x(random_func_2(20+i,2,false)+2,lerp(80,100,random_func_2(i,40,true)/40));
				trail.vsp = lengthdir_y(random_func_2(20+i,2,false)+2,lerp(80,100,random_func_2(i,40,true)/40));
				trail.grav = .25;
				trail.draw_angle = random_func_2(10+i,360,true);
				if i spawn_hit_fx(x,y-8,player_id.fx_blood_hit1);
				i++;
			}
		}
	}
}

//Extra music code
if (get_gameplay_time() < 129 and mus == 10) {
    if(music >= 4){
        music_play_file( "music_loop" + string(music+1) );
    }
}
//print(mus)