//aaa

if "init_var" not in owner exit
if get_stage_data(SD_ID) == 0 exit

var life = sprite_get("life_bar")
var ability_icon = sprite_get("ability_icon")
var life_bar_1 = sprite_get("life_bar_gauge")
var gau_w = sprite_get_width(life_bar_1)
var gau_h = sprite_get_height(life_bar_1)


 //owner.kf_hud_color

var life_color_1 = $4DF00A
var life_color_2 = $e87822
var life_color_3 = $e231a4
var life_color_4 = $a129f2
var life_color_5 = $e83040
var hurt_color = $2e2ead

with oPlayer{
	if "init_var" in self{
		//draw_debug_text(floor(x), floor(y), string(was_reloaded))//get_state_name(state))
		if (player == other.player) || ( other.kf_CPU_toggle == false && temp_level != 0 && player < 5) {
		var panel_color =  get_player_hud_color(player)
		// 1/4 = ( view_get_wview()/8 + view_get_xview() )
		// 1/3 = ( view_get_wview()/4 + view_get_xview() )
		// 1/2 = ( view_get_wview()/2.65 + view_get_xview() )
		
		var hud_width = 238
		
		var meter_x = view_get_wview()/2 + view_get_xview() - (multiplayer_num*hud_width/2) + hud_width*hud_number - 120 + kf_hud_shake_x //( view_get_wview()/8 + view_get_xview() + (player-1)*240) + kf_hud_shake_x
		var meter_y = view_get_hview() + view_get_yview() - 56 + kf_hud_shake_y + kf_hud_offset
		
		//print_debug(meter_x)
		
		var health_tier = ceil(kf_health_points / 100) mod 5
		// this was fun!
		// this health tier stuff dynamically changes the color for each of the health bar as health decreases.
		// health bar 1 is drawn behind 2. so its a background.
		
		switch(health_tier) {
			case 0:
		        var health_bar_1 = life_color_4 
		        var health_bar_2 = life_color_5
		        if kf_health_points < 100 || state == PS_DEAD{ //don't use colors if this is the last bar, or dead
		            var health_bar_1 = c_black
		            var health_bar_2 = c_gray
		        }
		        break;
		    case 1:
		        var health_bar_1 = life_color_5 
		        var health_bar_2 = life_color_1
		        if kf_health_points < 100{ //don't loop bg colors if this is the last bar
		            var health_bar_1 = c_black
		        }
		        break;
		    case 2:
		        var health_bar_1 = life_color_1
		        var health_bar_2 = life_color_2
		        break;
		    case 3:
		        var health_bar_1 = life_color_2
		        var health_bar_2 = life_color_3
		        break;
		    case 4:
		        var health_bar_1 = life_color_3
		        var health_bar_2 = life_color_4 
		        break;
		}
			if got_hurt{
		    	if got_hurt > 2{
		    		health_bar_2 = hurt_color
		    	} else {
		    		health_bar_2 = merge_color(hurt_color, c_ltgray, got_hurt/3 )
		    	}
		    }
		    
		    if kf_health_points <= 50{
		    	if get_gameplay_time() mod 10 > 5{
		    		health_bar_2 = hurt_color
		    	} else {
		    		health_bar_2 = merge_color(hurt_color, c_white, 0.5 )
		    	}
		    }
		    
		    if kf_health_points == 0 {
		    	var health_bar_1 = c_ltgray
		    	var health_bar_2 = c_ltgray
		    }
		
		    var scale = 2 //+ scale_bonus
		    var gauge_fill = (kf_health_points - 1) mod 100 / 100
		    
		    draw_sprite_ext(life, 0, meter_x, meter_y, scale, scale, 0, panel_color, 1)
		    if "kf_custom_icon" in self{
		    	ability_icon = kf_custom_icon
		    }
		    draw_sprite_ext(ability_icon, copy_ability_id, meter_x - 43*scale, meter_y - 24*scale, scale, scale, 0, c_white, 1)
		    
		    //get_player_hud_color( owner )
		    draw_sprite_part_ext(life_bar_1, 0, 0, 0, gau_w, gau_h, meter_x - 16*scale, meter_y - 12*scale, scale, scale, health_bar_1, 0.80)
		    draw_sprite_part_ext(life_bar_1, 0, 0, 0, gau_w * gauge_fill, gau_h, meter_x - 16*scale, meter_y - 12*scale, scale, scale, health_bar_2, 1)
		    draw_debug_text(ceil(meter_x - 20*scale), ceil(meter_y - 21*scale), string(kf_hud_name))
		    draw_debug_text(ceil(meter_x + 17*scale), ceil(meter_y - 2*scale), string(kf_health_points) + "/" + string( kf_total_health ))
		    //draw_debug_text(ceil(meter_x), ceil(meter_y - 64), string(health_tier))
		}
	}
}