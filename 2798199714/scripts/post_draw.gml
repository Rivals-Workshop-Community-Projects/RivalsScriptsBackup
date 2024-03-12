muno_event_type = 4;
user_event(14);

shader_start();

if (attack == AT_TAUNT && (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)){
	if(window == 10 || window == 11){
		if(alt == 0){
			//draw_sprite_ext(sprite_get("taunt_crystal"), 1, x, y-35, spr_dir*(small_sprites+1), 1*small_sprites+1, spr_angle, c_white, .5);
			draw_sprite_ext(sprite_get("taunt_crystal"), 0, x, y-45, spr_dir*(small_sprites+1), 1*small_sprites+1, spr_angle, c_white, 1);
		}else{
			draw_sprite_ext(sprite_get("taunt_crystal"), 2, x, y-45, spr_dir*(small_sprites+1), 1*small_sprites+1, spr_angle, c_white, 1);
		}
	}else if(window == 12){
		draw_sprite_ext(sprite_get("explosion_ball3"), 0, x,y-45, .8+(window_timer/3), .8+(window_timer/3), 0, -1, 1-(window_timer/10))
		draw_sprite_ext(sprite_get("explosion_ball3"), 0, x,y-45, .6+(window_timer/2), .6+(window_timer/2), 0, -1, 1-(window_timer/10))
	}
	else if(window == 14){
		draw_sprite_ext(sprite_get("taunt_laser"), 0, x-5*spr_dir ,y-125, 2, (laserscale/100)*2, laserangle, c_white, 1)
	}
}

with(pHitBox){
	if(player_id == other && type == 2 && attack == AT_DSTRONG && hbox_num == 9){
		if(other.alt == 0){
			draw_sprite_ext(tornado_sprite, anim, x, y+4400, 1, 1, 0, c_white, 1);
			draw_sprite_ext(tornado_sprite, anim, x, y+4200, 1, 1, 0, c_white, 1);
			draw_sprite_ext(tornado_sprite, anim, x, y+4000, 1, 1, 0, c_white, 1);
			draw_sprite_ext(tornado_sprite, anim, x, y+3800, 1, 1, 0, c_white, 1);
			draw_sprite_ext(tornado_sprite, anim, x, y+3700, 1, 1, 0, c_white, 1);
			draw_sprite_ext(tornado_sprite, anim, x, y+3500, 1, 1, 0, c_white, 1);
		}else{
			draw_sprite_ext(tornado_sprite_alts, anim, x, y+4400, 1, 1, 0, c_white, 1);
			draw_sprite_ext(tornado_sprite_alts, anim, x, y+4200, 1, 1, 0, c_white, 1);
			draw_sprite_ext(tornado_sprite_alts, anim, x, y+4000, 1, 1, 0, c_white, 1);
			draw_sprite_ext(tornado_sprite_alts, anim, x, y+3800, 1, 1, 0, c_white, 1);
			draw_sprite_ext(tornado_sprite_alts, anim, x, y+3700, 1, 1, 0, c_white, 1);
			draw_sprite_ext(tornado_sprite_alts, anim, x, y+3500, 1, 1, 0, c_white, 1);
		}
	}
}

shader_end();

if(state == PS_RESPAWN || respawn_taunt > 0){
    draw_sprite_ext(sprite_get("plat"), 0, x, y, 2*spr_dir, 2, 0, c_white, 1);
}