// pre-draw


shader_start()

if (state==PS_ATTACK_AIR||state==PS_ATTACK_GROUND){
	if ( get_attack_value(attack, AG_PSEUDO_DYNAMIC) == 1 ){
		if ( get_window_value(attack, window, AG_IN_FRONT) == 0 && get_attack_value(attack, AG_PD_ALWAYS_FRONT) == 0 ){
			user_event( 0 );
		}
	}
	if (attack==AT_NAIR){
		draw_sprite_ext( sprite_get("wing_trail"), window-1, x, y, spr_dir*2, 2, 0, -1, 1 )
		draw_sprite_ext( sprite_get("wing1"), window-1, x, y, spr_dir*2, 2, 0, -1, 1 )
	}//nair
}
if (state==PS_SPAWN){
	if (!variable_instance_exists(obj_stage_main, "stage_already_has_a_ring_portal_dummy")){
		var dur = 60*0.6 //(seconds)
		var tmp_alpha = ease_linear( 1, 0, clamp(state_timer-70,0,500), 40 )
		draw_sprite_ext( sprite_get("ring"), 0, x-22, y-52+(((ceil((state_timer+1)/dur)%2)==0)?0:2), 2, ((ceil((state_timer+1)/dur)%2)==0)?2:-2, 0, -1, tmp_alpha )
	}
}
if (state==PS_RESPAWN){
	if (!variable_instance_exists(obj_stage_main, "stage_already_has_a_ring_portal_dummy")){
		var dur = 60*0.6 //(seconds)
		draw_sprite_ext( sprite_get("ring"), 0, x-22, y-52+(((ceil((state_timer+1)/dur)%2)==0)?0:2), 2, ((ceil((state_timer+1)/dur)%2)==0)?2:-2, 0, -1, 1 )
	}
}
if (boostinit){
	//var tmp_ind = 1 + boostinit_timer * 7 / boostinit_max;
	var tmp_ind = ease_quadIn( 1, 7, clamp(boostinit_timer+15,15,boostinit_max+8), boostinit_max+8 )
	draw_sprite_ext( sprite_get("boosts"), tmp_ind, x, y, 2, 2, 0, -1, 1 )
}
if(boost_duration){
	var tmp_index = 0 + boost_duration * 9 / boost_duration_max;
	draw_sprite_ext( sprite_get("boosts_icon"), boost_selected-1, x, y+24, 2, 2, 0, -1, 1 )
	draw_sprite_ext( sprite_get("hud_boosts_cd"), tmp_index, x, y+24, 2, 2, 0, -1, 0.8 )
}

if (boost_mini>-1){
	var tmp_index = 0 + boost_mini * 5 / boost_mini_dur;
	draw_sprite_ext( sprite_get("boost_mini"), tmp_index, x, y, 2, 2, 0, -1, 0.65 )
}

if (heat_time){
	draw_sprite_ext( sprite_get("heat"), 0, 600, 900, 200, 6+(((boost_duration%15)<=7)?0.2:0), 0, -1, (heat_time/heat_max)*0.5 )
	//print("runnin")
}

shader_end()


with(asset_get("pHitBox")){
	if (player_id==other.id){
		if (attack==AT_BAIR){
			if (hbox_num==2){
				draw_sprite_ext( sprite_index, image_index, x_pre_1, y, 1*spr_dir, 1, 0, -1, 0.3 )
				draw_sprite_ext( sprite_index, image_index, x_pre_2, y, 1*spr_dir, 1, 0, -1, 0.3 )
				draw_sprite_ext( sprite_index, image_index, x_pre_3, y, 1*spr_dir, 1, 0, -1, 0.3 )
				draw_sprite_ext( sprite_index, image_index, x_pre_4, y, 1*spr_dir, 1, 0, -1, 0.3 )
				draw_sprite_ext( sprite_index, image_index, x_pre_5, y, 1*spr_dir, 1, 0, -1, 0.3 )
				draw_sprite_ext( sprite_index, image_index, x_pre_6, y, 1*spr_dir, 1, 0, -1, 0.3 )
			}
		}
	}
}
with(asset_get("obj_article2")){
	if (player_id == other.id){
		var hudcol = get_player_hud_color( player );
		draw_sprite_ext( sprite_get("arror"), 0, x, y, 2, 2, 0, hudcol, 1 )
		var tst_ind = (arror_timer/arror_timer_max)*19
		var tmp_col = (shoot_count>=shoot_max)?c_dkgray:-1
		draw_sprite_ext( sprite_get("arror_bar"), tst_ind, x, y, 2, 2, 0, tmp_col, 1 )
	}
}





