// pre-draw

if (state==PS_SPAWN){
	var timemax = 100;
	if (get_gameplay_time()<=timemax){
		if (state_timer<timemax){
			draw_sprite_ext( sprite_get("intro_b"), image_index, x, y, spr_dir, 1, 0, -1, 1 )
		}
	}
}

if (state==PS_RESPAWN || (state==PS_ATTACK_GROUND && free && attack==AT_TAUNT)){
	draw_sprite_ext( sprite_get("plat_b"), 0, x, y, spr_dir, 1, 0, -1, 1 ) 
}

with(asset_get("pHitBox")){
	if (player_id == other.id){
		if (attack==AT_DSPECIAL && hbox_num==1){
			var tmp_index = 0 + hitbox_timer * 3 / 24;
			draw_sprite_ext( sprite_get("door_head_shadow"), tmp_index, x, y, spr_dir, 1, 0, -1, 1 ) 
			draw_sprite_ext( sprite_get("door_head"), head_kind, x, y, head_dir, 1, 0, -1, 1 ) 
		}
	}
}