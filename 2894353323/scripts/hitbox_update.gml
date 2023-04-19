//#region Local Variables
//flips projectile sprite on parry
if (was_parried) draw_xscale = spr_dir;

//multihit projectile code, only should run if multihit_hit_player actually exists
if (multihit_amount > 0)
{
    if (!in_hitpause)
    {
        if (proj_hit_count <= multihit_amount - 1 && !proj_multihit_final) //multihitting
        {
			if (instance_exists(multihit_hit_player) && multihit_hit_player != noone)
		    {
                with (multihit_hit_player) //forces the hit player to travel along the projectile so they won't fall off
                {

                    if (place_meeting(x, y, other)) //collision check
                    {
                        //this checks how close the hit player is to the center of the projectile
                        //affecting their pull into it, making it harded to DI the closer the player is to the center
                        var dist = point_distance(x, y, other.x, other.y);
                        var target_hsp = other.hsp * 0.6;
                        var target_vsp = other.vsp - gravity_speed * !free;
                        hsp = lerp(hsp, target_hsp, (1-clamp(0.05*dist, 0, 1))); //pull towards the center of the projectile
                        vsp = lerp(vsp, target_vsp, (1-clamp(0.05*dist, 0, 1)));

                        other.multihit_escape_time = 0; //reset the escape value, which allows the hit player to escape the projectile
                    }
                    else
                    {
                        other.multihit_escape_time ++; //counts up, if it goes over 5 the player will escape the projectile
                        if (other.multihit_escape_time > 5) other.multihit_hit_player = noone;
                    }
				}
		    }
			
            proj_gap_timer --; //will count down all the time and act as a cooldown
            if (proj_gap_timer == 0) proj_hit_count ++; //increment hit count when the timer reaches 0
            
            if (proj_gap_timer <= 0) //if the gap timer is/under 0, allow the proectile to hit again
            {
	            //start the multihit timer that decides when it should hit again
	            proj_gap_timer = multihit_gap;

                for (var i = 0; i < array_length(can_hit); ++i) can_hit[i] = true;
                if (proj_hit_count >= multihit_amount - 1) proj_multihit_final = true; //if the hit count is almost reaching the amount, count the next hit as final
            }
        }
        
        if (proj_multihit_final) //final hit
        {
            kb_value = multproj_saved_values[0];
            kb_scale = multproj_saved_values[1];
            hitpause = multproj_saved_values[2];
            hitpause_growth = multproj_saved_values[3];
            hit_effect = multproj_saved_values[4];
            sound_effect = multproj_saved_values[5];
            kb_angle = multproj_saved_values[6];
            damage = multproj_saved_values[7];
            can_tech = multproj_saved_values[8];
            force_flinch = multproj_saved_values[9];
            
            //this part increases the size of the hitbox for the collision check
            image_xscale = ((old_xscale*200)+additional_radius)/200;
            image_yscale = ((old_yscale*200)+additional_radius)/200;
            
        }
    }
    else
    {
        hitbox_hitstop = multihit_hit_player.hitstop;
        if (hitbox_hitstop <= 0) in_hitpause = false;
    }
}
//#endregion

if (attack== AT_USTRONG_2 && hbox_num == 1) {
    vsp *= 0.875;
}

if (attack== AT_NSPECIAL && hbox_num == 2) {
	if (hsp == 0) destroyed = true;
}

if (attack == AT_NSPECIAL_2 && hbox_num == 2) {
	if (place_meeting(x + hsp, y, asset_get("par_block"))) {
	    with (player_id) {
	        var hbox = create_hitbox(AT_NSPECIAL_2, 3, other.x, other.y);
	        hbox.spr_dir = other.spr_dir;
	    }
	    sound_play(asset_get("sfx_forsburn_reappear_hit"));
	    instance_destroy(id);
	    exit
	}
	    
}

if (attack == AT_NSPECIAL_2 && hbox_num == 4) {
	if (place_meeting(x + hsp, y, asset_get("par_block"))) {
	    with (player_id) {
	        var hbox = create_hitbox(AT_NSPECIAL_2, 5, other.x, other.y);
	        hbox.spr_dir = other.spr_dir;
	    }
	    sound_play(asset_get("sfx_forsburn_combust"));
	    instance_destroy(id);
	    exit
	}
	    
}

if (attack == AT_NSPECIAL_AIR && hbox_num == 1) {
	spr_dir = 1; 
	draw_xscale = spr_dir;
	proj_angle = point_direction(0,0,hsp, vsp);
    var block_below = collision_rectangle(bbox_left, bbox_bottom - 2, bbox_right, bbox_bottom, asset_get("par_block"), 1, 1);
    var plat_below = collision_rectangle(bbox_left, bbox_bottom - 2, bbox_right, bbox_bottom, asset_get("par_jumpthrough"), 1, 1);
    
   if (instance_exists(block_below)) {
	    with (player_id) {
	        var hbox = create_hitbox(AT_NSPECIAL_AIR, 2, floor( other.x), floor(get_instance_y(block_below)));
	        hbox.spr_dir = other.spr_dir;
	    	sound_play(sound_get("sfx_ice1"));
	    }
	    instance_destroy(id)
	    exit;
	}
	if (instance_exists(plat_below) && vsp > 0) {
	    with (player_id) {
	        var hbox = create_hitbox(AT_NSPECIAL_AIR, 2, floor( other.x), floor(get_instance_y(plat_below)));
	        hbox.spr_dir = other.spr_dir;
	    	sound_play(sound_get("sfx_ice1"));
	    }
	    instance_destroy(id)
	    exit;
	}
}

if (attack == AT_NSPECIAL_AIR && hbox_num == 2) {
	if ("plat_x" not in self) {
        plat_x = 0;
        plat_y = 0;
        plat_xprev = 0;
        plat_yprev = 0;
        
        var block_below = collision_rectangle(bbox_left, bbox_bottom - 2, bbox_right, bbox_bottom, asset_get("par_block"), 1, 1);
        var plat_below = collision_rectangle(bbox_left, bbox_bottom - 2, bbox_right, bbox_bottom, asset_get("par_jumpthrough"), 1, 1);
        if (instance_exists(block_below)) {
            plat_xprev = get_instance_x(block_below);
            plat_yprev = get_instance_y(block_below);
            plat_x = plat_xprev;
            plat_y = plat_yprev;
        }
        if (instance_exists(plat_below)) {
            plat_xprev = get_instance_x(plat_below);
            plat_yprev = get_instance_y(plat_below);
            plat_x = plat_xprev;
            plat_y = plat_yprev;
        }
    
    }
    
    var block_below = collision_rectangle(bbox_left, bbox_bottom - 2, bbox_right, bbox_bottom, asset_get("par_block"), 1, 1);
    var plat_below = collision_rectangle(bbox_left, bbox_bottom - 2, bbox_right, bbox_bottom, asset_get("par_jumpthrough"), 1, 1);
    
    if (instance_exists(block_below)) {
        plat_x = get_instance_x(block_below) - plat_xprev;
        plat_y = get_instance_y(block_below) - plat_yprev;
    }
    if (instance_exists(plat_below)) {
        plat_x = get_instance_x(plat_below) - plat_xprev;
        plat_y = get_instance_y(plat_below) - plat_yprev;
    }
    
    x += plat_x;
    y += plat_y;
    
    if (instance_exists(block_below)) {
        plat_xprev = get_instance_x(block_below);
        plat_yprev = get_instance_y(block_below);
    }
    if (instance_exists(plat_below)) {
        plat_xprev = get_instance_x(plat_below);
        plat_yprev = get_instance_y(plat_below);
    }
}


if (attack == AT_FSPECIAL_AIR && hbox_num == 1) {
    if (!in_hitpause)
    {
		if (hitbox_timer == 10) sound_play(sound_get("sfx_claw1"));
		if (hitbox_timer == 20) sound_play(sound_get("sfx_claw2"));
		if (hitbox_timer >= 26) for (var i = 0; i < array_length(can_hit); ++i) can_hit[i] = false;
    }
}