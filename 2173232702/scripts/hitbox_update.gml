
if (attack == AT_DSTRONG) {
  if (!free) destroyed = true;
}


if (attack == AT_USTRONG){
    if (player_id.window == 4 && player_id.window_timer == 10 && hbox_num == 2){
        //IMPORTANT: hit_fx_create only at init, doesn't have to be recreated every time, only spawned
        with (player_id){
        	spawn_hit_fx(other.x, other.y, fx_strongu_proj_explosion);
        	sound_play(asset_get("sfx_ell_fist_explode"));
        }
    }
}

if (attack == AT_EXTRA_2){
    proj_angle += 10 * sign(hsp);
	if (!free){
		destroyed = true;
	}
}

// if (attack == AT_DSPECIAL_2){
// 	// oPlayer.vsp = -10;
// 	if (player_id.window == 1 && player_id.window_timer == 1){
// 		with(player_id){
// 			if (selected_spell == 7){
// 				var tornado = spawn_hit_fx(x + 64*spr_dir, y-16, fx_tornado);
// 				tornado.depth = -20;
// 			}
// 		}
// 	}
// }