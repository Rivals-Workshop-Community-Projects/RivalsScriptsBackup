//draw_debug_text( x +80 , y - 20, string(joy_dir));
//draw_debug_text( x +80 , y - 20, string(prat_land_time));

//Draws Smoke
if state != PS_HITSTUN && state != PS_PRATFALL && state != PS_SPAWN{

if !((state== PS_ATTACK_AIR || state == PS_ATTACK_GROUND )&& (attack ==AT_NSPECIAL && (window!=3 && window !=6))){
	shader_start();
	if anim_timer >= 0 && anim_timer <30 {
		if pick = 1{draw_sprite(sprite_get("smoke1"), anim_timer/6 , x + 24 , y - 60+crouch_offset); }
		else{draw_sprite(sprite_get("smoke2"), anim_timer/6 , x + 24 , y - 16); }
	
	}

	if anim_timer >= 30 && anim_timer <60 {	
		if pick = 1{draw_sprite(sprite_get("smoke3"), anim_timer/6 ,x - 22 , y - 14);}
		else{draw_sprite(sprite_get("smoke2"), anim_timer/6 , x - 20 , y - 60+crouch_offset);}
	
	}
	shader_end();
}
}


//Draws USpecial Indicator
shader_start();
if state == PS_ATTACK_AIR || state ==PS_ATTACK_GROUND{
	if attack == AT_USPECIAL && window <= 2{		
		draw_sprite_ext( sprite_get("Udir"), 0, x, y-30, 1, 1,  abs(arrow)*45, c_white, 1); 
	}
}
	shader_end();


//Draws WILL O WISP
if state == PS_ATTACK_AIR || state ==PS_ATTACK_GROUND{
	if attack == AT_NAIR && window == 2{		
		draw_sprite_ext( sprite_get("nair_proj"), window_timer/5, x + -spr_dir*26*sin(window_timer/7), y - 40 + 26*cos(window_timer/7-pi/16), 1, 1, 0, c_white, 1); 
		draw_sprite_ext( sprite_get("nair_proj"), window_timer/5, x + -spr_dir*26*sin(window_timer/7 + pi/2), y - 40 + 26*cos(window_timer/7-pi/16 + pi/2), 1, 1, 0, c_white, 1);
		draw_sprite_ext( sprite_get("nair_proj"), window_timer/5, x + -spr_dir*26*sin(window_timer/7 + 2*pi/2), y - 40 + 26*cos(window_timer/7-pi/16 + 2*pi/2), 1, 1, 0, c_white, 1);
		draw_sprite_ext( sprite_get("nair_proj"), window_timer/5, x + -spr_dir*26*sin(window_timer/7 + 3*pi/2), y - 40 + 26*cos(window_timer/7-pi/16 + 3*pi/2), 1, 1, 0, c_white, 1);
	}
}

//Draws DPAD
//Draws USpecial Indicator

if state == PS_ATTACK_AIR || state ==PS_ATTACK_GROUND{
	if (attack == AT_FSPECIAL && window == 2 ){		
		if (!joy_pad_idle){
			draw_sprite(sprite_get("Dpad"), floor(joy_dir/45) +1 , x- 24*spr_dir, y - 64);
		} else {
			draw_sprite(sprite_get("Dpad"), 0 , x - 24*spr_dir, y - 64);
		}
	}

	if (attack == AT_NSPECIAL && (window == 2 || window == 4))  || (attack == AT_DSPECIAL && (window == 2 || window == 3) ){
		if (!joy_pad_idle){
			draw_sprite(sprite_get("Dpad"), floor(joy_dir/45) +1 , x +1*spr_dir, y - 76);
		} else {
			draw_sprite(sprite_get("Dpad"), 0 , x +1*spr_dir, y - 76);
		}		
	}
}


//Show Ownership projectiles
if smoke_counter>0{
	with pHitBox {
	//draw_debug_text( x + 60, y - 40, string(kb_scale));
		if attack == AT_NSPECIAL && hbox_num ==1 && state ==1 && orig_player == other.player &&(player_id.url == other.url) && !was_parried{
				draw_sprite(sprite_get("owner"), player , x, y-34);			
		}
	}
}



//Draws detonation
shader_start();
with pHitBox {
		if   player_id.url == other.url &&  orig_player == other.player{
			//draw_debug_text(x + 60, y - 35, string(abs(x - (player_id.x ))));
			//draw_debug_text(x + 90, y - 35, string(smoke_num));
			if attack == AT_NSPECIAL && hbox_num == 1 && state != 1{
				draw_sprite(sprite_get("notice"), state-2 , x  , y - 36);
			}
		}
}

if Fcancel> 0{
		draw_sprite(sprite_get("Fcancel"), 1, x - 32*spr_dir , y - 32);
	}
shader_end();



