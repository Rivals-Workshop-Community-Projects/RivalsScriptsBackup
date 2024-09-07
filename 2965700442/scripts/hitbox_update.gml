//#region Local Variables
//flips projectile sprite on parry
if (was_parried) draw_xscale = spr_dir;
if (hitbox_timer == length-1) {
	spawn_hit_fx(round(x), round(y), destroy_fx);
}

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
                	//what this chunk of code does is record the size of the hitbox
                    other.old_xscale = other.image_xscale;
                    other.old_yscale = other.image_yscale;

                    //this part increases the size of the hitbox for the collision check
                    other.image_xscale = ((other.image_xscale*200)+other.additional_radius)/200;
                    other.image_yscale = ((other.image_yscale*200)+other.additional_radius)/200;


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
                        if (other.multihit_escape_time > 5) {
                        	other.multihit_hit_player = noone;
                        	proj_hit_count = 0;
                        }
                    }
                    
                    //this part increases the size of the hitbox for the collision check
                    other.image_xscale = other.old_xscale;
                    other.image_yscale = other.old_yscale;

				}
		    }
			
            proj_gap_timer --; //will count down all the time and act as a cooldown
            
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
            enemies = multproj_saved_values[10];
        	hitstun_factor = multproj_saved_values[11];
            
        }
    }
    else
    {
    	hitbox_hitstop --;
        if (hitbox_hitstop <= 0) in_hitpause = false;
    }
}

//#endregion


if (attack == AT_NSPECIAL) {
    if (hbox_num == 1) {
		parry_check(2, 2);
        if (destroyed || hitbox_timer >= length) {
    	    with (player_id) {
    	        var hbox = create_hitbox(AT_NSPECIAL, 2, other.x, other.y);
    	        hbox.spr_dir = other.spr_dir;
    	        hbox.player = other.player;
    	        hbox.depth = 4;
    	        for (var i = 0; i < array_length(hbox.can_hit); ++i) hbox.can_hit[i] = false;
    	    }
    	    sound_play(asset_get("sfx_forsburn_reappear_hit"));
    	    instance_destroy(id);
    	    exit
    	}
    }
    if (hbox_num == 2) {
		if (hitbox_timer < 3 || hitbox_timer >= 9) for (var i = 0; i < array_length(can_hit); ++i) can_hit[i] = false;
		if (hitbox_timer == 3) for (var i = 0; i < array_length(can_hit); ++i) can_hit[i] = true;
    }
    if (hbox_num == 3) {
		parry_check(2, 2);
        if (destroyed || hitbox_timer >= length) {
    	    with (player_id) {
    	        var hbox = create_hitbox(AT_NSPECIAL, 4, other.x, other.y);
    	        hbox.spr_dir = other.spr_dir;
    	        hbox.player = other.player;
    	        hbox.depth = 4;
    	        for (var i = 0; i < array_length(hbox.can_hit); ++i) hbox.can_hit[i] = false;
    	    }
    	    sound_play(asset_get("sfx_forsburn_reappear_hit"));
    	    instance_destroy(id);
    	    exit
    	}
    }
    if (hbox_num == 4) {
		var hitbox_multihit_min = multihit_gap;
		var hitbox_multihit_max = multihit_gap * multihit_amount + 1;
		if ((hitbox_timer < hitbox_multihit_min || hitbox_timer >= hitbox_multihit_max) && !instance_exists(multihit_hit_player)) for (var i = 0; i < array_length(can_hit); ++i) can_hit[i] = false;
		if ((hitbox_timer == hitbox_multihit_min) && !instance_exists(multihit_hit_player)) for (var i = 0; i < array_length(can_hit); ++i) can_hit[i] = true;
		if (hitbox_timer == hitbox_multihit_max + multihit_gap && !instance_exists(multihit_hit_player))
			mask_index = asset_get("empty_sprite")
		if (hitbox_timer == hitbox_multihit_max) {
			proj_multihit_final = true;
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
	        enemies = multproj_saved_values[10];
	        hitstun_factor = multproj_saved_values[11];
		}
    }
    if (hbox_num == 5) {
		parry_check(2, 2);
        if (destroyed || hitbox_timer >= length) {
            shake_camera(12, 16);
    	    with (player_id) {
    	        var hbox = create_hitbox(AT_NSPECIAL, 6, other.x, other.y);
    	        hbox.spr_dir = other.spr_dir;
    	        hbox.player = other.player;
    	        hbox.depth = 4;
    	        for (var i = 0; i < array_length(hbox.can_hit); ++i) hbox.can_hit[i] = false;
    	    }
        	 with (player_id) sound_play(taunt_down ? sound_get("sfx_anthem_nspecial_fullexpl2") : sound_get("sfx_anthem_nspecial_fullexpl"));
    	    instance_destroy(id);
    	    exit
    	}
    }
    if (hbox_num == 6) {
		var hitbox_multihit_min = multihit_gap;
		var hitbox_multihit_max = multihit_gap * multihit_amount + 1;
		if ((hitbox_timer < hitbox_multihit_min || hitbox_timer >= hitbox_multihit_max) && !instance_exists(multihit_hit_player)) for (var i = 0; i < array_length(can_hit); ++i) can_hit[i] = false;
		if ((hitbox_timer == hitbox_multihit_min) && !instance_exists(multihit_hit_player)) for (var i = 0; i < array_length(can_hit); ++i) can_hit[i] = true;
		if (hitbox_timer == hitbox_multihit_max + multihit_gap && !instance_exists(multihit_hit_player))
			mask_index = asset_get("empty_sprite")
		if (hitbox_timer == hitbox_multihit_max) {
			proj_multihit_final = true;
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
	        enemies = multproj_saved_values[10];
	        hitstun_factor = multproj_saved_values[11];
		}
    }
}
if (attack == AT_FSPECIAL && (hbox_num == 1 || hbox_num == 2)) {
	parry_check(1.5, 3);
}

if (attack == AT_FSPECIAL && hbox_num == 3) {
	for (var i = 0; i < array_length(can_hit); ++i) can_hit[i] = false;
}

if (attack == 49) {
	if (hbox_num == 1) {
    	var touching_ground = place_meeting(round(x), round(y), asset_get("par_block"));
        if (destroyed || hitbox_timer >= length || touching_ground) {
    	    with (player_id) {
    	        var hbox = create_hitbox(49, touching_ground ? 2 : 3, round(other.x), round(other.y - 32));
    	        hbox.spr_dir = other.spr_dir;
    	        hbox.depth = 4;
    	    }
    	    sound_play(asset_get("sfx_forsburn_reappear_hit"));
    	    instance_destroy(id);
    	    exit
    	}
    }
    if (hbox_num == 2 || hbox_num == 3) {
		if (hitbox_timer < 3 || hitbox_timer >= 9) for (var i = 0; i < array_length(can_hit); ++i) can_hit[i] = false;
		if (hitbox_timer == 3) for (var i = 0; i < array_length(can_hit); ++i) can_hit[i] = true;
		if (hitbox_timer > 9) mask_index = asset_get("empty_sprite");
    }
}

#define parry_check(_speed_mult, _lifetime_mult)
if (reflected && reflect_player_prev != player) {
	reflect_player_prev = player;
    reflect_timer ++;
    
    hitbox_timer /= _lifetime_mult;
    hitbox_timer = floor(hitbox_timer);
    
    hsp *= _speed_mult;  
    vsp *= _speed_mult;  
    
    if (multihit_amount > 0)
    {
        kb_value = point_distance(x, y, x + hsp, y + vsp);
        kb_angle = point_direction(x, y, x + hsp, y + vsp);
    }
}