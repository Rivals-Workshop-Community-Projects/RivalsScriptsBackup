//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_NSPECIAL_ORCA || attack == AT_NSPECIAL_MAY || attack == AT_NSPECIAL_FROG || attack == AT_NSPECIAL_BIRD || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}
	
if (attack == AT_NSPECIAL){ //Inhale Loop
    if (window == 2){
	move_cooldown[AT_NSPECIAL] = 60
        if (special_down){
            if (window_timer == 22) {
                window = 2;
                window_timer = 0;
            }
            with (asset_get("oPlayer")) {
                var centerY = y - char_height / 2;
                other.x_dist = (x - other.x) * other.spr_dir;
                other.y_dist = centerY - other.y + 20;
                other.math = 15 + char_height / 2 + exp(0.045*other.x_dist)/10;
                if(other.x_dist > 20 &&  150 > other.x_dist) {
                    if(other.math > abs(other.y_dist)) {
                        other.moveX = other.spr_dir * (150 - other.x_dist) / 25;
                        if(other.moveX >= 0) {
                            x -= ceil(other.moveX);
                        } else {
                            x -= floor(other.moveX);
                        }
                    }
                }
            }
            
        }
        else {
			sound_stop(sound_get("inhale"))
            window_timer = 0;
            window = 7;
			var Kirby = self
			with (asset_get("pHitBox")) {
				if attack == AT_NSPECIAL and player_id = Kirby {
					hitbox_timer = 22
				}
			}
        }
    }
    can_fast_fall = false;
}

if (attack == AT_USPECIAL and window == 3 and window_timer > 5){
	can_wall_jump = true;
}

if (attack == AT_FSTRONG){
	if window == 1 {
		if window_timer = 1 {
			fstrongcharge = 0
			reset_hitbox_value(AT_FSTRONG,2,HG_EFFECT)
		}
		if window_timer = 9 {
			fstrongcharge += 1
			if fstrongcharge == 20 {
				sound_play(asset_get("sfx_burnapplied"))
				burned = true
				burnt_id = id
				burn_timer = 90
			}
		}
	}
	if window == 2 and fstrongcharge > 19{
		set_hitbox_value(AT_FSTRONG,2,HG_EFFECT,1)
		fstrongcharge = 0
	}
}

//DSPECIAL charging
if (attack == AT_DSPECIAL){
	can_fast_fall = false;
	if (window == 5) { //IASA on fullcharge usage + Blast
		if (special_down) and (window_timer > 10){
			window = 6;
			window_timer = 0;
			}
		if (window_timer > 10) {
			iasa_script();
		}
	}
	if (window == 4) { //IASA on medcharge usage
		if (window_timer > 12) {
			iasa_script();
		}
	}
	if (window == 4) { //IASA on nocharge usage
		if (window_timer > 18) {
			iasa_script();
		}
	}
	if ((shield_pressed) and (3 > window )){ //SHIELD CANCEL
		window = 7;
		window_timer = 0;
	}
    if (window == 2){ //CHARGING
		if (special_down) {
			if (window_timer == 15){ //Loop
				window_timer = 0;
			}
			if (100 > jetcharge) { //Adding charge
			jetcharge += 2;
				if (jetcharge == 100){
					sound_play(sound_get("jet_full_charge"))
					}
				
				if (jetcharge == 50){
					sound_play(sound_get("jet_med_charge"))
					}				
			}
		}
		else { //Using move if special released
				if (jetcharge == 100) { //FULLCHARGE
						jetcharge = 0;
						window = 5;
						window_timer = 0;
				}
				else {
					if (jetcharge > 50){ //MEDCHARGE
						jetcharge = 0;
						window = 4;
						window_timer = 0;
					}
					else { //NOCHARGE
						jetcharge = 0;
						window = 3;
						window_timer = 0;
					}
				}
			}
		}
	if ((window == 3) or (window == 4) or (window == 5) ) { //Endlag
		can_wall_jump = true
		if window_timer == 20 {
			window = 7;
			window_timer = 0;
		}
		}
}
	
  

//FSPECIAL cooldown
if (attack == AT_FSPECIAL) and (window == 3) and (window_timer == 7) { //Cutter cooldown
    move_cooldown[AT_FSPECIAL] = 90;
}

//DSPECIAL cooldown
if (attack == AT_DSPECIAL) and (window > 2) and (7 > window) { //Jet cooldown
    move_cooldown[AT_DSPECIAL] = 60;
}

//NSPECIAL_SYLV cooldown
if (attack == AT_NSPECIAL_SYLV) and (window = 3) and (window_timer == 15) { //Seed cooldown
    move_cooldown[AT_NSPECIAL_SYLV] = 90;
}

//NSPECIAL_ORCA cooldown
if (attack == AT_NSPECIAL_ORCA) and (window = 4) and (window_timer == 9) { //Droplet cooldown
    move_cooldown[AT_NSPECIAL_ORCA] = 10;
}

//NSPECIAL_BIRD cooldown
if (attack == AT_NSPECIAL_BIRD) and (window = 3) and (window_timer == 9) { //Slipstream cooldown
    move_cooldown[AT_NSPECIAL_BIRD] = 600;
}

//NSPECIAL_ELLI cooldown
if (attack == AT_NSPECIAL_ELLI) and (window = 3) and (window_timer == 9) { //Missile cooldown
    move_cooldown[AT_NSPECIAL_ELLI] = 300;
}

//Fastfall Fixes
if (attack == AT_DATTACK) or (attack == AT_USPECIAL) {
	if vsp >= 1 can_wall_jump = true;
	can_fast_fall = false;
}

//NAIR rolling
if (attack == AT_NAIR) {
	if window = 1 {
		reset_hitbox_value(AT_NAIR,3, HG_BASE_KNOCKBACK)
	}
	if !free and (window == 2) {
		hsp += spr_dir;
		off_edge = 1;
		can_ustrong = true
		if window_timer > 5 can_jump = true
		set_hitbox_value(AT_NAIR, 3, HG_BASE_KNOCKBACK, 7+(abs(hsp)*0.5));
	}
	if !free and window == 3 can_jump = true
}

//Stop velocity for parried automoves
if (automove_parried and !free) {
	window = 3;
	hsp = 0;
	automove_parried = 0;
}

if (attack == AT_TAUNT) { //Ending taunts
	if (window == 2 and window_timer == 48) {
		window = 6
		window_timer = 0
	}
	if (window == 3) {
		if (window_timer == 40) and (taunt_down) {
			window_timer = 39
		}
		if (window_timer == 84){
			window = 6
			window_timer = 0
		}
	}
	if (window == 4 and window_timer == 24) {
		window = 6
		window_timer = 0
	}
	if (window == 5 and window_timer == 24) {
		window = 6
		window_timer = 0
	}
}

//Taunt controller
if (attack = AT_TAUNT) {
	if (window == 1) and (window_timer = 10) and (!free){
		if (special_pressed) {
			if (shield_pressed) {
				sound_play(sound_get("sleep"))
				window = 3
				}
			else {
				window = 4
				}
			}
		else {
			window = 2
			}
		}
	if (window == 6) and (taunt_down){
		if current_ability != 0 {
		resetcolours = 1
		current_ability = 0;
		spawn_hit_fx( x, y-36, taunt_star );
		}
		}
}

//Nspecial grab

if (attack == AT_NSPECIAL) {
		if (((down_down) or (special_down)) and (window == 3) and (window_timer == 16)) or ((window == 3) and special_pressed and window_timer > 6) {
					window = 5
					window_timer = 0
				}
		if (window == 3) {
				if (window_timer == 0) {
						sound_stop(sound_get("inhale"))
						sound_play(sound_get("nspecial_swallow"))
				}
				grabbedid.x = x;
				grabbedid.y = y-12;
				grabbedid.visible = false
		}
		if (window == 4){
				if (window_timer == 0) and (grabbedid != noone) {
					grabbedid.grabbed = 0
					grabbedid.visible = true
					grabbedid.hurtboxID.sprite_index = grabbedid.hurtbox_spr
					grabbedid = noone
					sound_play(sound_get("nspecial_spit"))
				}
				if (window_timer == 11) {
					window = 7
					window_timer = 3
				}
		}
		if (window == 5) {
		if (6 > (window_timer)) {
			grabbedid.x = x;
			grabbedid.y = y-12;
		}
		
		if (window_timer == 6) and (grabbedid != noone){
				grabbedid.grabbed = 0
				grabbedid.visible = true
				grabbedid.hurtboxID.sprite_index = grabbedid.hurtbox_spr
				grabbedid = noone
				sound_play(sound_get("nspecial_down"))
		
		}
		}
		if (window == 6) and (window_timer == 12){
			window = 7
			window_timer = 10
		}
}

if (attack == AT_FAIR) { //Fair sounds
	if (window == 2) {
		if (window_timer == 9) {
			sound_play( asset_get( "sfx_swipe_weak2" ) );
			window_timer += 1
			}
		if (window_timer == 17) {
			sound_play( asset_get( "sfx_swipe_medium1" ) );
			window_timer += 1
			}
	}
}

//Copy Abilities
if (attack == AT_NSPECIAL_ETA) {
	can_move = 0;
}

if (attack == AT_NSPECIAL_ZET) {
	if window == 1 {
		if !(special_down) {
			window = 2
			window_timer = 0
		}
		else {
			if window_timer = 35 {
				window = 3
				window_timer = 0
			}
		}
	}
	if ((window == 2) or (window = 3)) {
		set_attack_value(AT_NSPECIAL_ZET,AG_SPRITE,sprite_get("AT_NSPECIAL_ZETT_RELEASE_GROUND"))
		set_attack_value(AT_NSPECIAL_ZET,AG_AIR_SPRITE,sprite_get("AT_NSPECIAL_ZETT_RELEASE_AIR"))
		if window_timer >= 3 can_jump = true;
		if window_timer == 15 {
			window = 4
			window_timer = 0
		}
	}
}

if (attack == AT_NSPECIAL_ORI) {
	if (window == 3) and (window_timer = 20) {
		state = PS_PRATFALL
		}
	if (window == 4){
			can_move = 0;
			grabbedid.x = x+spr_dir*17;
			grabbedid.y = y+12;
			grabbedid.wrap_time = 90
			grabbedid.state = PS_WRAPPED
			grabbedid.invincible = true
			bash_angle = joy_dir
		}
	if (window == 5) and (grabbedid != noone){
		grabbedid.invincible = false
		grabbedid = noone
		if spr_dir {
			set_hitbox_value(AT_NSPECIAL_ORI,2,HG_ANGLE,bash_angle+180)
		}
		else {
			set_hitbox_value(AT_NSPECIAL_ORI,2,HG_ANGLE,360-bash_angle)
		}
		
		hsp = lengthdir_x(10,bash_angle)
		vsp = lengthdir_y(10,bash_angle)
		
		if window_timer == 19 {
		}
		
		}
}

//RANNO NEEDLES
if (attack == AT_NSPECIAL_FROG){
	if window == 1 and window_timer == 0 and needlecharge == 0{
		reset_window_value(AT_NSPECIAL_FROG,2,AG_WINDOW_ANIM_FRAME_START)
		reset_hitbox_value(AT_NSPECIAL_FROG,2,HG_WINDOW)
		reset_hitbox_value(AT_NSPECIAL_FROG,3,HG_WINDOW)
		reset_hitbox_value(AT_NSPECIAL_FROG,4,HG_WINDOW)
		}
	if ((shield_pressed) and (3 > window )){ //SHIELD CANCEL
		window = 5;
		window_timer = 0;
	}
    if (window == 2){ //CHARGING

		if (special_down) {
			if (window_timer == 24){ //Loop
				window_timer = 0;
				if 3 > needlecharge {
				needlecharge += 1
				if needlecharge == 1 {
				sound_play(asset_get("sfx_frog_fspecial_charge_gained_1"))
				set_window_value(AT_NSPECIAL_FROG,2,AG_WINDOW_ANIM_FRAME_START,12)
				}
				if needlecharge == 2 {
				sound_play(asset_get("sfx_frog_fspecial_charge_gained_2"))
				set_window_value(AT_NSPECIAL_FROG,2,AG_WINDOW_ANIM_FRAME_START,20)
				
				}
				if needlecharge == 3 {
				sound_play(asset_get("sfx_frog_fspecial_charge_full"))
				set_window_value(AT_NSPECIAL_FROG,2,AG_WINDOW_ANIM_FRAME_START,28)
				
				}
				}
			}
			}
		else { //Using move if special released
			window = 3;
			window_timer = 0;
			if (needlecharge > 0) set_hitbox_value(AT_NSPECIAL_FROG,2,HG_WINDOW,3)
			if (needlecharge > 1) set_hitbox_value(AT_NSPECIAL_FROG,3,HG_WINDOW,3)
			if (needlecharge > 2) set_hitbox_value(AT_NSPECIAL_FROG,4,HG_WINDOW,3)
			needlecharge = 0;
			reset_window_value(AT_NSPECIAL_FROG,2,AG_WINDOW_ANIM_FRAME_START)
			}
		}
		if window == 4 and window_timer == 12 {
		window = 5;
		window_timer = 8;
		move_cooldown[AT_NSPECIAL_FROG] = 60;
		reset_hitbox_value(AT_NSPECIAL_FROG,2,HG_WINDOW)
		reset_hitbox_value(AT_NSPECIAL_FROG,3,HG_WINDOW)
		reset_hitbox_value(AT_NSPECIAL_FROG,4,HG_WINDOW)
		}

}

if (attack == AT_NSPECIAL_ELLI){
	if window == 1 and window_timer == 5 and (place_meeting(x,y+60,asset_get("par_block")) or place_meeting(x,y+60,asset_get("par_jumpthrough"))){
		y -= 60
	}

	if (window == 2){
		bash_angle = joy_dir
		if spr_dir {
			if (bash_angle > 90) and (270 > bash_angle) {
				set_window_value(AT_NSPECIAL_ELLI,2,AG_WINDOW_ANIM_FRAME_START,10)
			}
			else {
				set_window_value(AT_NSPECIAL_ELLI,2,AG_WINDOW_ANIM_FRAME_START,7)
			}
		}
		else {
			if (90 > bash_angle) or (bash_angle > 270) {
				set_window_value(AT_NSPECIAL_ELLI,2,AG_WINDOW_ANIM_FRAME_START,10)
			}
			else {
				set_window_value(AT_NSPECIAL_ELLI,2,AG_WINDOW_ANIM_FRAME_START,7)
			}
		}
		if window_timer == 30 {
			if spr_dir {
				set_hitbox_value(AT_NSPECIAL_ELLI,1,HG_PROJECTILE_HSPEED,lengthdir_x(15,bash_angle))
				set_hitbox_value(AT_NSPECIAL_ELLI,1,HG_PROJECTILE_VSPEED,lengthdir_y(15,bash_angle))
			}
			else {
				set_hitbox_value(AT_NSPECIAL_ELLI,1,HG_PROJECTILE_HSPEED,lengthdir_x(15,180-bash_angle))
				set_hitbox_value(AT_NSPECIAL_ELLI,1,HG_PROJECTILE_VSPEED,lengthdir_y(15,180-bash_angle))
			}
			}
		}
	if (window == 3) and (window_timer == 1) {
		hsp = lengthdir_x(10,180+bash_angle)
		vsp = lengthdir_y(10,180+bash_angle)
	}
	can_move = false;
}

if (attack == AT_NSPECIAL_ABSA) {
	if (window == 2) and (!special_down) {
		sound_play(asset_get("sfx_absa_new_whip2"));
		create_hitbox( AT_NSPECIAL_ABSA, 1, x, y )
		window = 3
		window_timer = 0
		move_cooldown[AT_NSPECIAL_ABSA] = 105;
	}
	if (window == 2) and (window_timer == 30) {
		absa_timer = 105;
		move_cooldown[AT_NSPECIAL_ABSA] = 105;
	}
}

if (attack == AT_NSPECIAL_ORCA) {
	if (window == 1) and (window_timer == 15) and (special_down) and (MyPuddle != noone) {
		window = 3
		window_timer = 0
		sound_play(asset_get("sfx_bubblepop"));
		sound_play(asset_get("sfx_bubblespray_breathless"));
		with obj_article1 {
			state = 2
			coolindex = 0
		}
		MyPuddle = noone
	}
	if (window == 2) and (window_timer == 8) {
		window = 4
		window_timer = 0
	}
	if (window == 3) and (window_timer == 28) {
		window = 4
		window_timer = 10
	}
}

if (attack == AT_NSPECIAL_BIRD) and window == 2 and window_timer == 2 {
	if MyPuddle != noone instance_destroy(MyPuddle)
	MyPuddle = instance_create(0,y,"obj_article1")
	with MyPuddle state = 3
}

if (attack == AT_NSPECIAL_FORS) and window == 3 and window_timer == 10 {
	current_ability = 0
	resetcolours = 1
}

if (attack == AT_NSPECIAL_SHOV) {
	can_move = false;
	if window == 1 and window_timer == 2 {
	set_hitbox_value(AT_NSPECIAL_SHOV, 2, HG_PROJECTILE_SPRITE, sprite_get("hook_proj"));
	set_hitbox_value(AT_NSPECIAL_SHOV, 2, HG_PROJECTILE_VSPEED, -6);
	}
	if window == 2 {
		if special_pressed {
			window = 4
			window_timer = 0
		}
		if window_timer == 20 {
			window_timer = 0
		}
	}
	if window == 3 and special_pressed {
		set_hitbox_value(AT_NSPECIAL_SHOV, 2, HG_PROJECTILE_VSPEED, -10);
		if 10 > window_timer {
		set_hitbox_value(AT_NSPECIAL_SHOV, 2, HG_PROJECTILE_SPRITE, sprite_get("maxim_spr"));
		set_hitbox_value(AT_NSPECIAL_SHOV, 3, HG_PROJECTILE_SPRITE, sprite_get("maxim_spr"));
		set_hitbox_value(AT_NSPECIAL_SHOV, 3, HG_DAMAGE, -10);
		}
		else {
		set_hitbox_value(AT_NSPECIAL_SHOV, 2, HG_PROJECTILE_SPRITE, sprite_get("melon_spr"));
		set_hitbox_value(AT_NSPECIAL_SHOV, 3, HG_PROJECTILE_SPRITE, sprite_get("melon_spr"));
		set_hitbox_value(AT_NSPECIAL_SHOV, 3, HG_DAMAGE, -5);
		}
	
	}
	if window == 4 {
		if window_timer == 20 {
			window_timer = 0
		}
	}	
	if window == 5 {
		if window_timer == 20 {
			move_cooldown[AT_NSPECIAL_SHOV] = 60;
			window = 6
			window_timer = 20
		}
	}
	if window == 6 and window_timer == 19 {
		move_cooldown[AT_NSPECIAL_SHOV] = 60;
	}
}

if attack == AT_NSPECIAL_KRAG {
	if window == 1 and window_timer == 5 {
	set_hitbox_value(AT_NSPECIAL_KRAG, 4, HG_WINDOW, 4);
	}
	if window == 1 and window_timer == 14 {
		if !free {
			sound_play(asset_get("sfx_zetter_downb"))
		}
		else {
			sound_play(asset_get("sfx_swipe_heavy1"))
		}
	}
	if window == 2 and window_timer == 1 {
		if !free {
			create_hitbox( AT_NSPECIAL_KRAG, 1, x+48*spr_dir, y-64 )
			sound_play(asset_get("sfx_kragg_spike"))
		}
		else {
			set_hitbox_value(AT_NSPECIAL_KRAG, 4, HG_WINDOW, 2);
		}
	}
	if window == 3 and window_timer == 10 {
		move_cooldown[AT_NSPECIAL_KRAG] = 60;
	}
}

if (attack == AT_NSPECIAL_CLAI) {
		if ((spr_dir and (left_down)) or (!spr_dir and (right_down))) and (window == 3) and (window_timer == 20) {
					window = 5
					window_timer = 0
				}
		if (window == 3) {
				grabbedid.x = x+spr_dir*16;
				grabbedid.y = y-12;
		}
		if (window == 2) and (window_timer == 15){
			window = 6
			window_timer = 0
		}
		if (window == 4){
				if (window_timer == 0) and (grabbedid != noone) {
					grabbedid.grabbed = 0
					grabbedid = noone
				}
				if (window_timer == 11) {
					window = 6
					window_timer = 0
				}
		}
		if (window == 5) {
		if window_timer == 1 {
			spr_dir *= -1
		}
		if (6 > (window_timer)) {
			grabbedid.x = x+spr_dir*16;
			grabbedid.y = y-12;
		}
		
		if (window_timer == 6) and (grabbedid != noone){
				grabbedid.grabbed = 0
				grabbedid = noone
		
		}
		}
}

if attack == AT_NSPECIAL_MOLL  {
	if window = 1 and window_timer = 8 {
		newbomb = instance_create(x+spr_dir*16,y-16,"obj_article2")
		newbomb.vsp = -5
		newbomb.hsp = spr_dir*1 + right_down*2 - left_down*2
		}
	if window = 3 and window_timer = 8 {
		move_cooldown[AT_NSPECIAL_MOLL] = 180;
		}
}


if attack == AT_NSPECIAL_SAND {
    if (window == 3){
        if (special_pressed){
            window = 1;
            window_timer = 0;
        }
    }
}

if attack == AT_NSPECIAL_GUAD and has_hit_player and window = 3{
	if 11 > window_timer {
        take_damage(player, -1, -1);
	}
}

// Ludi
if (attack == AT_USPECIAL
	and window == 1 
	and window_timer == 8 
	and special_down
	and !tethering
	and ds_list_find_value(marked_list, 0) != undefined) {
		tethering = true;
	}

if (tethering) {
	can_move = false;
	var marked_id = ds_list_find_value(marked_list, 0);
	if (window != 4) {
		window = 4;
	}

	if (window_timer == 16) {
	 // Which direction to tether
	 	tether_direction = right_down - left_down;
		
		
	} else if (window_timer > 16) {
		
		

		var marked_skew_x = tether_direction * 40
		var marked_skew_y = 70 - abs(tether_direction) * (70 - char_height * 0.5)
		var marked_distance = abs(point_distance(x, y - char_height * 0.5, marked_id.x + marked_skew_x, marked_id.y - marked_skew_y));
		var marked_dir = point_direction(x, y - char_height * 0.5, marked_id.x + marked_skew_x, marked_id.y - marked_skew_y);
		var tether_speed = 25;
		go_through = true;
		fall_through = true;

		// How close to target
		if (marked_distance < 16) {
			hsp = 0;
            vsp = 0;
            set_state(PS_IDLE_AIR);
			ds_list_delete(marked_list, 0);
			tethering = false;
			can_move = true;
			gravity_speed = 0.5;
			go_through = false;
			fall_through = false;
			tether_cooldown = 60;
			//solid = 1;
		} else {
        	//zoom towards marked player
	        hsp = lengthdir_x(tether_speed, marked_dir);
	        vsp = lengthdir_y(tether_speed, marked_dir);
	        spr_dir = sign(marked_id.x - x);
	        gravity_speed = 0;
	       //solid = 0;
		}

		if (marked_distance < 200) {
			// reduce targets speed till 0
			if (abs(marked_id.hsp) > 2) {
				marked_id.hsp = marked_id.hsp / 2;
			} else {
				marked_id.hsp = 0;
			}

			if (abs(marked_id.vsp) > 2) {
				marked_id.vsp = marked_id.vsp / 2;
			} else {
				marked_id.vsp = 0;
			}
		}
	}

	// prevents infinite tether glitch if marked_id dies mid tether
	if ((marked_id.state == PS_RESPAWN) || (ds_list_find_index(marked_list, marked_id) == -1)) {
		hsp = 0;
        vsp = 0;
        set_state(PS_IDLE_AIR);
		ds_list_delete(marked_list, 0);
		tethering = false;
		can_move = true;
		gravity_speed = 0.5;
		go_through = false;
		fall_through = false;
		tether_cooldown = 60;
	}
}

if (attack == AT_NSPECIAL_MAY) and (window == 3) and (window_timer == 4) { //seed cooldown
    move_cooldown[AT_NSPECIAL_MAY] = 20;
}



