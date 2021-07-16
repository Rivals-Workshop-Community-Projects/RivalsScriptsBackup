//hitbox_update

if (attack == AT_UTILT){
    player_id.move_cooldown[AT_UTILT] = 30
    if (!free || y > room_height) destroyed = true;
}

if (attack == AT_NSPECIAL){
	if hitbox_timer == 1 player_id.move_cooldown[AT_NSPECIAL] = 60;
	player_id.grov_current_nspecial = 1;
	proj_angle = point_direction(0,0,abs(hsp),sign(hsp)*vsp);
	// print(string(hsp))
    if !free destroyed = true;
}
if (attack == AT_NSPECIAL_2){
	player_id.move_cooldown[AT_NSPECIAL] = 30;
    if !free destroyed = true;
}

if (attack == AT_FSPECIAL){
	if player == orig_player{ //Allows Ori to Bash it
	    hsp = lengthdir_x(13, player_id.grov_wandangle);
	    vsp = lengthdir_y(13, player_id.grov_wandangle);
	}
    if !free{
        destroyed = true;
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
        if !has_hit {
            sound_play(asset_get("sfx_absa_singlezap2"));
            
        }
        player_id.grov_pounce_foe = has_hit
        with(asset_get("oPlayer")){
            if player == other.player && state != PS_HITSTUN{
                var target_dis = (x - other.x);
                var pounce_speed = sqrt(abs(target_dis))*sign(target_dis);
                hsp = pounce_speed*-1;
                if free {hsp *= 0.5}
                
                if !other.has_hit{
                    grov_pouncex = other.x + 18
                    grov_pouncey = other.y + 29
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
    
}