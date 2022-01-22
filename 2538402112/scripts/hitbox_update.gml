//hitbox_update
// if (attack == AT_UTILT){
//     player_id.move_cooldown[AT_UTILT] = 30
//     if (!free || y > room_height) destroyed = true;
// }

if (attack == AT_FTILT){
    if get_player_color(player) == 13 image_index = 1
    if get_player_color(player) == 12 image_index = 2
}
if (attack == AT_FTHROW){
	if hitbox_timer == 1 && !has_rune("O"){
		player_id.move_cooldown[AT_FTHROW] = 210;
		proj_angle = point_direction(0,0,abs(hsp),sign(hsp)*vsp);
	}
	player_id.grov_current_nspecial = 0;
    if !free destroyed = true;
    
    if get_player_color(player) == 13 image_index = 1
    if get_player_color(player) == 12 image_index = 2
}
if (attack == AT_UTHROW){
	if hitbox_timer == 1 && !has_rune("O") player_id.move_cooldown[AT_UTHROW] = 150;
	// player_id.grov_current_nspecial = 2;
	// through_platforms = 10
    if !free destroyed = true;
    
    if get_player_color(player) == 13 image_index = 1
    if get_player_color(player) == 12 image_index = 2
}
if (attack == AT_DTHROW){
	if hitbox_timer == 1 && !has_rune("O") player_id.move_cooldown[AT_DTHROW] = 60;
    if !free{
    	destroyed = true;
    	if player == orig_player{
    		with asset_get("obj_article1"){
    			if player_id == other.player_id life_timer = 0
    		}
    		sound_play(sound_get("Glass_Break"))
    		sound_play(asset_get("sfx_blow_weak2"))
	    	instance_create(x,y+9,"obj_article1")
	    	instance_create(x+40,y+9,"obj_article1")
	    	instance_create(x-40,y+9,"obj_article1")
    	}
    }
    if get_player_color(player) == 13 image_index = 1
    if get_player_color(player) == 12 image_index = 2
}

if (attack == AT_FSPECIAL){
	if player == orig_player{ //Allows Ori to Bash it
	    hsp = lengthdir_x(14, player_id.grov_wandangle);
	    vsp = lengthdir_y(14, player_id.grov_wandangle);
	    player_id.grov_pounce_foe_id = null
	}
    if !free{
        destroyed = true;
    }
    if !has_rune("G"){ // Hitstun rune
	    with asset_get("pHurtBox"){
	    	if player != other.orig_player{
	    		if place_meeting(x,y,other){
	    			other.has_hit = true
	    			other.player_id.grov_pouncex = playerID.x
	    			other.player_id.grov_pouncey = playerID.y
	    			if other.player_id.free other.player_id.grov_pouncey -= playerID.char_height/2
	    			other.player_id.grov_fspecial_airuse = false
	    			other.player_id.grov_pounce_foe_id = playerID
	    		}
	    	}
	    }
    }
    if has_hit{
        destroyed = true;
    }
    var rune_check = false
    with(player_id){
	    if has_rune("N") && special_pressed == true{
	    	rune_check = true
	    	other.destroyed = true
	    }
    }
    if (destroyed && was_parried == false && player == orig_player) || rune_check = true{
        // if !has_hit {
        sound_play(asset_get("sfx_absa_singlezap2"));
            
        // }
        player_id.grov_pounce_foe = has_hit
        with(player_id){
            if state != PS_HITSTUN{
                var target_dis = (x - other.x);
                var pounce_speed = sqrt(abs(target_dis))*sign(target_dis);
                hsp = pounce_speed*-1;
                if free {hsp *= 0.5}
                
                if !other.has_hit{
                    grov_pouncex = other.x + 18
                    grov_pouncey = other.y + 7
                    // if (y - other.y) < 38 && (y - other.y) > -38 grov_pouncey = y
                }
                
                window = 4
                window_timer = 0
                
            }
        }
    }
    if hitbox_timer == 60{
        player_id.move_cooldown[AT_FSPECIAL] = 0
    }
    if player_id.state_cat == SC_HITSTUN destroyed = true
    
}