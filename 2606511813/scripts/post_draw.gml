//post-draw

//munophone
muno_event_type = 4;
user_event(14);

glow_slot = (echo ? 5 : 0);

//arrow trail
for (var i = 0; i < array_length_1d(arrow_id_array); i++) {
    var arrow_array = arrow_trail_arrays[i];
    if arrow_array[0] != undefined {
	    for (var j = 0; j < array_length_1d(arrow_array); j++) {
	        var pos = arrow_array[j];
	        if is_array(pos) {
	            var _x = round(pos[0])
	            var _y = round(pos[1])
	            var _speed = pos[2]
	            var _angle = pos[3]
	            var _spr_dir = pos[4]
	            
	            //check within screen boundary
	            if onscreen(_x,_y) {
		            
		            var _xscale = j < (trail_length*6/20) ? _speed/(trail_length*15/20) : _speed/(trail_length*14/20)
		            var _index = (trail_length-1+j-trail_index) mod 20;
		            if arrow_timer_array[i] != undefined _index = (trail_length-1+j-arrow_timer_array[i]) mod 20;
		            //arrow
	            	draw_sprite_general(sprite_get("arrow"), floor((timer mod 16)/2), _index*15*(20/trail_length), 0, 15*(20/trail_length), 62, _x, _y, _spr_dir * _xscale, 1, _angle, c_white, c_white, c_white, c_white, 1);
	            	//draw_text_transformed(_x, _y, _index, 1, 1, 0)
	            	
	            }
	        }
	    }
    }
}

//orbitar glow
if !phone_fast {
	with obj_article1 if onscreen(x,y) && player_id == other.id && state == PS_ATTACK_AIR && window == 2 && !other.custom_clone {
		var blend = gpu_get_blendmode(); //gets the current blend mode
		var playercol = get_player_color(player);
	    var glowcol = make_color_rgb(get_color_profile_slot_r(playercol,other.glow_slot),get_color_profile_slot_g(playercol,other.glow_slot),get_color_profile_slot_b(playercol,other.glow_slot))
	    var glowalpha = (dsin(window_timer)/4)+0.5;
	    
	    //parry
	    if other.orbitar_parry_mode {
		    if oPlayer_owner.state == PS_PARRY && oPlayer_owner.state_timer < 12 {
				glowcol = make_color_rgb(84,71,135);
				glowalpha = 0.8
			}
	    }
		
		
	    gpu_set_blendmode(bm_add); //use additive blending for next draw_* calls
	    
	    draw_set_alpha(glowalpha)
		draw_circle_color(x - 38, y, 50, glowcol, c_black, false)
		draw_circle_color(x + 38, y, 50, glowcol, c_black, false)
		draw_set_alpha(1)
		
		gpu_set_blendmode(blend); //goes back to whatever blend mode you were in.
	}
}

//held orbitar drawing
if (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && attack == AT_DSPECIAL && (window == 2 || (window == 3 && window_timer <= 4)) {
	var drawx = x;
	var drawy = y-34;
	var shieldx = spr_dir*(shield_spawn_dist-6);
	var shieldy = y-34;
	
	//draw shield
    var shield_img_index = 0;
    var shield_alpha = 0;
    if window_timer <= 4 {
        shield_img_index = 0;
        shield_alpha = 1;
    } else {
        shield_img_index = ((window_timer/3) mod 7) + 1;
        shield_alpha = 0.7 + dsin(window_timer*16)*0.2;
    }
    
    draw_sprite_ext(spr_shield, 0, drawx + shieldx, shieldy, spr_dir, 1, 0, c_white, 0.4);
    draw_sprite_ext(spr_shield, 0, drawx - shieldx, shieldy, -spr_dir, 1, 0, c_white, 0.4);
    draw_sprite_ext(spr_shield, shield_img_index, drawx + shieldx, shieldy, spr_dir, 1, 0, c_white, shield_alpha);
    draw_sprite_ext(spr_shield, shield_img_index, drawx - shieldx, shieldy, -spr_dir, 1, 0, c_white, shield_alpha);
    draw_sprite_ext(spr_shield_outline, shield_img_index, drawx + shieldx, shieldy, spr_dir, 1, 0, c_white, 1);
    draw_sprite_ext(spr_shield_outline, shield_img_index, drawx - shieldx, shieldy, -spr_dir, 1, 0, c_white, 1);
    
    //draw glow
    if !phone_fast {
	    var blend = gpu_get_blendmode(); //gets the current blend mode
		var playercol = get_player_color(player);
	    var glowcol = make_color_rgb(get_color_profile_slot_r(playercol,glow_slot),get_color_profile_slot_g(playercol,glow_slot),get_color_profile_slot_b(playercol,glow_slot))
	    var glowalpha = (dsin(window_timer)/4)+0.5;
		
	    gpu_set_blendmode(bm_add); //use additive blending for next draw_* calls
	    
	    draw_set_alpha(glowalpha)
		draw_circle_color(x - 38, drawy, 50, glowcol, c_black, false)
		draw_circle_color(x + 38, drawy, 50, glowcol, c_black, false)
		draw_set_alpha(1)
		
		gpu_set_blendmode(blend); //goes back to whatever blend mode you were in.
    }
}

//indicator draw for arrows
with pHitBox {
	if player_id == other.id && attack == AT_NSPECIAL && hbox_num == 1 {
		draw_indicator('arrow', proj_angle, 0);
	}
}

#define draw_indicator(type, angle, index)
var offX = undefined;
var offY = undefined;
var offIndex = 0;
var offRot = 0;
if (x < view_get_xview() - 30) {
    offX = view_get_xview() + 35;
    if (y > view_get_yview() + view_get_hview() - 60) {
        offY = view_get_yview() + view_get_hview() - 85;
        offIndex = 1;
        offRot = -90;
    } else if (y < view_get_yview() + 35) {
        offY = view_get_yview() + 35;
        offIndex = 1;
        offRot = 180;
    } else {
        offY = y;
        offIndex = 0;
        offRot = -90;
    }
} else if (x > view_get_xview() + view_get_wview() + 30) {
    offX = view_get_xview() + view_get_wview() - 35;
    if (y > view_get_yview() + view_get_hview() - 60) {
        offY = view_get_yview() + view_get_hview() - 85;
        offIndex = 1;
        offRot = 0;
    } else if (y < view_get_yview() + 35) {
        offY = view_get_yview() + 35;
        offIndex = 1;
        offRot = 90;
    } else {
        offY = y;
        offIndex = 0;
        offRot = 90;
    }
} else if (y > view_get_yview() + view_get_hview() - 60) {
    offX = x;
    offY = view_get_yview() + view_get_hview() - 85;
    offIndex = 0;
    offRot = 0;
} else if (y < view_get_yview() + 35) {
    offX = x;
    offY = view_get_yview() + 35;
    offIndex = 0;
    offRot = 180;
}

if (offX != undefined) {
	draw_sprite_ext(sprite_get("offscreen_indicator"), offIndex, offX, offY, 1, 1, offRot, get_player_hud_color(player), 1);
	switch type {
		case 'arrow':
		var arrow_index = 16 - round(angle/45);
		draw_sprite_ext(sprite_get("arrow_offscreen"), arrow_index, offX, offY, spr_dir, -spr_dir, 0, c_white, 1);
		break;
		
		case 'orb':
		draw_sprite_ext(sprite_get("article_offscreen"), index, offX, offY, spr_dir, 1, 0, c_white, 1);
		break;
	}
}

#define onscreen(x, y)
var offset = 50;
if (x > view_get_xview() - offset) && (x < view_get_xview() + view_get_wview() + offset) && (y < view_get_yview() + view_get_hview() + offset) && (y > view_get_yview() - offset) {
	return true;
} else {
	return false;
}