if (state == PS_RESPAWN || respawn_taunt > 0) hud_offset = 70;
if platpos[2] > 0{
	draw_sprite_ext(sprite_get("platmain"), get_gameplay_time()/6, platpos[0], platpos[1], 2*spr_dir, 2, 0, c_white, platpos[2]);
	if respawn_anim > 149 || (state != PS_RESPAWN && !respawn_taunt) draw_sprite_ext(sprite_get("platyingyang"), get_gameplay_time()/6, platpos[0], platpos[1]-114, 2*spr_dir, 2, 0, c_white, platpos[2]*clamp((respawn_anim-149)/30, 0,1));
}

if state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR switch attack{
	case AT_USPECIAL:
	if image_index < 13{
		shader_start();
		draw_sprite_ext(sprite_get("uspecarm"), min(image_index, 4), x + 4*spr_dir, y - 32, 2*spr_dir, 2, usp_angle*spr_dir, c_white, 1);
		shader_end();
	}
	break;
}

with pHitBox if player_id == other && attack == AT_USPECIAL && hbox_num == 3 visible = 0; 

shader_end();
with hit_fx_obj if player_id == other && hit_fx == other.last_stand{
	gpu_set_blendmode(bm_add);
	gpu_set_fog(1, other.nymph_color, 1, 0);
	draw_sprite_ext(is_yi_afterimage[0], is_yi_afterimage[1], x, y, spr_dir*2, 2, 0, other.nymph_color, (1 - step_timer/hit_length));
	gpu_set_fog(0, other.nymph_color, 1, 0);
	gpu_set_blendmode(bm_normal);
}