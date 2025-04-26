
var spr_staticthing = sprite_get("__static_status")
var spr_staticthing_hb = sprite_get("__static_status_copy")
var spr_oper = sprite_get("__operator_symbol_small")
var spr_walkingshadow = sprite_get("walk_ghost")

with(oPlayer){
	if (id != other.player_id){
			if (slender_buildup>0){
				var a_slope = ease_linear( 0, 75, round(slender_buildup), slender_buildup_max )/100
				var b_slope = ease_quadIn( 0, 100, round(slender_buildup), slender_buildup_max )/100
				draw_sprite_ext( spr_staticthing, get_gameplay_time()*0.4, x, y, 2+b_slope, 0.5+b_slope, 0, -1, a_slope )
				draw_sprite_ext( spr_staticthing, get_gameplay_time()*0.4, x, y, 3+b_slope, 1+b_slope, 0, -1, a_slope/2 )
			}
		if (slender_haunt == other.player_id){
			if (slender_haunt_timer>0){//slendersickness active
				if (state!=PS_RESPAWN && state!=PS_DEAD){
					
					//var a_slope = ease_linear( 0, 50, clamp(jab_end_timer,0,30), 30 )/100
					//dont need dat
					draw_sprite_ext( spr_staticthing, get_gameplay_time()*0.4, x, y, 2, 2, 0, -1, 0.75 )
					
					draw_sprite_ext( spr_oper, get_gameplay_time()*0.05, x, y+20, 2, 2, 0, -1, 1 )
					
					if (slender_haunt_standstill>20){
					var hallucinate_movement = ease_linear( 250, 50, slender_haunt_standstill, slender_haunt_standstill_max )
					var b_slope = ease_quadIn( -10, 50, slender_haunt_standstill, slender_haunt_standstill_max )/100
					
					draw_sprite_ext( spr_walkingshadow, get_gameplay_time()*0.08, x-(hallucinate_movement*spr_dir)-2, y, 2*spr_dir, 2, 0, c_dkgray, b_slope )
					draw_sprite_ext( spr_walkingshadow, get_gameplay_time()*0.08, x-(hallucinate_movement*spr_dir), y, 2*spr_dir, 2, 0, c_black, b_slope/1.5 )
					}
					
					
					
					//
				}
			}
		}
	}
}

with(pHitBox){
	if (variable_instance_exists(id,"slendersick_proj")){
		if (slendersick_proj==true){
			draw_sprite_ext( spr_staticthing_hb, get_gameplay_time()*0.4, x, y, 2, 2, 0, -1, 0.2 )
			draw_sprite_ext( spr_staticthing_hb, get_gameplay_time()*0.4, x, y, 1.8, 1.8, 0, -1, 0.2 )
			draw_sprite_ext( spr_staticthing_hb, get_gameplay_time()*0.4, x, y, 2.1, 2.1, 0, -1, 0.2 )
		}
	}
}













