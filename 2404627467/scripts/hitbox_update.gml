if (attack = AT_NAIR && hbox_num = 1) {
    x = player_id.x;
    y = player_id.y - 32;
}

//FSPECIAL
if (attack = AT_FSPECIAL && (hbox_num = 1 || hbox_num = 2)) {
    y = player_id.y - 32;
}

if (attack = AT_FSPECIAL && hbox_num = 3) {
    if ("anthem_track_lenactual" not in self) {
        anthem_track_lenactual = anthem_track_len
        off_x = anthem_marked_player.x;
        off_y = anthem_marked_player.y;
    }
    if (anthem_marked_player.object_index == oPlayer) {
        if (get_gameplay_time() % 2 == 0) {
    		for (var i = 0; i < array_length(can_hit); i++)
    			can_hit[i] = true;
        }
		can_hit[anthem_marked_player.player] = false;
        if (anthem_marked_player.anthem_marked_timer > anthem_hittime) {
            hitbox_timer = 0;
    		anthem_track_dir += 5;
    		with (player_id)
    		    other.sprite_index = sprite_get("fx_fspecial_proj2");
    		image_index += 0.25;
    		
    		if (image_index >= 8)
    		    image_index = 3;
            off_x = anthem_marked_player.x;
            off_y = anthem_marked_player.y;
        }
        else {
    		anthem_track_lenactual = ease_backIn(anthem_track_len, 0, hitbox_timer, 10, 15)
    		if (hitbox_timer >= 11) {
    		    with (player_id) {
    		        var hbox = create_hitbox(AT_FSPECIAL, 4, round(other.x), round(other.y))
                    hbox.player = other.player;
    			    sound_play(asset_get("sfx_abyss_explosion_big"));
    		    }
	        	anthem_marked_player.anthem_marked_id = noone;
		        instance_destroy(id);
		        exit;
    		}
        }
        if (anthem_marked_player.anthem_marked_timer < anthem_hittime + 30) {
        	
    		with (player_id)
    		    other.sprite_index = sprite_get("fx_fspecial_proj2b");
    		image_index += 0.3;
    		
    		if (image_index >= 6)
    		    image_index = 2;
    		    
        }
    	x = off_x +  lengthdir_x(anthem_track_lenactual, anthem_track_dir);
    	y = off_y - (anthem_marked_player.char_height / 2) + lengthdir_y(anthem_track_lenactual, anthem_track_dir);
    }
}


if (attack == 49 && hbox_num == 4) {
    if ("anthem_track_player" in self) {
        var x_off = anthem_track_player.x - player_id.x;
        var y_off = (anthem_track_player.y - 24) - player_id.y;
        x_pos = (x_off - player_id.x);
        y_pos = (y_off - player_id.y);
        hsp = anthem_track_player.hsp;
        vsp = anthem_track_player.vsp;
    }
}