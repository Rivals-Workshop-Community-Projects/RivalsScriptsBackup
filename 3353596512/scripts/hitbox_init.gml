//hitbox init, FOR PROJECTILES SPECIFICALLY

destroyed_effect = false;
scrap_unsellable = false;
is_homemade = false;

//fspec
if (attack == AT_FSPECIAL){
    drop_sfx = sound_get("drop_metal_small");
    explode_sfx = sound_get("fspec_explode");
    flashbang_ground_mask = sprite_get("fspecial_grenade_mask_ground");
    if (hbox_num == 1){
        flashbang_bounced_ground = false;
        flashbang_bounced_hit = false;
        length = hitbox_life - player_id.flashbang_detonate_timer;
    if (player_id.up_down){
        vsp = -8;
        hsp = 4*spr_dir;
    }
    if (player_id.down_down){
        vsp = 0;
        hsp = 12*spr_dir;
    }
    }
    if (hbox_num == 2){
        can_hit_self = true;
        is_homemade = false;
    }
}

//dspecial throw
if (attack == AT_DSPECIAL_2){
    if (hbox_num == 1){
    	player_id.small_scrap_obj = self;
        image_index = player_id.current_scrap.index;
        proj_scrap_id = player_id.current_scrap;
        made_hit_sfx = false;
        curr_sfx = noone;
        anim_timer = 0;
        is_animating = false;
        grounded_timer = 0;
        
        if (player_id.window == 5){
            hsp = 0;
            vsp = -13;
            kb_angle = 90;
        }
        if (player_id.window == 8){
            hsp = 0;
            vsp = 12;
        }
        
        if (proj_scrap_id.name != "Easter egg"){
            will_explode = false;
        }
        
        if (proj_scrap_id.name != "Comedy" && proj_scrap_id.name != "Tragedy"){
            mask_type = -1;
        }
        
        if (proj_scrap_id.name != "Whoopee cushion"){
            whoopee_hit = false;
        }
        
        if (proj_scrap_id.name != "Soccer ball"){
            soccer_hit = false;
            h_lockout = false;
            h_lockout_time = 0;
            soccer_angle = 0;
            soccer_force = 0;
            h_hsp = 0;
            h_vsp = 0;
            soccer_bounced = false;
            soccer_land_sfx = noone;
            soccer_vsp = 0;
        }
        
        
        switch (proj_scrap_id.name){
            case "Airhorn":
                hit_sfx = sound_get("scrap_airhorn");
            break;
            case "Hairdryer":
                hit_sfx = sound_get("scrap_hairdryer");
            break;
            case "Teeth":
                teeth_sprite = sprite_get("scrap_teeth");
            break;
            case "Whoopee cushion":
                hit_sfx = sound_get("scrap_fart" + string(random_func(0, 3, true) + 1) );
                whoopee_ground_mask = sprite_get("scrap_whoopee_mask");
                whoopee_sprite = sprite_get("scrap_whoopee");
                whoopee_hit = false;
            break;
            case "Easter egg":
                hit_sfx = sound_get("scrap_egg_pop");
                if (random_func(0, 6, true) == 5){
                    will_explode = true;
                } else {
                    will_explode = false;
                }
            break;
            case "Comedy":
                mask_type = 0;
            break;
            case "Tragedy":
                mask_type = 1;
            break;
            case "Old phone":
                sound_play(sound_get("scrap_phone_scream"), false, noone, 1, 1);
            break;
            case "Laser pointer":
            	sound_play(sound_get("scrap_laser_click"), false, noone, 1, 1);
            	click_sfx = sound_get("scrap_laser_click");
            	laser_sprite = sprite_get("scrap_proj_laser");
            	laser_off_sprite = sprite_get("scrap_proj_laseroff");
            break;
            case "Soccer ball":
                hit_sfx = sound_get("scrap_soccer_kick");
                soccer_hit = false;
                h_lockout = false;
                h_lockout_time = 0;
                soccer_angle = 0;
                soccer_force = 0;
                soccer_bounced = false;
                h_hsp = 0;
                h_vsp = 0;
                soccer_land_sfx = sound_get("scrap_soccer_land");
                soccer_vsp = 0;
                soccer_destroyed_fake = false;
            break;
            case "Homemade flashbang":
                hit_sfx = sound_get("fspec_explode");
            break;
        }
        if (!player_id.has_scrap){
            player_id.current_scrap = noone;
        }
        if (player_id.is_zdropping && player_id.has_scrap){
            player_id.has_scrap = false;
            player_id.item_weight = 0;
            player_id.current_scrap = noone;
            player_id.is_zdropping = false;
            with (player_id){
                calculate_weight();
            }
        }
    }
    if (hbox_num == 2){
        image_index = player_id.current_scrap.index_large
        proj_scrap_id = player_id.current_scrap;
        will_explode = false;
        made_hit_sfx = false;
        curr_sfx = noone;
        anim_timer = 0;
        is_animating = false;
        grounded_timer = 0;
        if (player_id.window == 14){
            hsp = 0;
            vsp = -9;
            kb_angle = 90;
        }
        if (player_id.window == 17){
            hsp = 0;
            vsp = 8;
        }
         
        switch (proj_scrap_id.name){
            case "Cash register":
            hit_sfx = sound_get("scrap_cash");
            break;
        }
        if (!player_id.has_scrap){
            player_id.current_scrap = noone;
        }
        if (player_id.is_zdropping && player_id.has_scrap){
            player_id.has_scrap = false;
            player_id.item_weight = 0;
            player_id.current_scrap = noone;
            player_id.is_zdropping = false;
            with (player_id){
                calculate_weight();
            }
        }
    }
    
    if (hbox_num == 3){
        bees_sfx = noone;
        bees_attacking = false;
    }
}

#define calculate_weight()

	weight_value = passive_weight + item_weight;
	//dash_speed = lerp(7, 4, weight_value/weight_max);
	dash_speed = (ceil(lerp(7, 4, weight_value/weight_max)*4) / 4)-0.25;
	//initial_dash_speed = lerp(7.5, 4.5, weight_value/weight_max);
	initial_dash_speed = (ceil(lerp(7.5, 4.5, weight_value/weight_max)*4) / 4)-0.25;
	wave_land_adj = lerp(1.4, 1, weight_value/weight_max);
	//air_max_speed = lerp(4.5, 3, weight_value/weight_max);
	air_max_speed = (ceil(lerp(4.5, 3, weight_value/weight_max)*4) / 4)-0.25;
	gravity_speed = lerp(0.5, 0.65, weight_value/weight_max);
	leave_ground_max = round(lerp(7, 3, weight_value/weight_max)*2) / 2;
	max_jump_hsp = round(lerp(7, 3, weight_value/weight_max)*2) / 2;
	wave_friction = lerp(0.11, 0.2, weight_value/weight_max);
	air_accel = (floor(lerp(0.4, 0, weight_value/weight_max)*20) / 20)-0.05;
	air_accel = clamp(air_accel, 0.2, 0.35);