if(attack == AT_FSPECIAL_AIR && state == PS_ATTACK_AIR){
    move_cooldown[AT_FSPECIAL_AIR] = 999;
    move_cooldown[AT_FSPECIAL] = 999;
} else if !free || state == PS_HITSTUN || state == PS_WALL_JUMP {
	move_cooldown[AT_FSPECIAL_AIR] = 0;
	move_cooldown[AT_FSPECIAL] = 0;
}

with (oPlayer){
	plane_target_x = x;
	plane_target_y = y;
}

if !free {
	has_airdashed = false;
}

if state == PS_HITSTUN {
	spin_cooldown = 0;
	if vault_letters > 0 && dairprojID = 0 {
		vault_letters = 0;
	}
	if dair_letters > 0 && dairprojID = 0 {
		dair_letters = 0;
	}
}

if state == PS_AIR_DODGE || state == PS_HITSTUN {
	sound_stop(sound_get("rapidjab"));	
	sound_stop(sound_get("dashcharge"));
	tap_jumped = false;
	tap_djump = false;
	if grabbed_player_obj != noone {	
   		grabbed_player_obj.hitpause = false;
		grabbed_player_obj.hitstop = 0;
		grabbed_player_obj.hitstun = false;
		grabbed_player_obj = noone;
	}
}	

if spin_cooldown > 0 {
	spin_cooldown--;
}

if !free {
    move_cooldown[AT_DAIR] = 0;
}

if letterflyID != 0 && mailboxID != 0 {
	letterflyID.depth = depth - 1;
	letterflyID.proj_angle = point_direction(letterflyID.x, letterflyID.y, mailboxID.x, mailboxID.y - 40);
	if letterflyID.hitbox_timer % 5 = 0 {
		var k = spawn_hit_fx(letterflyID.x, letterflyID.y - 0, letter_sparks_vfx);
   		k.depth = depth + 1;
   	}
	letterflyID.x = lerp(letterflyID.x, mailboxID.x, 0.1);
	letterflyID.y = lerp(letterflyID.y, mailboxID.y - 40, 0.1);
		if(mailboxID.state = 1 || mailboxID = 0){
			instance_destroy(letterflyID);
			letterflyID = 0;
		}
		if place_meeting(letterflyID.x, letterflyID.y, mailboxID) {
			sound_play(asset_get("sfx_blow_medium2"))
			instance_destroy(letterflyID);
			letterflyID = 0;
			bag_hit = true;
		}
	}

if packageID != 0 || lvl1projID != 0 || lvl2projID != 0 || dairprojID != 0 || mb_cooldown > 0 {
	move_cooldown[AT_DSPECIAL] = 999;
    move_cooldown[AT_DSPECIAL_2] = 999;
} else if packageID = 0 && lvl1projID = 0 && lvl2projID = 0 && mailboxID = 0 && dairprojID = 0 && mb_cooldown < 1 {
    move_cooldown[AT_DSPECIAL] = 0;
	move_cooldown[AT_DSPECIAL_AIR] = 0;
}

if mailboxID != 0 {
	if letterflyID != 0 || instant_explo_start = true {
		move_cooldown[AT_DSPECIAL] = 999;
    	move_cooldown[AT_DSPECIAL_2] = 999;		
	} else if letterflyID = 0 && instant_explo_start = false {
    move_cooldown[AT_DSPECIAL] = 0;
	move_cooldown[AT_DSPECIAL_AIR] = 0;
	}		
}

//print(mb_cooldown)


if mb_cooldown > 0 {
	mb_cooldown--;
}

if state == PS_JUMPSQUAT || state == PS_FIRST_JUMP {
	if state_timer == 1 {
		tap_jumped = false;
		tap_djump = false;
	}
}

if state == PS_DOUBLE_JUMP {
	if state_timer == 1 {
		if tap_jump_pressed && (get_synced_var(player)) {
			tap_jumped = true;	
		}	
	}
	if tap_jumped = false {
		if !joy_pad_idle {
			snapped_angle = floor((joy_dir * 8/360) + 0.5) * 45
		} else if joy_pad_idle && joy_pad_timer > 6 {
			snapped_angle = 90;
		}
	} else if tap_jumped = true {
		snapped_angle = floor((joy_dir * 8/360) + 0.5) * 45
	}
	
	if state_timer == 1 {
		snapped_angle = 90;
	}
	if state_timer == 8 && has_airdashed = false {
		if jump_down {
			attack_end();
	    	set_attack( AT_EXTRA_1 )
		}
		if tap_jumped = true && up_down {
			attack_end();
	    	set_attack( AT_EXTRA_1 )
	    	tap_djump = true;
	    } else {
			tap_jumped = false;
		}
	}
}

if joy_pad_idle {
	joy_pad_timer++;
} else {
	joy_pad_timer = 0;
}

if state == PS_FIRST_JUMP {
	if state_timer == 1 {
		if tap_jump_pressed && (get_synced_var(player)) {
			tap_jumped = true;	
		}	
	}
	if tap_jumped = false {
		if !joy_pad_idle {
			snapped_angle = floor((joy_dir * 8/360) + 0.5) * 45
		} else if joy_pad_idle && joy_pad_timer > 6 {
			snapped_angle = 90;
		}
	} else if tap_jumped = true {
		snapped_angle = floor((joy_dir * 8/360) + 0.5) * 45
	}
	
	if state_timer == 1 {
		snapped_angle = 90;
	}
	if free && vsp = 0 {
		if jump_down {
			attack_end();
	    	set_attack( AT_EXTRA_1 )
	    	has_airdashed = true;
		}
		if tap_jumped = true && up_down {
			attack_end();
	    	set_attack( AT_EXTRA_1 )
	    	tap_djump = true;
	    	has_airdashed = true;
	    } else {
			tap_jumped = false;
		}
	}
}

if joy_pad_idle {
	joy_pad_timer++;
} else {
	joy_pad_timer = 0;
}

if mb_spin_hit = true {
//	if mailboxID.letters != 3 {
	if grabbed_player_obj != noone {
   		grabbed_player_obj.hitpause = false;
		grabbed_player_obj.hitstop = 0;
		grabbed_player_obj.hitstun = false;
		grabbed_player_obj = noone;
	}
		destroy_hitboxes();
	    mb_spin_hit = false;
		has_hit = false;
		attack_end();
	    set_attack( AT_EXTRA_2 )
		hurtboxID.sprite_index = sprite_get("fspecial_turn_hurt");
		window = 1;
		window_timer = 0;
		hsp = 0;
		vsp = 0;
}

/*
if mb_vault_hit = true {
	mb_vault_hit = false;
	destroy_hitboxes();
	attack_end();
    set_attack( AT_VAULT )
	hurtboxID.sprite_index = sprite_get("mailbox_vault_hurt");
	window = 1;
	window_timer = 0;
	hsp = 0;
	vsp = 0;	
}
*/

if mb_hammer_hit = true {
	destroy_hitboxes();
    mb_hammer_hit = false;
	attack_end();
    set_attack( AT_HAMMER )
    mailboxID.state = 11;
    mailboxID.state_timer = 0;
	hurtboxID.sprite_index = sprite_get("uspecial_hammer_hurt");
	sound_play(sound_get("catch"))
	sound_play(asset_get("sfx_shovel_hit_med2"));
	window = 1;
	window_timer = 0;
	hsp = 0;
	vsp = 0;
}

if dairprojID != 0 {
    dairprojID.hsp = dairprojID.hsp * 0.965;

	if dairprojID.vsp < 0 {
	    dairprojID.vsp = dairprojID.vsp * 0.9;
	}
	if dairprojID.vsp > 0 && dairprojID.vsp < 12 {
		dairprojID.vsp = dairprojID.vsp * 1.1;
	}
    
    if dairprojID.free = false || dairprojID.hitbox_timer == 35 || place_meeting(x + (0 * spr_dir), y, asset_get("par_block"))  {
    	dairprojID.destroyed = true;
	    move_cooldown[AT_DSPECIAL] = 20;
		move_cooldown[AT_DSPECIAL_AIR] = 20;
		sound_play(asset_get("sfx_shovel_hit_med2"));
		mailboxID = instance_create(dairprojID.x, dairprojID.y + 40 , ("obj_article1"));
		mailboxID.state = 14;
		mailboxID.state_timer = 0;
    	dairprojID = 0;
    }
}

if packageID != 0 {
	if (explo_owner == noone) {
	    if packageID.has_hit = true || packageID.free = false || (packageID.hitbox_timer > 40 && packageID.vsp = 0) {
	        packageID.destroyed = true;
	        var k = spawn_hit_fx(packageID.x, packageID.y + 55, mb_proj_lv3_explo_vfx);
	   		k.depth = depth + 1;
			exploID = create_hitbox(AT_DSPECIAL_2, 2, packageID.x, packageID.y - 7);
			sound_play(asset_get("sfx_zetter_downb"))
	        k.depth = depth + 1;
	        explo_timer = 0;
	        package_exploded = true;
	        packageID = 0;	
	    }
	} else if explo_owner != noone {
	    if packageID.has_hit = true || packageID.free = false || (packageID.vsp = 0) {
	        packageID.destroyed = true;
	        var k = spawn_hit_fx(packageID.x, packageID.y + 55, mb_proj_lv3_explo_vfx);
	   		k.depth = depth + 1;
			explo1 = create_hitbox(AT_DSPECIAL_2, 2, packageID.x, packageID.y - 7);
			exploID.player = explo_owner;
			sound_play(asset_get("sfx_zetter_downb"))
	        k.depth = depth + 1;
	        explo_timer = 0;
	        package_exploded = true;
	        packageID = 0;	
	    }
	}
	
	if (packageID.free && packageID.y >= room_height - 0){
	    packageID.destroyed = true;
	    packageID = 0;
	}
}

if package_exploded = true || instant_exploding = true{
	explo_timer++
} 

if explo_timer == 15 {
	sound_play(sound_get("lvl3explo"), 0, noone, 1, 1)
	sound_play(asset_get("sfx_ell_strong_attack_explosion"), 0, noone, 1, 1)
	sound_play(asset_get("sfx_ell_fist_explode"), 0, noone, 1, 1)
	explo_timer = 0;
	package_exploded = false;
}

if instant_explo_start = true {
    var k = spawn_hit_fx(instant_explo_x, instant_explo_y + 15, instant_explo_vfx);
    k.depth = depth + 1;
    exploID = create_hitbox(AT_DSPECIAL_2, 2, instant_explo_x, instant_explo_y - 45);
    vault_letters = 0;
    dair_letters = 0;
	instant_explo_start = false;
	instant_exploding = true;
}
	
if lvl1projID != 0 {
	var target_hitbox = lvl1projID;
	    if lvl1projID.has_hit = true || lvl1projID.free = false || (lvl1projID.hitbox_timer > 40 && lvl1projID.vsp = 0) {
	        lvl1projID.destroyed = true;
	        var k = spawn_hit_fx(lvl1projID.x, lvl1projID.y + 55, mb_proj_lv1_destroy_vfx);
			sound_play(asset_get("sfx_zetter_downb"))
	        k.depth = depth + 1;
	        lvl1proj_timer = 0;
	        lvl1proj_exploded = true;
	        lvl1projID = 0;
	    } 
	with (asset_get("pHitBox")){
	    if	(player != target_hitbox.player) { 
	    	if place_meeting(x, y, target_hitbox) && other.mailproj_hit = false {
				other.mailproj_hit = true;	
			}
		}
	}
}

if lvl2projID != 0 {
	var target_hitbox = lvl2projID;
	    	with (asset_get("pHitBox")){
	            if	(player != target_hitbox.player) { 
	            	if place_meeting(x, y, target_hitbox) && other.mailproj_hit = false {
						other.mailproj_hit = true;	
	    			}
	    	}
	    }
}

	if mailproj_hit = true {
		if lvl1projID != 0 {
	        lvl1projID.destroyed = true;
	        var k = spawn_hit_fx(lvl1projID.x, lvl1projID.y + 55, mb_proj_lv1_destroy_vfx);
			sound_play(asset_get("sfx_zetter_downb"))
	        k.depth = depth + 1;
	        lvl1proj_timer = 0;
	        lvl1proj_exploded = true;
	        lvl1projID = 0;
	        mailproj_hit = false;
		}
		if lvl2projID != 0 {
	        lvl2projID.destroyed = true;
	        var k = spawn_hit_fx(lvl2projID.x, lvl2projID.y , mb_proj_lv2_break_vfx);
			sound_play(asset_get("sfx_zetter_downb"))
	        k.depth = depth + 1;
	        lvl2proj_timer = 0;
	        lvl2proj_exploded = true;
	        lvl2projID = 0;
	        mailproj_hit = false;
		}
	}
	
	if (!place_meeting(lvl1projID.x, lvl1projID.y, asset_get("par_block")) && lvl1projID.y >= room_height - 0){
	    lvl1projID.destroyed = true;
	    lvl1projID = 0;
	}


	if lvl1proj_exploded = true {
		lvl1proj_timer++
	} 
	
	if lvl1proj_timer == 1 {
		sound_play(asset_get("sfx_ell_strong_attack_explosion"), 0, noone, 1, 1)
		sound_play(asset_get("sfx_ell_fist_explode"), 0, noone, 1, 1)
		lvl1proj_timer = 0;
		lvl1proj_exploded = false;
	}

//===============================================================
if (is_in_flipfield)
{
    inside_flipfield_timer = inside_flipfield_timer_max;
}

//===============================================================
if (inside_flipfield_timer > 0)
{
    inside_flipfield_timer--;

    //Negative jump corrections
    if (state == PS_DOUBLE_JUMP) && (state_timer == 0)
        vsp = +djump_speed;
    else if (state == PS_WALL_JUMP) && (state_timer == 4)
        vsp = +walljump_vsp;

    if (free && up_hard_pressed) && (vsp > -fast_fall)
    {
        if !(hitpause) vsp = -fast_fall;
        else if !(state_cat == SC_HITSTUN) old_vsp =  -fast_fall;
    }
}

//===============================================================
//something went wrong: last gravflip article was deleted.
//reset everyone's status 
if (last_master_flipfield != noone && !instance_exists(last_master_flipfield))
{
    with (oPlayer) is_in_flipfield = false;
    last_master_flipfield = noone;
}