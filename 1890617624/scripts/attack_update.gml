
if url != 1890617624{
	return;
}

// Fix issue with hit_player_obj stopping code running, thanks SAI :D
if !instance_exists(hit_player_obj){
    hit_player_obj = self
}

//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

// Hamburger charging
if (attack == AT_NSPECIAL) {
    if !free {
        if (window == 1 && !special_down) {
            window = 8;
            window_timer = 0;
        }
        
        // Giant burger
        if window == 1 and window_timer >= 7 and runeJ{
        	set_attack( AT_NSPECIAL_2 );
        }
        
        if (window == 7 or window >= 10) {
            set_state( PS_IDLE );
        }
    }
    else {
        if (window == 11 && !special_down) {
            window = 16;
            window_timer = 0;
        }
        
        if (window == 15 or window <= 10) {
            set_state( PS_IDLE_AIR );
        }
    }
}

// Shake / Apple charging
if (attack == AT_DSPECIAL){
    if !free{
        if (window == 1 && !special_down){
            if has_shake or golden{
                window = 5;
                window_timer = 0;
            }
            else{
                set_state( PS_IDLE );
            }
        }
        
        if (window = 4 or window >= 8){
            set_state( PS_IDLE );
        }
        
        if (window == 2 and !has_apple and !golden and window_timer == 1){
            set_state( PS_IDLE );
        }
        
        // This code isn't particularly efficient. Too bad!
        
        if (has_apple or golden) and (window == 2 and window_timer == 1) or (golden and window >= 2 and window <= 4){
            apple = instance_create(x + (50 * spr_dir),y - 90,"obj_article1")
            apple.player_id = id;
            apple.player = player;
            apple.spr_dir = spr_dir;
            
            if soul_points > 0{
				locate_nearest_player();
				apple.x = shortest_id.x - spr_dir * 40;
				apple.y = shortest_id.y - 80;
				sound_play(sound_get("soulboost"));
				soul_points -= 1;
				soul_flash_timer = 20;
            }
        }
        
        if (has_shake or golden) and (window == 6 and window_timer == 1) or (golden and window >= 5 and window <= 8){
            shake = instance_create(x + (50 * spr_dir),y - 90,"obj_article2")
            shake.player_id = id;
            shake.player = player;
            shake.spr_dir = spr_dir;
            
            if soul_points > 0{
				locate_nearest_player();
				shake.x = shortest_id.x;
				shake.y = shortest_id.y - 120;
				shake.soul_active = true;
				sound_play(sound_get("soulboost"));
				soul_points -= 1;
				soul_flash_timer = 20;
            }
        }
    }
    else {
        if (window == 9 && !special_down){
            if (has_shake or golden){
                window = 13;
                window_timer = 0;
            }
            else{
                set_state( PS_IDLE_AIR );
            }
        }
        
        if (window = 12 or window <= 8){
            set_state( PS_IDLE_AIR );
        }
        
        if (window == 10 and !has_apple and !golden and window_timer == 1){
            set_state( PS_IDLE_AIR );
        }
        
        if (has_apple or golden) and (window == 10 and window_timer == 2) or (golden and window >= 10 and window <= 12){
            apple = instance_create(x + (30 * spr_dir),y - 90,"obj_article1")
            apple.player_id = id;
            apple.player = player;
            apple.spr_dir = spr_dir;
            
            if soul_points > 0{
				locate_nearest_player();
				apple.x = shortest_id.x - spr_dir * 40;
				apple.y = shortest_id.y - 80;
				sound_play(sound_get("soulboost"));
				soul_points -= 1;
				soul_flash_timer = 20;
            }
        }
        
        if (has_shake or golden) and (window == 14 and window_timer == 1) or (golden and window >= 13 and window <= 15){
            shake = instance_create(x + (30 * spr_dir),y - 90,"obj_article2")
            shake.player_id = id;
            shake.player = player;
            shake.spr_dir = spr_dir;
            
            if soul_points > 0{
				locate_nearest_player();
				shake.x = shortest_id.x;
				shake.y = shortest_id.y - 120;
				shake.soul_active = true;
				sound_play(sound_get("soulboost"));
				soul_points -= 1;
				soul_flash_timer = 20;
            }
        }
    }
}

if (attack == AT_USPECIAL){
    if (window >= 3){
        can_special = true;
        can_attack = true;
        can_jump = true;
    }
}

if (attack == AT_FSPECIAL){
    if (window == 10){
        set_state( PS_IDLE );
    }
    
    if (window == 2 and !special_down){
        window = 11;
        window_timer = 0;
    }
    
    if (window == 14){
    	move_cooldown[AT_FSPECIAL] = 8
    }
}

//================================================================================
// Golden code
var attacklist = [AT_EXTRA_1, AT_EXTRA_2, AT_EXTRA_3, AT_TAUNT, AT_TAUNT_2, AT_FTHROW, AT_NTHROW, AT_USTRONG_2, AT_UTHROW, AT_FSTRONG_2, AT_TAUNT_2]
if golden and (array_find_index(attacklist, attack) == -1){
    if not(window = 1 and (attack == AT_FSTRONG or attack == AT_USTRONG or attack == AT_DSTRONG)){
        if (attack == AT_NSPECIAL){
            if (window != 1 and window != 11){
                window_timer += 2
            }
        }
        else if attack != AT_FSPECIAL and attack != AT_USPECIAL{
            window_timer += 1
        }
    }
    if (window >= 3 and attack != AT_UTILT){
        can_attack = true;
        can_strong = true;
    }
}

if golden and attack = AT_NSPECIAL{
    sound_play(sound_get("throw"));
	if free{
		create_hitbox(AT_NSPECIAL, 6, x + (32 * spr_dir), y - 80)
		
	} else{
		create_hitbox(AT_NSPECIAL, 5, x + (32 * spr_dir), y - 32)
	}
}

//================================================================================
// Super triggers

var attacklist = [AT_EXTRA_1, AT_EXTRA_2, AT_EXTRA_3, AT_NTHROW, AT_UTHROW, AT_FSTRONG_2, AT_TAUNT, AT_TAUNT_2]

if (attack_pressed and special_pressed and array_find_index(attacklist, attack) == -1 and window == 1 and window_timer <= 3){
	// McLazer
	if super >= 100{
		set_attack(AT_EXTRA_1);
		super = 0;
		supertimer = 0;
		sound_play(sound_get("supercombo"));
		sound_play(sound_get("superlazer"));
	// Ronald Magic
	} else{
		if super >= 33 and runeL{
			set_attack(AT_UTHROW);
			super -= 33;
			supertimer = 0;
			sound_play(sound_get("selected"));
			sound_play(sound_get("supercombosmall"));
		}
	}
}

//================================================================================
// Supers

// Mc. Lazer
if (attack == AT_EXTRA_1){
	if golden and window = 1 and window_timer >= 20{
		window = 2
	}
    
    // Super Freeze
    if window <= 3{
    	time_freeze_ticks = 1;
    }
    
    if window == 4{
        create_hitbox( AT_EXTRA_1, 1, x + (1020 * spr_dir), y - 90 );
    }
}

// Ronald Magic
if (attack == AT_UTHROW){
    if window <= 3{
		time_freeze_ticks = 1;
    }
    
    if window == 4 and window_timer = 1{
    	create_hitbox( AT_UTHROW, 1, x + (980 * spr_dir), y - 90 );
    }
}

//================================================================================
// Taunt counter

if (attack == AT_TAUNT){
    if window == 2{
        super_armor = true;
        
        if (hitpause) {	// Counter code taken from Yoyo
			locate_nearest_player();
			
			if (shortest_id.x < x) {
				spr_dir = 1;
			} else {
				spr_dir = -1;
			}
			x = shortest_id.x + (-80 * spr_dir)
            set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("lazer"));
			window = 5;
			window_timer = 0;
			super_armor = false;
		    can_move = false;
		    can_fast_fall = false;
		    marked = 0;
		    wrapped = 0;
		    burned = 0;
		    bubbled = 0;
		    poison = 0;
		    stuck = 0;
		    plasma_pause = 0;
			hitpause = false;
			hitstop = 0;
			hitstop_full = 0;
			sound_play(sound_get("shock1"));
			sound_play(sound_get("shock2"));
			sound_play(sound_get("tauntcounter"));
			
			if golden{
				set_player_damage(shortest_id.player, 999);
				sound_play(sound_get("willowispcrit"));
			}
		}
        
    } if window == 3{
        super_armor = false;
    } if window == 4{
        set_state( PS_IDLE );
    } if window == 5{
        time_freeze_ticks = 1;
        if invince_time < 20{
        	invince_time = 20;
        }
    }
}

if attack == AT_TAUNT_2{
	invincible = true;
}

//================================================================================
// Golden explode

if (attack == AT_EXTRA_2){
	invincible = true;
	
	time_freeze_ticks = 1;
	
	if explodetimer >= 110{
        draw_indicator = false;
		if explodetimer >= 230{
			exploded = true
			create_deathbox(x,y,100,100,player,true,1,1,0);
		}
	}
	
	else {
		if window == 1 and window_timer == 1 or window_timer % 16 == 0{
			spawn_hit_fx( x, y - 50, hitsparkheavy );
		}
		
		if window == 3{
			window = 2;
			window_timer = 0;
		}
	}
	
	hsp = 0;
	vsp = 0;
	
	var rand1 = 5 - random_func( 0, 10, true )
	var rand2 = 5 - random_func( 1, 10, true )
	    
	x += (((view_get_xview() + view_get_wview() / 2) - x) / 20) + rand1;
	y += (((view_get_yview() + view_get_hview() / 2) - y) / 20) + rand2;
}

//===========================================================================================================================================================================================================
// Abyss Runes code


if (attack == AT_FSPECIAL and runeF){
	super_armor = true;
}

// USTRONG french fries
if attack == AT_USTRONG_2{
	
	// Extremely janky workaround for state timer incrementing when strong is charged
	if window == 1{
		state_timer = 0;
	}
	
	if !za_warudo{
		move_cooldown[AT_USTRONG_2] = 100;
	}
	
	if state_timer > 0{
		if floor(state_timer * 0.5) < 6 and (state_timer % 2) == 1{
			var angle = (clamp(spr_dir, -1, 0) * -180) + (-40 * spr_dir) + (state_timer * 10 * spr_dir)
			fry = instance_create(x + (20 * spr_dir),y - 90,"obj_article3")
			fry.player_id = id;
			fry.player = player;
			fry.spr_dir = spr_dir;
			fry.type = "fries";
			fry.angle = angle;
			fry.damage = 12 - (golden * 2) - (za_warudo * 5) - round(strong_charge * (0.08 + golden * 0.04))
		}
	}
}

// Giant burger
if runeJ{
	// Ground
	if attack == AT_NSPECIAL_2{
		set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_VSPEED, -6);
		set_hitbox_value(AT_NSPECIAL_2, 1, HG_ANGLE, 40);
		set_hitbox_value(AT_NSPECIAL_2, 1, HG_KNOCKBACK_SCALING, 0.5);
		if window == 3 and (golden or window_timer == 1){
			sound_play(sound_get("noise_hamburgers"));
			sound_play(sound_get("throwshake"));
			sound_play(sound_get("swoosh"));
			if golden{
				create_hitbox( AT_NSPECIAL_2, 1, x - 30 * spr_dir, y - 80)
			}
		}
	}
	
	// Air
	if attack == AT_NSPECIAL and window == 14 and (golden or window_timer == 1){
		set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_VSPEED, 12);
		set_hitbox_value(AT_NSPECIAL_2, 1, HG_ANGLE, 310);
		set_hitbox_value(AT_NSPECIAL_2, 1, HG_KNOCKBACK_SCALING, 0.75);
		create_hitbox( AT_NSPECIAL_2, 1, x, y)
		sound_play(sound_get("noise_hamburgers"));
		sound_play(sound_get("throwshake"));
		sound_play(sound_get("swoosh"));
	}
}

// FSTRONG fries
if runeD and attack == AT_FSTRONG{
	if window == 2 and (golden or window_timer == 1){
		for (var i = 0; i < 5; ++i){
			var angle = (clamp(spr_dir, -1, 0) * -180) + (0 * spr_dir) + (i * 5 * spr_dir)
			fry = instance_create(x + (20 * spr_dir),y - 50,"obj_article3")
			fry.player_id = id;
			fry.player = player;
			fry.spr_dir = spr_dir;
			fry.type = "fries";
			fry.hsp = round(lengthdir_x(20, angle));
			fry.vsp = round(lengthdir_y(20, angle));
			fry.projectile = true;
			fry.spr_dir = spr_dir
			fry.damage = 1
		}
	}
}

// ZA WARUDO!!
if attack == AT_NTHROW and window < 7{
	if window == 3 and window_timer == 1{
		sound_play(sound_get("worldactivate"));
		sound_play(sound_get("voiceworldactivate"));
		sound_play(sound_get("supercombosmall"));
	}
	if window >= 3{
		za_warudo = true;
		time_freeze_ticks = 2;
	}
	if window == 6 and window_timer > 4{
		sound_play(sound_get("voiceworldactivate2"))
		set_state( PS_IDLE )
	}
}

// Mc. Burst
if attack == AT_FSTRONG_2{
	invincible = true;
	invince_time = 2;
	var exists = false
	with asset_get("obj_article3") {
		if type = "burst_particles"{
			exists = true
		}
	}
	
	if !exists{
		particle = instance_create(x, y - char_height * 0.5,"obj_article3")
		particle.player_id = id;
		particle.player = player;
		particle.spr_dir = spr_dir;
		particle.type = "burst_particles";
	}
}

#define locate_nearest_player
shortest_dist = 9999;
shortest_id = noone;

with (asset_get("oPlayer")) {
	if (player != other.player) {
		var curr_dist = point_distance(x,y,other.x,other.y);
		if (curr_dist < other.shortest_dist) {
			other.shortest_dist = curr_dist;
			other.shortest_id = id;
		}
	}
}