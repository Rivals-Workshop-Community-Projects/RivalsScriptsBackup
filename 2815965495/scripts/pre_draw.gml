//Draws tiny Smoke

	shader_start();
		if anim_timer >= 0 && anim_timer <20 {
			draw_sprite(sprite_get("smoke0"), anim_timer/4 , x - 28 , y - 40+crouch_offset);

		}else if anim_timer >= 15 && anim_timer <35{
			draw_sprite(sprite_get("smoke0"), (anim_timer+5)/4 , x + 6  , y - 10);
		
		}else if anim_timer >= 25 && anim_timer <45{
			draw_sprite(sprite_get("smoke0"), (anim_timer+5)/4 , x + 28 , y - 28);	
		}else if anim_timer >= 40 && anim_timer <60{
			draw_sprite(sprite_get("smoke0"), anim_timer/4 , x +2 , y - 68+crouch_offset);
		}
	shader_end();



if(state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND){	
	if attack == AT_FSTRONG{
	shader_start();
		if window == 2 && window_timer == 0{dust_pos3 = x; boost_timer = 0}
		if boost_timer != -1 && window != 1 {draw_sprite_ext( sprite_get("boost"), boost_timer/3, dust_pos3- 24*spr_dir, y-35, spr_dir, 1, 0, c_white, 1);}
		shader_end();
	}
	
	//BOOST VISUAL EFFECT
}
