//a

if (init == 0){
    init = 1;
    create_hitbox( AT_NSPECIAL, 1, x, y )
    with (asset_get("obj_article_solid")){
        if (id != other.id && player_id == other.player_id){
			state_timer = state_end-2;
			moved = true;
        }
    }
}

if (state_timer>=1){
	mask_index = sprite_get("solid");
}
state_timer++;

if (state_timer<state_end-2){
	//pulled from ao article 2 which was pulled from n/a article 1
	if (place_meeting(x,y, asset_get("pHitBox"))){
		var tmp_hb_id = instance_place(x,y, asset_get("pHitBox"))
		var tmp_id = tmp_hb_id.player_id;
		if (tmp_id != player_id){
			state = 2;
			state_timer = 0;
			sound_stop(tmp_hb_id.sound_effect);
			sound_play(tmp_hb_id.sound_effect);
			spawn_hit_fx( tmp_hb_id.x, tmp_hb_id.y, tmp_hb_id.hit_effect )
			if (tmp_id.hitpause = false){
				tmp_id.old_hsp = tmp_id.hsp;
				tmp_id.old_vsp = tmp_id.vsp;
				tmp_id.hitpause = true;
			}
			tmp_id.hitstop = tmp_hb_id.hitpause;//9
			tmp_id.hitstop_full = tmp_hb_id.hitpause;//9
			hitstop = tmp_hb_id.hitpause;//9
			tmp_id.has_hit = true;
			tmp_id.has_hit_player = true;
			shake_camera(4, 2)
			state_timer = state_end-2
			not_recover = true;
			mask_index = asset_get("empty_sprite");
		}
	}
}

var tmp_pl_id = instance_place(x, y-1, asset_get("oPlayer"))
//if ( place_meeting(x, y-1, asset_get("oPlayer")) ){
if ( tmp_pl_id!=-4 ){
	//if (!player_id.free){
		if (state_timer>20&&state_timer<state_end-2){
			state_timer = clamp(state_timer+2,0,state_end-2);
			//if (tmp_pl_id.usp_did_prev||tmp_pl_id.usp_did_prev2){
			//	tmp_pl_id.usp_did = true;
			//}
		}
	//}
}

if (state_timer>=state_end){
	instance_destroy();
    exit;
}