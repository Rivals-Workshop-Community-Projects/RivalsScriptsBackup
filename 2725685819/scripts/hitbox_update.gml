

if (attack == AT_FSPECIAL && hbox_num == 1){

draw_xscale = spr_dir;


	hsp = clamp(hsp, -7, 7);
	
	if (player == orig_player)
	player_id.move_cooldown[AT_FSPECIAL]= 10;
	
	player_id.jc_pointblank = false;
	
	if (position_meeting( x, y, player_id.jc_object )) && (player_id.jc_object.current_owner.player == player) && (!player_id.jc_object.jc_buff)
	{
		var fspec_hitbox = create_hitbox( AT_FSPECIAL, 2, x, y );
		fspec_hitbox.hsp = (10*spr_dir);
		
		destroyed = true;
		spawn_hit_fx( player_id.jc_object.x, player_id.jc_object.y, player_id.jc_destroyed );
		instance_destroy(player_id.jc_object);
		sound_play(sound_get("slicef2"));
		
		        sound_play(asset_get("sfx_clairen_swing_med"),0,0,0.5, 1);
				sound_play(asset_get("sfx_ori_energyhit_heavy"),0,0,0.5,2);
				sound_play(asset_get("sfx_ori_charged_flame_release"),0,0,0.3, 1.25);
                shake_camera( 4, 3 );
		
	}

	else if player_id.trick_cancel || player_id.fspec_charge >= 15
	{
		var fspec_hitbox = create_hitbox( AT_FSPECIAL, 2, x, y );
		fspec_hitbox.hsp = (10*spr_dir);
		
		destroyed = true;
		

		
	}

}

if (attack == AT_FSPECIAL && hbox_num == 2){

draw_xscale = spr_dir;

    with(pHitBox){
        
        if place_meeting( x, y, other.id ){
            if ( (player != other.player) && (get_player_team( other.player ) != get_player_team( player )) ){

            	sound_play(asset_get("sfx_clairen_swing_med"),0,0,0.5, 1);
				sound_play(asset_get("sfx_ori_energyhit_heavy"),0,0,0.5,2);
				sound_play(asset_get("sfx_ori_charged_flame_release"),0,0,0.3, 1.25);
                shake_camera( 4, 3 );
                //fake transcendent 
                if (type == 1)
                other.destroyed = true;
            }
        }
    }

}




