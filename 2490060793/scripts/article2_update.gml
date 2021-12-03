//article2_update

with player_id if attack == AT_FSPECIAL_2 && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) {
	if window >= 6 && has_hit {
		other.zoom_timer++
	} else {
		other.zoom_timer = 0
	}
}

draw_zoom = false
with oPlayer if id != other.player_id && activated_kill_effect {
    other.draw_zoom = true
}

with player_id {
	if attack == AT_FSPECIAL_2 && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) {
	    other._alpha = 0.8
	    switch window {
	        case 1:
	        other._alpha = other._alpha*(window_timer/window_length)
	        break;
	        
	        case 7:
	        other._alpha = other._alpha*((window_length-window_timer)/window_length)
	        break;
	    }
	    
	    if window >= 6 && other.draw_zoom {
	        other._scale1 = 4+other.zoom_timer/30
	        other._scale2 = 4+other.zoom_timer/25
	        other._scale3 = 4+other.zoom_timer/20
	        other._alpha = window == 6 ? 0.6 : 0.6 - window_timer/10
	    }
	} else {
		other._alpha = lerp(other._alpha, 0, 0.1)
		other._scale1 = lerp(other._scale1, 0, 0.1)
		other._scale2 = lerp(other._scale2, 0, 0.1)
		other._scale3 = lerp(other._scale3, 0, 0.1)
	}
}