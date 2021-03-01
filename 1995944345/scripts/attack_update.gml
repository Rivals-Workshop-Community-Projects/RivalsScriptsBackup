


if attack == AT_JAB && get_window_value(attack, window, AG_WINDOW_TYPE) == 666 &&  window_timer == get_window_value(attack, window, AG_WINDOW_SFX_FRAME)+1  {
	var origincloud = instance_create(x+40*spr_dir,y-30, "obj_article2");
	origincloud.hsp = 4*spr_dir;
	newcloud = instance_create(origincloud.x,origincloud.y,"obj_article2");
	newcloud.hsp = 20*spr_dir;
	newcloud = instance_create(origincloud.x,origincloud.y,"obj_article2");
	newcloud.hsp = 7*spr_dir;
	newcloud.vsp = -6;
	newcloud = instance_create(origincloud.x,origincloud.y,"obj_article2");
	newcloud.hsp = 17*spr_dir;
	newcloud.vsp = -12;
}

if attack == AT_NSPECIAL_2 {
	if window == 5 {
		iasa_script();
	}
	

	if get_window_value(attack,window, AG_WINDOW_TYPE) == 69 {
		oldx = selfstab_x;
		oldy = selfstab_y;
		selfstab_x = ease_quadIn(x - 40*spr_dir, x+get_hitbox_value(attack, 1, HG_HITBOX_X)*spr_dir, window_timer, get_window_value(attack,window,AG_WINDOW_LENGTH))
		selfstab_y = ease_quadOut(y - 50, y+get_hitbox_value(attack, 1, HG_HITBOX_Y), window_timer, get_window_value(attack,window,AG_WINDOW_LENGTH))
		selfstab_angle = point_direction(oldx, oldy, selfstab_x, selfstab_y)
	}
}

if attack == AT_DTHROW && window <= 3 && !(attack_down or down_stick_down) {
	set_attack(AT_DAIR);
}

if attack == AT_DATTACK && window == 1 {
	attack_offset = 110;
}
if attack == AT_USTRONG {
	can_move = 0;
	can_fast_fall = 0;
	if window == 1 {
		atstart_x = x;
		atstart_y = y;
		if free {
			window = 5;
			window_timer = 0
		}
	}
}

	if !free && (attack == AT_FSPECIAL or attack == AT_NSPECIAL or attack == AT_NSPECIAL_2 or attack == AT_DSPECIAL or attack == AT_DSPECIAL_2) {
	hurtboxID.sprite_index = get_attack_value(attack, AG_HURTBOX_SPRITE)
	}


if attack == AT_DSPECIAL && window == 2 && window_timer == 1 {
	move_cooldown[attack] = 20;
	if !instance_exists(mushins) {
		take_damage(player,0,6)

	} else {
		mushins.state = 1;
		
	}
	move_cooldown[attack] = 30;
}

if attack == AT_DSPECIAL_2 && window == 2 && window_timer == 1 {
	if instance_exists(mushins) {
		mushins.state = 1;
		
	}
}
if attack == AT_DTILT {
normal_charge = (normal_charge > 0) && (attack_down or down_stick_down)

	if has_hit_player && window == 4 {
		can_attack = true;
		can_jump = true;
	}
}


if attack == AT_FSTRONG {

	if window == 3 && window_timer == 1 {


	free = 1;
	//vsp = -1;
		
	}
can_move = 0;

	if window == 1 {
		atstart_x = x;
		atstart_y = y;
		if free {
			window = 5;
			window_timer = 0
		}
	}

}


if attack == AT_NSPECIAL && window_timer == get_window_value(attack,window,AG_WINDOW_LENGTH) && window == 1 {
	if !selfstab {
		set_player_damage(player, get_player_damage(player) + selfstab_damage)
		selfstab = 1;
		selfstab_x = x;
		selfstab_y = y-20;
	sound_play(sound_get("towerclimb_larv"));
		selfstab_sound = 90;
	}
	
	with (mushins) {
	if player_id != other.id continue;
	ignored_damage += other.selfstab_damage;
	}
	
}

if attack == AT_FSPECIAL or attack == AT_FSPECIAL_2 && !runeG {
	move_cooldown[AT_FSPECIAL] = 20;
}

if attack == AT_FSPECIAL {

	if window == 1 {
		fspecial_nodex = 0;
		fspecial_nodey = fspecial_nodey_start;
		fspecial_dir = down_down - up_down
	}
	if window == 2 {
		can_fast_fall = 0;
		can_move = 0;
		fspecial_nodex = ease_circOut(0, fspecial_dist, window_timer, get_window_value(AT_FSPECIAL, window, AG_WINDOW_LENGTH))
		if window_timer == 1 fspecial_nodex = 30
		fspecial_nodey += (fspecial_dir)*(1-(window_timer/get_window_value(AT_FSPECIAL, window, AG_WINDOW_LENGTH)))*6

	}
	if window == 3 {
		fspecial_nodex = ease_circIn(fspecial_dist, 0, window_timer, get_window_value(AT_FSPECIAL, window, AG_WINDOW_LENGTH))
		fspecial_nodey = lerp(fspecial_nodey, fspecial_nodey_start, (window_timer/get_window_value(AT_FSPECIAL, window, AG_WINDOW_LENGTH))*0.3)
	}
}
if attack == AT_FSPECIAL_2 {
hurtboxID.sprite_index = get_attack_value(attack, AG_HURTBOX_SPRITE)
}
if attack == AT_FSPECIAL_2 && instance_exists(fspecial_target) { //Caught
	if window == 6 {
		can_jump = 1;
	}
	
	if window < 3 {
	if fspecial_target != id {
		fspecial_nodex = abs(x-fspecial_target.x)
		fspecial_nodey = (fspecial_target.y - fspecial_target.char_height/2) - y
		//super_armor = 1;
	} else {
		fspecial_nodex -= abs(hsp);
		fspecial_nodey -= vsp;
		}
	} else {fspecial_nodex = 0}
	if window == 1 && fspecial_target != id {
		fspecial_health = floor(10 + min(get_player_damage(player),100)*0.1)
//		fspecial_target.hsp = 0;
//		fspecial_target.vsp = 0;
//		fspecial_target.old_hsp = 0;
//		fspecial_target.old_vsp = 0;
		fspecial_target.hitpause = 1;
		fspecial_target.hitstop = 5;	
		fspecial_target.hitstop_full = 5;
	}
	if window == 2 {
		can_fast_fall = 0;
		can_move = 0;
		fall_through = 1;
		if fspecial_target != id {
			fspecial_target.hsp -= spr_dir;
			fspecial_target.vsp = 0;		
			if fspecial_target.from_crouch fspecial_target.state_timer--;
			var xx = fspecial_target.bbox_right;
			if spr_dir > 0 xx = fspecial_target.bbox_left;
			//if x-xx != 0 spr_dir = -sign(x-xx )
			hsp += spr_dir;
			
			vsp = (y-fspecial_target.y)*-0.1
			//if sign(x - xx) != sign((x+hsp) - (xx+fspecial_target.hsp)) {
			if (spr_dir > 0 && x > xx) or (spr_dir < 0 && x < xx) {
				x = xx
				window++;
				window_timer = 0;
				fspecial_target.hsp = 0;
				fspecial_target.vsp = 0;
				hsp = x-xx;
				//if spr_dir > 0 hsp = x-fspecial_target.bbox_right;
				//else hsp = x-fspecial_target.bbox_left;
				vsp = -(y-fspecial_target.y);
				//sound_play(asset_get("sfx_frog_dspecial_hit"))
				sound_play(asset_get("sfx_may_wrap2"))
			}
		} else {
			hsp += spr_dir;
			vsp = -(fspecial_nodey_start-fspecial_nodey)*0.1
			if fspecial_nodex < 20 or window_timer > 8{
				window = 6;
				window_timer = 0;
	var fx = spawn_hit_fx(x+floor(fspecial_nodex)*spr_dir, y+floor(fspecial_nodey), fx_sprites[AT_FSPECIAL])
	fx.image_xscale = spr_dir
	fx.depth = depth-1
	sound_play(asset_get("sfx_syl_nspecial_flowerhit"));
			}
		}
	}
	/*
	if window == 3 {
		depth = fspecial_target.depth + 2
		soft_armor = 999*(fspecial_health > 0)
		char_height = fspecial_target.char_height + 40
		can_fast_fall = 0;
		can_move = 0;
		x = fspecial_target.x;
		y = fspecial_target.y-10;
		if !move_cooldown[AT_FSPECIAL_2] && !joy_pad_idle {
			fspecial_target.hsp += (right_down - left_down) * 2
			fspecial_target.vsp += (down_down - up_down) * 2
			move_cooldown[AT_FSPECIAL_2] = 20;
		}
		
		if window_timer == get_window_value(attack,window,AG_WINDOW_LENGTH) {
			take_damage(fspecial_target.player, player, 1)
			take_damage(player, 0, -1)
			sound_play(asset_get("sfx_syl_nspecial_plantgrowth"));
		}
		
		if ((special_pressed or jump_pressed or attack_pressed or shield_pressed) && state_timer > 85) or fspecial_target.state == PS_DEAD or fspecial_target.state == PS_RESPAWN {
			window++;
			window_timer = 0;
			vsp = -5;
		}
	}
	*/
	if window == 3 && window_timer == 0 && instance_exists(fspecial_target) {
				can_fast_fall = 0;
		can_move = 0;
		window_timer = 2;
		
		
		if fspecial_target != id {
		old_hsp = spr_dir*3;
		old_vsp = -7;
		if !fspecial_target.invincible {
		
		/*
			sound_play(sound_get("heal"));
		
			hitpause = 1;
			hitstop = 15;
			hitstop_full = hitstop;
			
			fspecial_target.hitpause = 1;
			fspecial_target.hitstop = hitstop;
			fspecial_target.hitstop_full = hitstop;
			
			//Lifesteal
			
				var dmg = floor(get_player_damage(player)/10)
				
				take_damage(fspecial_target.player, player, floor(dmg/2))
				take_damage(player, -1, -dmg)
			*/
			//Temp-heal
			if fspecial_target.mycolich_type == 0 {
			
							sound_play(sound_get("heal"));
			
				hitpause = 1;
				hitstop = 20;
				hitstop_full = hitstop;
				
				fspecial_target.hitpause = 1;
				fspecial_target.hitstop = hitstop;
				fspecial_target.hitstop_full = hitstop;
			
				fspecial_target.mycolich_type = 1;
				fspecial_target.mycolich_sporetime = (60+get_player_damage(fspecial_target.player)/3)+(runeA*90)
				fspecial_target.mycolich_player = player
				fspecial_target.mycolich_sporemax = fspecial_target.mycolich_sporetime;
				var curheal = fspecial_target.mycolich_healed 
				fspecial_target.mycolich_healed = get_player_damage(fspecial_target.player);
				set_player_damage(fspecial_target.player, curheal)
				//set_player_damage(player, get_player_damage(player) + fspecial_target.mycolich_healed )
				
				var l = 8;
				
				var xx = ((floor(joy_dir+22.5)/45)*45) 
				if joy_pad_idle xx = 45
				
				var yy = lengthdir_y(l, xx)
				xx = lengthdir_x(l, xx)
				

				
				
				if instance_exists(mushins) with (mushins) {
				if player_id != other.id continue;
				ignored_damage += other.fspecial_target.mycolich_healed;
				}	
			} else {
				hitpause = 1;
				hitstop = 8;
				hitstop_full = hitstop;
				
				fspecial_target.hitpause = 1;
				fspecial_target.hitstop = hitstop;
				fspecial_target.hitstop_full = hitstop;
			}
		}} else {
			
		}
	}
	if window == 3 && instance_exists(fspecial_target) && hitstop < 3 {
		fspecial_target.x -= spr_dir*3
		x += spr_dir*3
	}
	if window == 3 && window_timer == get_window_value(attack,window, AG_WINDOW_LENGTH) {
	//spr_dir *= -1
	}
	if window == 4 && window_timer == get_window_value(attack,window, AG_WINDOW_LENGTH){
		spr_dir *= -1
	}
	
} else if attack == AT_FSPECIAL_2 && window != 6{
	window = 6;
	window_timer = 0;
	var fx = spawn_hit_fx(x+floor(fspecial_nodex)*spr_dir, y+floor(fspecial_nodey), fx_sprites[AT_FSPECIAL])
	fx.image_xscale = spr_dir
	fx.depth = depth-1
	sound_play(asset_get("sfx_syl_nspecial_flowerhit"));
	fspecial_nodex = 0;
}
if url != "1905218008" && url != "1995944345" {
	//Don't plagarize characters!
	sound_play(asset_get("sfx_birdflap"))
	vsp = -5+random_func(0, 10, 0)
	hsp = -5+random_func(1, 10, 0)
	window_timer -= 0.5
	if window_timer == 1 take_damage(player, -1, 1)
	jump_speed = 2;
	shorthop_speed = 2;
	walk_speed = 0;
	dash_speed = 0;
	move_cooldown[attack] = 60
}

if attack == AT_USPECIAL {
	if window == 1 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) {
		if special_down {
			window = 2;
			strong_charge = 1;
			window_timer = 0;
		}
	}
	if window_timer == 1 && get_window_value(attack, window, AG_WINDOW_TYPE) == 69 && !hitpause {
		sound_play(asset_get("sfx_ell_small_missile_fire"))
		var origincloud = instance_create(x,y-10, "obj_article2");
		origincloud.vsp = -7;
		origincloud.depth = depth-1
		var newcloud;
		var newangle = 90;
		var cff = 6;
		var csp = 20;
		if !strong_charge {
			cff = 3;
			csp = 5;
		}
		for (var i = cff; i >= 0; i--) {
			newcloud = instance_create(origincloud.x,origincloud.y,"obj_article2");
			newcloud.hsp = lengthdir_x(csp+(runeC*4),newangle);
			newcloud.vsp = lengthdir_y(csp+(runeC*4),newangle)+origincloud.vsp;
			newangle += 360 / cff;
		}
		if !strong_charge {
			instance_destroy(origincloud)
		}
		
		move_cooldown[AT_USPECIAL] = 2;
	}

}

if attack == AT_UAIR && window == 2 && window_timer == get_window_value(AT_UAIR, 2, AG_WINDOW_LENGTH) && !has_hit_player {

var tossbox = create_hitbox(AT_UAIR,1,x+get_hitbox_value(AT_UAIR, 1, HG_HITBOX_X)*spr_dir,y+get_hitbox_value(AT_UAIR, 1, HG_HITBOX_Y)+16)
var goodtoss = 0;
	with (tossbox) {
		
		if place_meeting(x,y,asset_get("par_jumpthrough")) goodtoss = 1;
	}
	instance_destroy(tossbox);
	if goodtoss {
	hitpause = 1;
	if !runeH {
		hitstop = get_hitbox_value(AT_UAIR, 1, HG_BASE_HITPAUSE)/2;
		hitstop_full = hitstop;
	}
	sound_play(asset_get("sfx_frog_dspecial_hit_ground"));
		window = 4;
		window_timer = 0;
		old_vsp = get_window_value(AT_UAIR, 5, AG_WINDOW_VSPEED)
		old_hsp = 0;
	}
	
}

if attack == AT_BAIR && window == 2 && window_timer == get_window_value(attack, 2, AG_WINDOW_LENGTH)  && !has_hit_player {

var tossbox = create_hitbox(AT_BAIR,2,x+get_hitbox_value(AT_BAIR, 2, HG_HITBOX_X)*spr_dir,y+get_hitbox_value(AT_BAIR, 2, HG_HITBOX_Y))
var goodtoss = 0;
	with (tossbox) {
		
		if place_meeting(x,y,asset_get("par_jumpthrough")) goodtoss = 1;
	}
	instance_destroy(tossbox);
	if goodtoss {
	hitpause = 1;
	if !runeH {
		hitstop = get_hitbox_value(AT_BAIR, 2, HG_BASE_HITPAUSE)/2;
		hitstop_full = hitstop;
	}
	sound_play(asset_get("sfx_frog_dspecial_hit_ground"));
		window = 4;
		window_timer = 0;
		old_vsp = get_window_value(AT_BAIR, 5, AG_WINDOW_VSPEED)
		old_hsp = get_window_value(AT_BAIR, 5, AG_WINDOW_HSPEED)*spr_dir
	}
	
}





if attack == AT_TAUNT {
		if selfstab && state_timer mod (14-window) == 5 {
			sound_play(sound_get("click0"))
			selfstab_image = 3.6
		}
		if instance_exists(mushins) && state_timer mod (12+window) == 5 with(mushins) {
			sound_play(sound_get("click1"))
			image_index = 0
		}
		
}