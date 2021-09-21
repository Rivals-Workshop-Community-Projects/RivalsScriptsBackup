//article1_post_draw

//just draw location
//draw_rectangle_color(x-5, y-5, x+5, y+5, c_lime, c_lime, c_lime, c_lime, false);

var drawx = x;
var drawy = y;

var shieldx = spr_dir*(shield_spawn_dist-6);
var shieldy = y;

//indicator
draw_sprite_ext(spr_indicator, 1, drawx, drawy - 28, 1, 1, 0, get_player_hud_color(player_id.player), 1);

//indicator draw
draw_indicator('orb', 0, state == PS_ATTACK_AIR);

if onscreen(x,y) {
	switch state {
	    case PS_SPAWN:
	    draw_sprite_ext(spr_spawn, floor(state_timer/2), drawx, drawy, spr_dir, 1, 0, c_white, 1);
	    break;
	    
	    case PS_IDLE:
	    if vsp = 0 drawy = y + floor(dsin(timer*4)*2)
	    draw_sprite_ext(spr_idle, floor(state_timer/4), drawx, drawy, spr_dir, 1, 0, c_white, 1);
	    break;
	    
	    case PS_ATTACK_AIR:
	    drawy = y + floor(dsin(state_timer*4)*3)
	    switch window {
	        case 1: //summon
	        draw_sprite_ext(spr_attack, floor(window_timer/3), drawx, drawy, spr_dir, 1, 0, c_white, 1);
	        break;
	        
	        case 2: //attack
	        draw_sprite_ext(spr_attack, clamp(floor(window_timer/3), 0, 1) + 3, drawx, drawy, spr_dir, 1, 0, c_white, 1);
	        
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
	        
	        //orbitar parry
	        if oPlayer_owner != undefined {
	            if oPlayer_owner.state == PS_PARRY && oPlayer_owner.state_timer < 12 {
	        		gpu_set_alphatestenable(true);
	        		gpu_set_fog(1, c_white, 0, 1);
	        		
	        		var parry_col = make_color_rgb(165,155,205)
	        	    draw_sprite_ext(spr_shield, 0, drawx + shieldx, shieldy, spr_dir, 1, 0, parry_col, 1);
	                draw_sprite_ext(spr_shield, 0, drawx - shieldx, shieldy, -spr_dir, 1, 0, parry_col, 1);
	                
	                var thickness = 1
	                draw_sprite_ext(spr_shield_outline, 1, drawx + shieldx + thickness/2, shieldy + thickness/2, spr_dir, 1, 0, c_black, 1);
	                draw_sprite_ext(spr_shield_outline, 1, drawx - shieldx + thickness/2, shieldy + thickness/2, -spr_dir, 1, 0, c_black, 1);
	                
	                draw_sprite_ext(spr_shield_outline, 1, drawx + shieldx + thickness/2, shieldy - thickness/2, spr_dir, 1, 0, c_black, 1);
	                draw_sprite_ext(spr_shield_outline, 1, drawx - shieldx + thickness/2, shieldy - thickness/2, -spr_dir, 1, 0, c_black, 1);
	                
	                draw_sprite_ext(spr_shield_outline, 1, drawx + shieldx - thickness/2, shieldy - thickness/2, spr_dir, 1, 0, c_black, 1);
	                draw_sprite_ext(spr_shield_outline, 1, drawx - shieldx - thickness/2, shieldy - thickness/2, -spr_dir, 1, 0, c_black, 1);
	                
	                draw_sprite_ext(spr_shield_outline, 1, drawx + shieldx - thickness/2, shieldy + thickness/2, spr_dir, 1, 0, c_black, 1);
	                draw_sprite_ext(spr_shield_outline, 1, drawx - shieldx - thickness/2, shieldy + thickness/2, -spr_dir, 1, 0, c_black, 1);
	        	    
	        	    gpu_set_fog(0, c_white, 0, 0);
	        	    gpu_set_alphatestenable(false);
	            }
	        }
	        
	        break;
	        
	        case 3: //despawn
	        draw_sprite_ext(spr_attack, floor(window_timer/4) + 5, drawx, drawy, spr_dir, 1, 0, c_white, 1);
	        
	        //draw shield
	        if window_timer <= 4 {
	            draw_sprite_ext(spr_shield_outline, 0, drawx + shieldx, shieldy, spr_dir, 1, 0, c_white, 1);
	            draw_sprite_ext(spr_shield_outline, 0, drawx - shieldx, shieldy, -spr_dir, 1, 0, c_white, 1);
	        }
	        break;
	    }
	    break;
	    
	    case PS_DEAD:
	    var imgindex = 0;
	    if hitstop imgindex = 0;
	    else imgindex = floor(state_timer/4)+1
	    draw_sprite_ext(spr_shield_break, imgindex, drawx + shieldx, shieldy, spr_dir, 1, 0, c_white, 1);
	    draw_sprite_ext(spr_shield_break, imgindex, drawx - shieldx, shieldy, -spr_dir, 1, 0, c_white, 1);
	    break;
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