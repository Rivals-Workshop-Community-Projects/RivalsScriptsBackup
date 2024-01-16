if (attack == AT_NSPECIAL || AT_NSPECIAL_AIR) && hbox_num == 1 {
    if !free {
        destroyed = true;
        player_id.letter1ID = 0;
        player_id.letter2ID = 0;
        player_id.letter3ID = 0;
        player_id.airletter1ID = 0;
        player_id.airletter2ID = 0;
        player_id.airletter3ID = 0;
    }
}

if (attack == AT_NSPECIAL) && (hbox_num == 1 || hbox_num == 2 || hbox_num == 3) {
    hsp = hsp * 0.935;
    
    if (hitbox_timer == 29 || destroyed = true || !free || (place_meeting(x, y, asset_get("pHitBox")))) {
        destroyed = true;
        player_id.letter1ID = 0;
        player_id.letter2ID = 0;
        player_id.letter3ID = 0;
        var k = spawn_hit_fx( x- (0 * spr_dir), y , player_id.letter_vfx );
    	k.depth = depth + 1;
    }    
}

if (attack == AT_NSPECIAL_AIR) && (hbox_num == 1 || hbox_num == 2 || hbox_num == 3) {
    hsp = hsp * 0.95;
    vsp = vsp * 0.925;
    
    if (hitbox_timer == 29 || destroyed = true || !free || (place_meeting(x, y, asset_get("pHitBox")))) {
        destroyed = true;
        player_id.airletter1ID = 0;
        player_id.airletter2ID = 0;
        player_id.airletter3ID = 0;
        var k = spawn_hit_fx( x- (0 * spr_dir), y , player_id.letter_vfx );
    	k.depth = depth + 1;
    }    
}


if (attack == AT_FSPECIAL_AIR && player_id.mb_spin_hit = true) && ((hbox_num == 1 && hbox_num == 2) || (hbox_num == 3 && hbox_num == 4)) {
    destroyed = true;
}

if player_id.lvl2projID != 0  {
    vsp = vsp * 0.935;


    if player_id.grabbed_player_obj != noone {
    	player_id.grabbed_player_obj.hitpause = true;
		player_id.grabbed_player_obj.hitstop = 2;
		player_id.grabbed_player_obj.hitstun = true;
		player_id.grabbed_player_obj.x = lerp(player_id.grabbed_player_obj.x, player_id.lvl2projID.x+spr_dir * 0, .45);
    	player_id.grabbed_player_obj.y = lerp(player_id.grabbed_player_obj.y, player_id.lvl2projID.y + 25, .35);
    }
    if (player_id.lvl2projID.hitbox_timer = 15 || player_id.lvl2projID.hitbox_timer = 29) {
        create_hitbox(AT_DSPECIAL_2, 5, player_id.lvl2projID.x, player_id.lvl2projID.y + 0)
    } 
    if (player_id.lvl2projID.hitbox_timer = 8 || player_id.lvl2projID.hitbox_timer = 22) {
        create_hitbox(AT_DSPECIAL_2, 6, player_id.lvl2projID.x, player_id.lvl2projID.y + 0)
    }

    if player_id.lvl2projID.hitbox_timer == 35 {
        destroyed = true;
        player_id.planeID = create_hitbox(AT_DSPECIAL_2, 8, player_id.lvl2projID.x, player_id.lvl2projID.y - 30)
        player_id.planeID.spr_dir = player_id.lvl2projID.spr_dir * -1;
        player_id.lvl2projID = 0;
   		sound_play(sound_get("planewhoosh"));
   		sound_play(sound_get("whoosh"));
        var k = spawn_hit_fx( x- (0 * spr_dir), y , player_id.mb_proj_lv2_destroy_vfx);
    	k.depth = depth + 1;        
    	k.spr_dir = player_id.planeID.spr_dir;        
    }
}

if player_id.lvl1projID != 0 {
    player_id.lvl1projID.through_platforms = 100;
}

if player_id.packageID != 0 {
    player_id.packageID.through_platforms = 100;
}

if player_id.planeID != 0 {
    if player_id.planeID.hitbox_timer == 2 {
        create_hitbox(AT_DSPECIAL_2, 7, player_id.planeID.x, player_id.planeID.y + 20)
    }
    if (player_id.planeID.hitbox_timer < 16)  {
        player_id.planeID.image_xscale = 0;
        player_id.planeID.image_yscale = 0;
    } else if player_id.planeID.hitbox_timer >= 16 {
    	if player_id.grabbed_player_obj != noone {
	        var k = spawn_hit_fx(player_id.planeID.x + (spr_dir * 20), player_id.planeID.y - 40, player_id.letter_big_vfx);
		    k.depth = player_id.planeID.depth + 1;
		    k.spr_dir = player_id.planeID.spr_dir * -1;
	   		player_id.grabbed_player_obj.hitpause = false;
			player_id.grabbed_player_obj.hitstop = 0;
	    	player_id.grabbed_player_obj.hitstun = false;
			player_id.grabbed_player_obj = noone;    	
       	}
    	player_id.planeID.image_xscale = 0.5;
        player_id.planeID.image_yscale = 0.5;
        player_id.planeID = 0;
    }
}

if player_id.exploID != 0 {
    if (player_id.exploID.hitbox_timer < 15)  {
        player_id.exploID.image_xscale = 0;
        player_id.exploID.image_yscale = 0;
    } else if player_id.exploID.hitbox_timer >= 16 {
		shake_camera( 12, 8 )
	    player_id.exploID.image_xscale = 0.95;
        player_id.exploID.image_yscale = 0.95;
        player_id.exploID = 0;
        player_id.explo1 = 0;
        player_id.explo_owner = noone;
        player_id.instant_explo_start = false;
        player_id.instant_exploding = false;
    }
}

if player_id.explo1 != 0 {
    if (player_id.explo1.hitbox_timer < 15)  {
        player_id.explo1.image_xscale = 0;
        player_id.explo1.image_yscale = 0;
    } else if player_id.explo1.hitbox_timer >= 16 {
		shake_camera( 12, 8 )
    	player_id.explo1.image_xscale = 1;
        player_id.explo1.image_yscale = 1;
        player_id.exploID = 0;
        player_id.explo1 = 0;
        player_id.explo_owner = noone;
        player_id.instant_explo_start = false;
        player_id.instant_exploding = false;
    }
}