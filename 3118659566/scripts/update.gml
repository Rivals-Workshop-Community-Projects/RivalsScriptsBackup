if(attack == AT_FSPECIAL_AIR && state == PS_ATTACK_AIR){
    move_cooldown[AT_FSPECIAL_AIR] = 999;
    move_cooldown[AT_FSPECIAL] = 999;
} else if !free || state == PS_HITSTUN || state == PS_WALL_JUMP {
	move_cooldown[AT_FSPECIAL_AIR] = 0;
	move_cooldown[AT_FSPECIAL] = 0;
}

if state == PS_HITSTUN || state == PS_AIR_DODGE {
	sound_stop(sound_get("rapidjab"));	
	sound_stop(sound_get("dashcharge"));
	tap_jumped = false;
	tap_djump = false;
	if grabbed_player_obj != noone {	
		grabbed_player_obj = noone;
		grabbed_player_obj.hitpause = true;
		grabbed_player_obj.hitstop = 2;
		grabbed_player_obj.hitstun = true;
	}
}	

if !free {
    move_cooldown[AT_DAIR] = 0;
}

if packageID != 0 || lvl1projID != 0 || lvl2projID != 0 {
	move_cooldown[AT_DSPECIAL] = 999;
    move_cooldown[AT_DSPECIAL_2] = 999;
} else if packageID = 0 && lvl1projID = 0 && mailboxID = 0 {
    move_cooldown[AT_DSPECIAL] = 0;
	move_cooldown[AT_DSPECIAL_AIR] = 0;
}

if state == PS_JUMPSQUAT || state == PS_FIRST_JUMP {
	if state_timer == 1 {
		tap_jumped = false;
		tap_djump = false;
	}
}

if state == PS_DOUBLE_JUMP {
	if state_timer == 1 {
		if tap_jump_pressed {
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
	if state_timer == 8 {
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

if mb_spin_hit = true {
//	if mailboxID.letters != 3 {
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

if mb_hammer_hit = true {
	destroy_hitboxes();
    mb_hammer_hit = false;
	attack_end();
    set_attack( AT_HAMMER )
    mailboxID.state = 11;
    mailboxID.state_timer = 0;
	hurtboxID.sprite_index = sprite_get("uspecial_hammer_hurt");
	sound_play(sound_get("catch"))
	window = 1;
	window_timer = 0;
	hsp = 0;
	vsp = 0;
}


if packageID != 0 {
    if packageID.has_hit = true || packageID.free = false || (packageID.hitbox_timer > 40 && packageID.vsp = 0) {
        packageID.destroyed = true;
        var k = spawn_hit_fx(packageID.x, packageID.y + 55, mb_proj_lv3_explo_vfx);
   		k.depth = depth + 1;
   		if (explo_owner == noone) {
   			exploID = create_hitbox(AT_DSPECIAL_2, 2, packageID.x, packageID.y - 7);
			//exploID.player = player_id.packageID;
   		} else if explo_owner != noone {
   			explo1 = create_hitbox(AT_DSPECIAL_2, 2, packageID.x, packageID.y - 7);
			explo1.player = explo_owner;
			//print("test2")
   		}
		sound_play(asset_get("sfx_zetter_downb"))
        k.depth = depth + 1;
        explo_timer = 0;
        package_exploded = true;
        packageID = 0;
    }

	if (packageID.free && packageID.y >= room_height - 0){
	    packageID.destroyed = true;
	    packageID = 0;
	}
}

if package_exploded = true || instant_exploding = true{
	explo_timer++
} 

if explo_timer == 16 {
	sound_play(sound_get("lvl3explo"), 0, noone, 1, 1)
	sound_play(asset_get("sfx_ell_strong_attack_explosion"), 0, noone, 1, 1)
	sound_play(asset_get("sfx_ell_fist_explode"), 0, noone, 1, 1)
	explo_timer = 0;
	package_exploded = false;
}

if instant_explo_start = true {
    var k = spawn_hit_fx(instant_explo_x, instant_explo_y + 15, mb_proj_lv3_explo_vfx);
    k.depth = depth + 1;
    exploID = create_hitbox(AT_DSPECIAL_2, 2, instant_explo_x, instant_explo_y - 45);
	instant_explo_start = false;
	instant_exploding = true;
}
	
if lvl1projID != 0 {
    if lvl1projID.has_hit = true || lvl1projID.free = false || (lvl1projID.hitbox_timer > 40 && lvl1projID.vsp = 0) {
        lvl1projID.destroyed = true;
        var k = spawn_hit_fx(lvl1projID.x, lvl1projID.y + 55, mb_proj_lv1_destroy_vfx);
        var explo_x = lvl1projID.x;
        var explo_y = lvl1projID.y;
		sound_play(asset_get("sfx_zetter_downb"))
        k.depth = depth + 1;
        lvl1proj_timer = 0;
        lvl1proj_exploded = true;
        lvl1projID = 0;
    }

	if (!place_meeting(lvl1projID.x, lvl1projID.y, asset_get("par_block")) && lvl1projID.y >= room_height - 0){
	    lvl1projID.destroyed = true;
	    lvl1projID = 0;
	}
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