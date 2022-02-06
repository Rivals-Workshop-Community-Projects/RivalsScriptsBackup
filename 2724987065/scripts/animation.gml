// make the nametag go higher while ustrong's fist is raised
/*
if phone_attacking && attack == AT_USTRONG && window > 2 && !(window == 4 && window_timer > phone_window_end / 2){
	hud_offset = lerp(hud_offset, 180, 0.5);
}

// fix weird jittering that can happen when it tries to return to 0
if abs(hud_offset) < 1{
	hud_offset = 0;
}
*/

switch (state) {
	case PS_RESPAWN:
		sprite_index = sprite_get("respawn");
		image_index = state_timer/10;
		break;
	case PS_SPAWN:
		if state_timer < 80 && !probably_in_abyss {
			sprite_index = sprite_get("dspecial");
			draw_y = clamp(-2320 + 58 * state_timer, -2320, 0);
			hud_offset = -draw_y;
			if draw_y != 0 && state_timer%2 == 1 instance_create(x, y + draw_y, "obj_article1");
			if state_timer == 20 && !hitpause { 
				with oPlayer sound_stop(sound_get("drg_jump"));
				sound_play(sound_get("drg_jump"), 0, noone, .8);
			}
			if state_timer == 40 && !hitpause {
				shake_camera(7, 22);
				var fx2 = spawn_hit_fx(x, y, boom_fx);
				fx2.depth = -11;
				with oPlayer sound_stop(sound_get("dive"));
				sound_play(sound_get("dive"), 0, noone, .8);
			}
			break;
		}
	case PS_IDLE:
		switch (state_timer%42) {
			case 0:
				animation_index = 0;
				break;
			case 9:
			case 15:
			case 21:
			case 30:
			case 36:
			case 42:
				animation_index++;
				break;
		}
		image_index = animation_index;
		break;
	case PS_WALK:
		if (state_timer == 0) animation_index = 0;
		image_index = floor(animation_index)
		animation_index += .3;
		break;
}