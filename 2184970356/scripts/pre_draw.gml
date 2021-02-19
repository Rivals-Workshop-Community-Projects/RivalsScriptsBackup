//post_draw


shader_start();

if (attack == AT_FSTRONG && state == PS_ATTACK_GROUND){

	if (window == 2){
		if (spr_dir == 1 && attack == AT_FSTRONG){
			draw_sprite(sprite_get("fstrongbackforward_fx"), attack_anim_timer / 5, x, y);
		}
		if (spr_dir == -1 && attack == AT_FSTRONG){
			draw_sprite(sprite_get("fstrongbackbackward_fx"), attack_anim_timer / 5, x, y);
		}
	}
	
}

if ((attack == AT_USPECIAL || attack == AT_USPECIAL_2) && (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)){

	if (window == 1 && window_timer > 1|| window == 2){
		if (spr_dir == 1 && (attack == AT_USPECIAL || attack == AT_USPECIAL_2)){
			draw_sprite(sprite_get("uspecialback_fx"), attack_anim_timer / 5, particle_x, particle_y);
		}
		if (spr_dir == -1 && (attack == AT_USPECIAL || attack == AT_USPECIAL_2)){
			draw_sprite(sprite_get("uspecialbackbackward_fx"), attack_anim_timer / 5, particle_x, particle_y);
		}
	}
	
}

if (attack == AT_NSPECIAL && (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)){
	
	if (window == 1){
		attack_anim_timer = attack_anim_timer + 1;
	}
	
	if (window == 1 && window_timer > 1){
		if (attack == AT_NSPECIAL){
			draw_sprite(sprite_get("rest_fx"), attack_anim_timer / 5, x, y);
		}
	}	
}

if (attack == AT_FSPECIAL && state == PS_ATTACK_GROUND){
	if (window == 1){
		particle_x = x;
		particle_y = y;
	}
	
	if (window == 2 || window == 1 || window == 3){
		attack_anim_timer = attack_anim_timer + 1;
	}
	
	if (window == 1 && window_timer > 1 || window == 2 || window == 3){
		draw_sprite(sprite_get("fspecialground_fx"), attack_anim_timer / 6, particle_x, particle_y);
	}
	
}
	
if (attack == AT_USTRONG && state == PS_ATTACK_GROUND){

	if (window == 2){
		if (spr_dir == 1 && attack == AT_USTRONG){
			draw_sprite(sprite_get("ustrongbackforward_fx"), attack_anim_timer / 5, x, y);
		}
		if (spr_dir == -1 && attack == AT_USTRONG){
			draw_sprite(sprite_get("ustrongbackbackward_fx"), attack_anim_timer / 5, x, y);
		}
	}
	
	if (window == 3){
		if (spr_dir == 1 && attack == AT_USTRONG){
			draw_sprite(sprite_get("ustronghitback_fx"), attack_anim_timer_2 / 2.95, x, y);
		}
		if (spr_dir == -1 && attack == AT_USTRONG){
			draw_sprite(sprite_get("ustronghitback_fx"), attack_anim_timer_2 / 2.95, x, y);
		}
	}
	
}


if ((attack == AT_FAIR || attack == AT_BAIR) && state == PS_ATTACK_AIR){
	if (window == 2 && window_timer == 0){
		particle_x = x;
		particle_y = y;
	}
	
	if (window == 2 && window_timer < 10){
		if ((spr_dir == 1 && attack == AT_FAIR) || (spr_dir == -1 && attack == AT_BAIR)){
			draw_sprite(sprite_get("fairback_fx"), window_timer / 2, particle_x, particle_y);
		}
		if ((spr_dir == -1 && attack == AT_FAIR) || (spr_dir == 1 && attack == AT_BAIR)){
			draw_sprite(sprite_get("bairback_fx"), window_timer / 2, particle_x, particle_y);
		}
	}
}

shader_end();
