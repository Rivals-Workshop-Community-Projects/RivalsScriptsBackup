//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL){ //no B-reversing Uspecial or Dspecial, since they require a quick backward input to aim
    trigger_b_reverse();
}

if (attack == AT_NSPECIAL){
    if (window == 2 && window_timer == 1){
		if mytotem != noone {
			with mytotem {state = 1}
		}
        mytotem = instance_create(x+16*spr_dir, y-48, "obj_article1");
        move_cooldown[AT_NSPECIAL] = 60;
    }
}

if attack == AT_FSPECIAL and window = 3 and window_timer = 1 {
move_cooldown[AT_FSPECIAL] = 75
}

if attack == AT_USPECIAL {
	if window = 1 {
	uspecialtimer = 0
	if window_timer = 1 {sound_play(asset_get("sfx_ori_taunt")) uspecialdir = 90}
	if !joy_pad_idle {
	uspecialdir = joy_dir
	}
	if window_timer = 12 spawn_hit_fx( x, y, seal_hit_weak_heal )
	if window_timer = 18 {y -= 18 x += spr_dir*5}
	}
	if window = 2 {
		fall_through = 1
		can_fast_fall = 0
		if uspecialdir > 359 uspecialdir -= 360
		if 0 > uspecialdir uspecialdir += 360
		hurtboxID.image_angle = uspecialdir - 90
		spr_angle = uspecialdir - 90
		uspecialtimer += 1
		if (uspecialdir > joy_dir+uspecialturnspeed*1.5 or joy_dir-uspecialturnspeed*1.5 > uspecialdir) and !joy_pad_idle {
			if joy_dir > uspecialdir {
				if joy_dir - uspecialdir > 180 {
					uspecialdir -= uspecialturnspeed
				}
				else {
					uspecialdir += uspecialturnspeed
				}
			}
			else {
				if uspecialdir - joy_dir > 180 {
					uspecialdir += uspecialturnspeed
				}
				else {
					uspecialdir -= uspecialturnspeed
				}			
			
			}
		}
		hsp = lengthdir_x(12,uspecialdir)
		vsp = lengthdir_y(12,uspecialdir)
		if uspecialtimer = 20 {
			spr_angle = 0
			hurtboxID.image_angle = 0
			window = 3
			window_timer = 0
			vsp = vsp/1.8
			hsp = hsp/1.8
			spawn_hit_fx( x, y, seal_hit_weak_heal );
		}
	}
	if window = 2 or window = 3 {
		can_wall_jump = true
		if collision_circle( x, y-32, 48, asset_get("oPlayer"), true, true ) {
			temp = collision_circle( x, y-32, 48, asset_get("oPlayer"), true, true ) 
			if temp != noone and temp.sealmark != 0 and (special_pressed or attack_pressed or left_strong_pressed or down_strong_pressed or up_strong_pressed or right_strong_pressed or jump_pressed or (shield_pressed and has_airdodge)){
				temp.sealmark = 0
				spr_angle = 0
				hurtboxID.image_angle = 0
				iasa_script();
				vsp = vsp/1.6
				hsp = hsp/1.6
				spawn_hit_fx( x, y, seal_hit_weak_heal )
				sound_play(asset_get("sfx_ori_glide_start"))
			}
		}
		if collision_circle( x, y-32, 48, mytotem, true, true ) {
			if uspecialcancel = 1 and (special_pressed or attack_pressed or left_strong_pressed or down_strong_pressed or up_strong_pressed or right_strong_pressed or jump_pressed or (shield_pressed and has_airdodge)) {
				mytotem.state = 1
				spr_angle = 0
				hurtboxID.image_angle = 0
				iasa_script();
				vsp = vsp/1.2
				hsp = hsp/1.2
				uspecialcancel = 0
				spawn_hit_fx( x, y, seal_hit_weak_heal )
				sound_play(asset_get("sfx_ori_glide_start"))
			}
		}
		if collision_circle( x, y-48, 48, boomerang, true, true ) or (48 >point_distance(x,y-48, gracex,gracey)) {
			if uspecialcancel = 1 and (special_pressed or attack_pressed or left_strong_pressed or down_strong_pressed or up_strong_pressed or right_strong_pressed or jump_pressed or (shield_pressed and has_airdodge)){
				instance_destroy(boomerang)
				boomerang = noone;
				spr_angle = 0
				hurtboxID.image_angle = 0
				iasa_script();
				vsp = vsp/1.2
				hsp = hsp/1.2
				uspecialcancel = 0
				spawn_hit_fx( x, y, seal_hit_weak_heal )
				sound_play(asset_get("sfx_ori_glide_start"))
			}
		}

	}

}
else {
if spr_angle != 0 spr_angle = 0
if hurtboxID.image_angle = 0 hurtboxID.image_angle = 0
}

if attack = AT_JAB and was_parried {
	was_parried = false
}

if attack = AT_DSPECIAL and window = 3 and window_timer = 1{
	if dspecialjump = 1 {
		vsp = -5
		dspecialjump = 0
	}
	move_cooldown[AT_DSPECIAL] = 30;
}

if attack = AT_TAUNT and window = 2 and taunt_down and window_timer = 28 window_timer = 0