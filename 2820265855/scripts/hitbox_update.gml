if (attack == AT_NSPECIAL_2 && hbox_num == 1 && hitbox_timer == 119) destroyed = 1;
if (attack == AT_NSPECIAL_2 && hbox_num == 1 && destroyed == 1) sound_play(asset_get( "sfx_oly_crystal_cracking" ));
if (attack == AT_NSPECIAL_2 && hbox_num == 1 && image_index > 10) image_index--;

//zap
if (attack == AT_EXTRA_3) && !was_parried{
    if (hitbox_timer == 1){
        vsp = 0;
    }
}

if (attack == AT_EXTRA_3) && !was_parried{
    if (hitbox_timer == 10){
        vsp = -14
        hsp = -4*spr_dir
    }
}

if (attack == AT_EXTRA_3) && !was_parried{
    if (hitbox_timer == 20){
        vsp = 0
        hsp = 22*spr_dir
    }
}

if (attack == AT_EXTRA_3) {
    if (was_parried){
    	hsp = lengthdir_x(16, point_direction(x, y, player_id.x, player_id.y-player_id.char_height/2));
		vsp = lengthdir_y(16, point_direction(x, y, player_id.x, player_id.y-player_id.char_height/2));
    }
}



if (attack == AT_DSPECIAL_2){
    hsp = lengthdir_x(16, point_direction(x, y, target.x, target.y-target.char_height/2));
	vsp = lengthdir_y(16, point_direction(x, y, target.x, target.y-target.char_height/2));
	
	if(hitbox_timer%3 == 1 || destroyed){
	    spawn_hit_fx(x + lengthdir_x(16, point_direction(x, y, target.x, target.y-target.char_height/2)), 
	    y + lengthdir_y(16, point_direction(x, y, target.x, target.y-target.char_height/2)), 150);
	}
}