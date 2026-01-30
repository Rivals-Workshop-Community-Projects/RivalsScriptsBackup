// attack_update

//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
	trigger_b_reverse();
}
var window_end = floor(get_window_value(attack, window, AG_WINDOW_LENGTH) * ((get_window_value(attack, window, AG_WINDOW_HAS_WHIFFLAG) && !has_hit) ? 1.5 : 1));

if !hitpause switch attack{
	//normals
	case AT_JAB:
	if (window == 1 || (has_rune("C") && window == 7)) && window_timer == window_end-1 sound_swingmed();
	if window == 4 && window_timer == window_end-1 sound_swingbig();
	if window == 7 + 3*has_rune("C") && window_timer == window_end-1 sound_swingbig();
	if window == 7 + 3*has_rune("C") && window_timer == window_end-2 sound_swingbiggest();
	break;
	
	case AT_DATTACK:
	if window == 1 && window_timer == window_end{
		sound_swingbig();
		vsp = -10;
		spawn_base_dust(x, y, "dashstart");
	}
	if window > 1 && !free{
		attack_end();
		destroy_hitboxes();
		set_state(was_parried? PS_PRATLAND: PS_LANDING_LAG);
	}
	break;
	
	case AT_FTILT:
	if window == 1 && window_timer == window_end-1 sound_swingmed();
	break;
	
	case AT_UTILT:
	if window == 1 && window_timer == window_end-1 sound_swingbig();
	break;
	
	case AT_DTILT:
	if window == 1 && window_timer == window_end-1 sound_swingsmall();
	break;
	
	//strongs
	case AT_FSTRONG:
	case AT_FSTRONG_2:
	if has_rune("L") strong_charge = 60;
	switch window{
		case 1:
		if window_timer == 1 sound_play(sound_get("CharSFX_JianAttack_Charging"));
		if window_timer == 9 && attack == AT_FSTRONG_2{
			qi_stack--;
			sound_play(sound_get("CharSFX_JianAttack_ChargeFull"));
		}
		break;
		
		case 2:
		sound_stop(sound_get("CharSFX_JianAttack_Charging"));
		if window_timer == 1 sound_chargeattack();
		if window_timer == window_end-1{
			if attack == AT_FSTRONG_2 sound_swingbiggest();
			else sound_swingbig();
		}
		break;
	}
	break;
	
	case AT_USTRONG:
	case AT_USTRONG_2:
	if has_rune("L") strong_charge = 60;
	switch window{
		case 1:
		if window_timer == 1 sound_play(sound_get("CharSFX_JianAttack_Charging"));
		if window_timer == 8 && attack == AT_USTRONG_2{
			qi_stack--;
			sound_play(sound_get("CharSFX_JianAttack_ChargeFull"));
		}
		break;
		
		case 2:
		sound_stop(sound_get("CharSFX_JianAttack_Charging"));
		if window_timer == 1 sound_chargeattack();
		if window_timer == window_end-1{
			if attack == AT_USTRONG_2 sound_swingbiggest();
			else sound_swingbig();
		}
		break;
	}
	offset_hud(120 + 180*(attack == AT_USTRONG_2));
	break;
	
	case AT_DSTRONG:
	case AT_DSTRONG_2:
	if has_rune("L") strong_charge = 60;
	switch window{
		case 1:
		if window_timer == 1 sound_play(sound_get("CharSFX_JianAttack_Charging"));
		if window_timer == 6 && attack == AT_DSTRONG_2{
			qi_stack--;
			sound_play(sound_get("CharSFX_JianAttack_ChargeFull"));
		}
		break;
		
		case 2:
		sound_stop(sound_get("CharSFX_JianAttack_Charging"));
		if window_timer == window_end-1 sound_swingbig();
		break;
		
		case 3:
		if window_timer == 7 sound_swingbig();
		if window_timer == 11{
			sound_chargeattack();
			sound_swingbiggest();
		}
		break;
	}
	if window == 3 && window_timer < 12 with oPlayer if array_find_index(other.movepl, self)+1 x = lerp(x, other.x - 30*other.spr_dir, .25);
	break;
	
	//aerials
	case AT_NAIR:
	if window == 1 && window_timer == window_end sound_swingmed();
	if window == 4 && window_timer == window_end sound_swingbig();
	if window == 7 && window_timer == window_end sound_swingbig();
	break;
	
	case AT_FAIR:
	if window == 1 && window_timer == window_end sound_swingmed();
	break;
	
	case AT_UAIR:
	if window == 1 && window_timer == window_end sound_swingbig();
	break;
	
	case AT_BAIR:
	if window == 1 && window_timer == window_end sound_swingmed();
	if window == 2 && window_timer == 7 sound_swingbig();
	break;
	
	case AT_DAIR:
	if window == 1 && window_timer == window_end sound_dair();
	break;
	
	//specials
	case AT_NSPECIAL:
	can_move = 0;
	can_fast_fall = 0;
	move_cooldown[attack] = 20;
	hsp *= .97;
	circletimer += window>=4;
	if window == 4 && get_gameplay_time()%12 == 0{
		var k = spawn_hit_fx(x, y, bowcharge);
		k.follow_id = self;
		k.follow_time = null;
	}
	switch window{
		case 1: //startup
		circletimer = 0;
		if window_timer == window_end && special_down && qi_stack >= 2-has_rune("N"){
			window = 4;
			window_timer = 0;
			sound_play(sound_get("CharSFX_Bow_Preattack"), 0, noone, 1, .9);
		}
		if window_timer == window_end sound_play(sound_get("CharSFX_Bow_Shoot"));
		break;
		
		case 5: //charge extra
		if window_timer == window_end{
			qi_stack -= 2-has_rune("N");
			sound_play(sound_get("CharSFX_Bow_Shoot"));
			sound_play(sound_get("CharSFX_Bow_Explode"));
		}
		break;
	}
	break;
	
	case AT_FSPECIAL:
	if has_rune("H") && draw_fx soft_armor = 999999;
	can_move = 0;
	can_fast_fall = 0;
	move_cooldown[attack] = 30 - 15*has_rune("K");
	switch window{
		case 1: //startup
		if window_timer == 1{
			if qi_stack sound_swingbiggest();
			sound_play(sound_get("CharSFX_Dash_v1"));
		}
		if qi_stack && special_down fspecial_dashhit++;
		draw_fx = fspecial_dashhit > 7;
		if window_timer == window_end{
			if !draw_fx sound_stop(sound_get("SFX_G_Yi_HeavyAttack"));
			else sound_stop(sound_get("CharSFX_Dash_v1"));
			hsp = spr_dir*30;
			set_num_hitboxes(AT_FSPECIAL, draw_fx);
			if !draw_fx{
				dash_vfx = spawn_hit_fx(x + 30*spr_dir, y, dashline);
				dash_vfx.follow_id = self;
				dash_vfx.follow_time = 12;
			}
		}
		break;
		
		case 2: //dash
		if hsp == 0{
			var l = 1;
			repeat 20{
				if !place_meeting(x + 30*spr_dir, y - l, asset_get("par_block")){
					y -= l;
					break;
				}
				l++;
			}
		}
		hsp = spr_dir*30*(window_end-window_timer)/window_end;
		if (has_rune("A")? (instance_exists(grabp2) || window_timer >= window_end/2) && instance_exists(grabp): instance_exists(grabp)){
			window = 4;
			window_timer = 0;
			destroy_hitboxes();
		}
		break;
		
		case 3: //miss
		if window_timer == 1 && draw_fx qi_stack--;
		if draw_fx && !has_hit && window_timer == window_end set_state(free? PS_PRATFALL: PS_PRATLAND);
		break;
		
		case 4: //charge startup
		hsp -= sign(hsp)*min(abs(hsp), 4);
		break;
		
		case 5: //charge
		fspec_charge++;
		if fspec_charge%fspec_single_charge == 3 sound_fspecqi();
		if (special_down || fspec_charge%fspec_single_charge > 5) && fspec_charge/fspec_single_charge < qi_stack && fspec_charge < fspec_single_charge*5 && window_timer == window_end window_timer--;
		if window_timer == window_end fspec_charge = fspec_single_charge*floor(fspec_charge/fspec_single_charge);
		break;
		
		case 6: //charge post start
		if window_timer == window_end{
			if "Yi_nymph" not in grabp grabp.state = (free? PS_IDLE_AIR: PS_IDLE);
			if grabp2 != noone && "Yi_nymph" not in grabp2 grabp2.state = (free? PS_IDLE_AIR: PS_IDLE);
			grabp.invincible = 0;
			grabp.invince_time = 0;
			grabp.perfect_dodging = 0;
			grabp.hurtboxID.dodging = 0;
			var lvl = floor(fspec_charge/fspec_single_charge);
			qi_stack -= lvl;
			var v = spawn_hit_fx(floor(grabp.x), floor(grabp.y - grabp.char_height/2), fx_explode);
			v.depth = grabp.depth-1;
			var g = create_hitbox(AT_FSPECIAL, 2, floor(grabp.x), floor(grabp.y - grabp.char_height/2));
			g.damage = lvl*5;
			g.kb_value = 2 + 2*lvl;
			g.kb_angle = 80 + 10*lvl;
			g.kb_scale = .1 + .25*(lvl-1);
			g.hitpause = 5 + lvl;
			g.hitpause_growth = .4 + .1*lvl;
			g.extra_hitpause = 20 - 4*lvl
			if grabp2 != noone{
				grabp2.invincible = 0;
				grabp2.invince_time = 0;
				grabp2.perfect_dodging = 0;
				grabp2.hurtboxID.dodging = 0;
				var v = spawn_hit_fx(floor(grabp2.x), floor(grabp2.y - grabp2.char_height/2), fx_explode);
				v.depth = grabp2.depth-1;
				var g = create_hitbox(AT_FSPECIAL, 2, floor(grabp2.x), floor(grabp2.y - grabp2.char_height/2));
				g.damage = lvl*5;
				g.kb_value = 2 + 2*lvl;
				g.kb_angle = 80 + 10*lvl;
				g.kb_scale = .1 + .25*(lvl-1);
				g.hitpause = 5 + lvl;
				g.hitpause_growth = .4 + .1*lvl;
				g.extra_hitpause = 20 - 4*lvl
			}
		}
		break;
	}
	break;
	
	case AT_USPECIAL:
	can_move = 0;
	can_fast_fall = 0;
	switch window{
		case 1: //startup
		usp_angle = lerp(usp_angle, 60 - 30*(right_down - left_down)*spr_dir, .3);
		if window_timer == 1 sound_cloth();
		break;
		
		case 2: //look for
		if window_timer != window_end && window_timer >= window_end/2 && !special_down window_timer = window_end-1;
		if window_timer != window_end usp_angle = lerp(usp_angle, (on_controller? clamp(sign(dcos(joy_dir)) != spr_dir? (joy_dir == 270? 0: 90): darcsin(dsin(joy_dir)), 0, 90): 60 - 30*(right_down - left_down)*spr_dir), .3);
		if grabp == noone{
			var t = 1;
			var n = -.9;
			var basex = x + 4*spr_dir;
			var basey = y - 32;
			var dx = lengthdir_x(240, usp_angle)*spr_dir;
			var dy = lengthdir_y(240, usp_angle);
			var rep = 10;
			usp_wallboost = 0;
			repeat rep{
				if position_meeting(basex + dx*t/rep, basey + dy*t/rep, asset_get("par_block")){
					repeat rep{
						var cdx = dx*(t+n)/rep;
						var cdy = dy*(t+n)/rep;
						if position_meeting(basex + cdx, basey + cdy, asset_get("par_block")){
							dx = cdx;
							dy = cdy;
							usp_wallboost = 1;
							break;
						}
						n += .1;
					}
					break;
				}
				t++;
			}
			usp_pos = [floor(basex + dx), floor(basey + dy), window_timer/window_end, window_timer/window_end, (usp_angle + 90)*spr_dir];
		}else{
			usp_pos[@2] = window_timer/window_end;
			if window_timer == window_end-1{
				usp_angle = darcsin(dsin(point_direction(x + 4*spr_dir, y - 32, grabp.x, grabp.y - grabp.char_height/2)));
				var basex = x + 4*spr_dir;
				var basey = y - 32;
				var dx = lengthdir_x(240, usp_angle)*spr_dir;
				var dy = lengthdir_y(240, usp_angle);
				usp_pos = [floor(basex + dx), floor(basey + dy), window_timer/window_end, window_timer/window_end, (usp_angle + 90)*spr_dir];
			}
		}
		usp_angle = clamp(usp_angle, 0, 90);
		usp_pos[@3] = usp_pos[2];
		set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_X, (usp_pos[0]-x)*spr_dir);
		set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_Y, usp_pos[1]-y);
		if window_timer != window_end{
			grabp = noone;
			uspecial_detectbox = create_hitbox(AT_USPECIAL, 3, floor(x + (4 + lengthdir_x(140, usp_angle))*spr_dir), floor(y - 32  + lengthdir_y(140, usp_angle)));
			uspecial_detectbox.image_angle = usp_angle;
			array_copy(uspecial_detectbox.can_hit, 0, array_create(16), 0, 16);
		}else sound_hookatch();
		break;
		
		case 3: //grab
		vsp = 0;
		hsp = 0;
		if window_timer == window_end sound_hookpull();
		break;
		
		case 4: //reel in
		if instance_exists(grabp) && window_timer-1 && hsp == 0{
			var l = 1;
			repeat 20{
				if !place_meeting(x + 10*spr_dir, y - l, asset_get("par_block")){
					y -= l;
					break;
				}
				l++;
			}
		}
		var spd = 20 + 10*has_rune("K");
		hsp = spr_dir*dcos(usp_angle)*spd;
		vsp = -dsin(usp_angle)*spd;
		if window_timer == window_end || y < usp_pos[1] - vsp || (spr_dir? x > usp_pos[0]: x < usp_pos[0]){
			hsp*=.4;
			vsp*=.4;
			if usp_wallboost vsp -= 6;
			window_timer = window_end;
		}
		usp_pos[@3] = 1 - window_timer/window_end;
		break;
		
		case 5: //endlag
		usp_pos[@2] = 1 - window_timer/window_end;
		break;
	}
	break;
	
	case AT_DSPECIAL:
	if window == 1 && window_timer == window_end{
		sound_play(sound_get("IntSFX_Butterfly_Success_Bass"));
		sound_play(sound_get("IntSFX_Butterfly_Success_Wave"));
		sound_play(sound_get("IntSFX_Butterfly_Success_Beep_v" + string(random_func(84, 4, 1) + 1)));
	}
	if window == 2{
		nymphcontrol = 2;
		if !instance_exists(nymph) nymph = instance_create(x + 60*spr_dir, y - 30, "obj_article1");
		if special_down && window_timer == window_end && nymph.state <= 2 window_timer--;
	}
	break;
	
	//extra
	case AT_EXTRA_1:
	unbound_timer = -10;
	switch window{
		case 1:
		if window_timer == 1 sound_parrycharge();
		break;
		case 2:
		if window_timer == 10 sound_parryhint();
		if !shield_down{
			parry_hit = 0;
			invincible = 0;
			invince_time = 0;
			array_copy(can_be_hit, 0, array_create(array_length(can_be_hit)), 0, array_length(can_be_hit));
			window_goto(4);
			sound_parryrelease();
			parrysound_stop();
		}
		break;
		case 3:
		if window_timer == 1 sound_parrycancel();
		break;
		case 4:
		if window_timer <= 20 perfect_dodging = 1;
		case 5:
		if has_rune("I") && parry_hit && shield_pressed{
			clear_button_buffer(PC_SHIELD_PRESSED);
			parry_hit = 0;
			invincible = 0;
			invince_time = 0;
			array_copy(can_be_hit, 0, array_create(array_length(can_be_hit)), 0, array_length(can_be_hit));
			window_goto(4);
			sound_parryrelease();
			parrysound_stop();
		}
		break;
	}
	break;
	
	case AT_EXTRA_2:
	if window == 1{
		if window_timer == 1{
			sound_kick();
			taichi_cooldown = -1;
		}
		perfect_dodging = window_timer <= 8;
		super_armor = window_timer <= window_end && !perfect_dodging;
	}else{
		super_armor = 0;
		if window_timer == window_end && taichi_cooldown == -1 taichi_cooldown = 10;
	}
	break;
	
	case AT_EXTRA_3: //codec
	codec_controls = 1;
	can_move = 0;
	can_fast_fall = 0;
	hsp = 0;
	vsp = 0;
	if codec_intro >= 200 && window == 3{
		window++;
		window_timer = 0;
	}
	break;
	
	case AT_TAUNT:
	if window_timer == 12 sound_heal();
	if window_timer == 40{
		take_damage(player, player, -1 -4*has_rune("M"));
		if get_match_setting(SET_PRACTICE) qi_stack = min(5, qi_stack+1);
	}
	break;
	
	case AT_TAUNT_2:
	if get_match_setting(SET_PRACTICE) && (window_timer-40)%8 == 1 && qi_stack < 5{
		sound_fspecqi();
		qi_stack = min(5, qi_stack+1);
	}
	break;
	
	case 2: //intro
	if (window <= 7) offset_hud(2000, 0.1); //put hud away
	if (window_timer == window_end-1 && get_gameplay_time() <= 125) state = PS_SPAWN; //correct state to spawn if needed
	break;
	
	case 49: //final smash
	fs_using_final_smash = 0;
	can_move = 0;
	can_fast_fall = 0;
	hsp = 0;
	vsp = 0;
	hurtboxID.sprite_index = sprite_get("finalsmash_hurt");
	switch window{
		case 1:
		startpos = [x, y];
		firepos = [room_width/2, room_height/2 - 110, 0];
		fire_timer = 0;
		break;
		
		case 2:
		x = lerp(startpos[0], firepos[0], window_timer/window_end);		
		y = lerp(y, firepos[1], .1);
		firepos[@2] = y;
		spr_angle = dsin(180*window_timer/window_end)*(point_direction(startpos[0], startpos[1], firepos[0], firepos[1]) - 90);
		if window_timer == window_end sound_play(sound_get("CharSFX_Bow_Preattack"), 0, noone, 1, .9);
		break;
		
		case 3:
		spr_angle = 0;
		y = lerp(firepos[2], firepos[1]-10, window_timer/window_end);
		break;
		
		case 4:
		y = lerp(firepos[1]-10, firepos[1]-20, window_timer/window_end);
		if window_timer == window_end{
			var i = 0;
			while !position_meeting(x, y + i, asset_get("par_block")) && y + i < room_height i++;
			boompos = [x, y + i];
			firepos = [x, y];
			sound_play(sound_get("CharSFX_Bow_Shoot"));
		}
		break;
		
		case 5:
		case 6:
		case 7:
		if fire_timer == 2 sound_play(sound_get("SFX_RhyzoExplosionpre")); 
		if fire_timer == 18 sound_play(sound_get("SFX_RhyzoExplode")); 
		fire_timer += 1/3;
		if window != 7 shake_camera(round(fire_timer/3), 3);
		if fire_timer == 60 create_hitbox(49, 1, floor(firepos[0]), floor(firepos[1]));
		if fire_timer >= 60 && window != 7 window_goto(7);
		break;
	}
	break;
}
if attack == 49 fs_hide_ball = 2;

#define window_goto
/// window_goto(win, t = 0;)
var win = argument[0];
var t = argument_count > 1 ? argument[1] : 0;;
window = win;
window_timer = t;

#define sound_parrycancel()
sound_play(sound_get("CharSFX_ChargeParry_Cancel_Daiko_v" + string(random_func(1, 4, 1) + 1)));
sound_play(sound_get("CharSFX_ChargeParry_Cancel_MagicEffect_v" + string(random_func(2, 4, 1) + 1)));
sound_play(sound_get("CharSFX_ChargeParry_Cancel_Pipa_v" + string(random_func(3, 4, 1) + 1)));
sound_play(sound_get("CharSFX_ChargeParry_Cancel_SciFi_v" + string(random_func(4, 6, 1) + 1)));
sound_play(sound_get("CharSFX_ChargeParry_Cancel_Steam_v" + string(random_func(5, 6, 1) + 1)));
sound_play(sound_get("CharSFX_ChargeParry_Cancel_Treminal"));

#define sound_parrycharge()
sound_play(sound_get("CharSFX_ChargeParry_Charge_Cloth_v" + string(random_func(1, 3, 1) + 1)));
sound_play(sound_get("CharSFX_ChargeParry_Charge_Fire_v" + string(random_func(2, 4, 1) + 1)));
sound_play(sound_get("CharSFX_ChargeParry_Charge_Light_v" + string(random_func(3, 3, 1) + 1)));
sound_play(sound_get("CharSFX_ChargeParry_Charge_Terminal_v" + string(random_func(4, 6, 1) + 1)));
sound_play(sound_get("CharSFX_ChargeParry_Charge_Whoosh_v1"));

#define sound_parryhint()
sound_play(sound_get("CharSFX_ChargeParry_Hint_Charge_v" + string(random_func(1, 2, 1) + 1)));
sound_play(sound_get("CharSFX_ChargeParry_Hint_SciFi_v" + string(random_func(2, 2, 1) + 1)));
sound_play(sound_get("CharSFX_ChargeParry_Hint_Whoosh_v" + string(random_func(3, 6, 1) + 1)));
sound_play(sound_get("CharSFX_ChargeParry_Hint_MagicEffect"));

#define sound_parryrelease()
sound_play(sound_get("CharSFX_ChargeParry_Realease_Cloth_v" + string(random_func(1, 3, 1) + 1)));
sound_play(sound_get("CharSFX_ChargeParry_Realease_Pipa_v" + string(random_func(2, 2, 1) + 1)));
sound_play(sound_get("CharSFX_ChargeParry_Realease_Sword_v" + string(random_func(3, 2, 1) + 1)));
sound_play(sound_get("CharSFX_ChargeParry_Realease_Thunder_v" + string(random_func(4, 3, 1) + 1)));
sound_play(sound_get("CharSFX_ChargeParry_Realease_Daiko"));
sound_play(sound_get("CharSFX_ChargeParry_Realease_LowMagic"));
sound_play(sound_get("CharSFX_ChargeParry_Realease_Magic"));

#define parrysound_stop()
sound_stop(sound_get("CharSFX_ChargeParry_Charge_Cloth_v1"));
sound_stop(sound_get("CharSFX_ChargeParry_Charge_Cloth_v2"));
sound_stop(sound_get("CharSFX_ChargeParry_Charge_Cloth_v3"));
sound_stop(sound_get("CharSFX_ChargeParry_Charge_Fire_v1"));
sound_stop(sound_get("CharSFX_ChargeParry_Charge_Fire_v2"));
sound_stop(sound_get("CharSFX_ChargeParry_Charge_Fire_v3"));
sound_stop(sound_get("CharSFX_ChargeParry_Charge_Fire_v4"));
sound_stop(sound_get("CharSFX_ChargeParry_Charge_Light_v1"));
sound_stop(sound_get("CharSFX_ChargeParry_Charge_Light_v2"));
sound_stop(sound_get("CharSFX_ChargeParry_Charge_Light_v3"));
sound_stop(sound_get("CharSFX_ChargeParry_Charge_Terminal_v1"));
sound_stop(sound_get("CharSFX_ChargeParry_Charge_Terminal_v2"));
sound_stop(sound_get("CharSFX_ChargeParry_Charge_Terminal_v3"));
sound_stop(sound_get("CharSFX_ChargeParry_Charge_Terminal_v4"));
sound_stop(sound_get("CharSFX_ChargeParry_Charge_Terminal_v5"));
sound_stop(sound_get("CharSFX_ChargeParry_Charge_Terminal_v6"));
sound_stop(sound_get("CharSFX_ChargeParry_Charge_Whoosh_v1"));

sound_stop(sound_get("CharSFX_ChargeParry_Hint_Charge_v1"));
sound_stop(sound_get("CharSFX_ChargeParry_Hint_Charge_v2"));
sound_stop(sound_get("CharSFX_ChargeParry_Hint_SciFi_v1"));
sound_stop(sound_get("CharSFX_ChargeParry_Hint_SciFi_v2"));
sound_stop(sound_get("CharSFX_ChargeParry_Hint_Whoosh_v6"));
sound_stop(sound_get("CharSFX_ChargeParry_Hint_MagicEffect"));

#define sound_heal()
sound_play(sound_get("CharSFX_TakeMed_PartA_v" + string(random_func(1, 6, 1) + 1)), 0, noone, .8);
sound_play(sound_get("CharSFX_TakeMed_NR_PartC_v" + string(random_func(2, 4, 1) + 1)), 0, noone, .8);
sound_play(sound_get("CharSFX_TakeMed_NR_PartB"), 0, noone, .8);

#define sound_kick()
sound_play(sound_get("CharSFX_AerialSpin_Burst_v" + string(random_func(1, 6, 1) + 1)));
sound_play(sound_get("CharSFX_AerialSpin_Choppy_v" + string(random_func(2, 2, 1) + 1)));
sound_play(sound_get("CharSFX_AerialSpin_Cloth_v" + string(random_func(3, 3, 1) + 1)));
sound_play(sound_get("CharSFX_AerialSpin_Effect_v" + string(random_func(4, 6, 1) + 1)));

#define sound_dair()
sound_play(sound_get("CharSFX_DownAttack_LowWhoosh_v" + string(random_func(1, 7, 1) + 1)));
sound_play(sound_get("CharSFX_DownAttack_Magic_v" + string(random_func(2, 3, 1) + 1)));
sound_play(sound_get("CharSFX_DownAttack_Block"));

#define sound_swingbiggest()
sound_play(sound_get("SFX_G_Yi_HeavyAttack"));
#define sound_swingbig()
sound_play(sound_get("SFX_G_Yi_Attk_NoWeapon_FullSwing" + string(random_func(55, 5, 1) + 1)));
sound_play(sound_get("CharSFX_Sword_Swing_Magic"));
#define sound_swingmed()
sound_play(sound_get("SFX_G_Yi_Attk_NoWeapon_Swing" + string(random_func(56, 4, 1) + 5)));
sound_play(sound_get("CharSFX_Sword_Swing_Magic"));
#define sound_swingsmall()
sound_play(sound_get("SFX_G_Yi_Attk_NoWeapon_Swing" + string(random_func(57, 4, 1) + 1)));
sound_play(sound_get("CharSFX_Sword_Swing_Magic"));
#define sound_chargeattack()
sound_play(sound_get("CharSFX_JianAttack_Attack_Swoosh_v" + string(random_func(50, 6, 1) + 1)));
sound_play(sound_get("CharSFX_JianAttack_Attack_Base"));

#define sound_fspecqi()
sound_play(sound_get("CharSFX_FooCharge_Hint_Bangu_v" + string(random_func(51, 3, 1) + 1)), 0, noone, .4);
sound_play(sound_get("CharSFX_FooCharge_Hint_Bot_v" + string(random_func(52, 9, 1) + 1)), 0, noone, .4);
sound_play(sound_get("CharSFX_FooCharge_Hint_Energy_v" + string(random_func(53, 5, 1) + 1)), 0, noone, .4);
sound_play(sound_get("CharSFX_FooCharge_Hint_Whoosh_v" + string(random_func(54, 5, 1) + 1)), 0, noone, .4);

#define sound_hookatch()
sound_play(sound_get("CharSFX_HookFly_Whoosh_v" + string(random_func(55, 4, 1) + 1)), 0, noone);
sound_play(sound_get("CharSFX_HookFly_Gear_v" + string(random_func(56, 4, 1) + 1)), 0, noone);

#define sound_hookpull()
sound_play(sound_get("CharSFX_HookFly_Pull_v" + string(random_func(54, 4, 1) + 1)), 0, noone);
sound_play(sound_get("CharSFX_HookFly_Effect_v" + string(random_func(55, 4, 1) + 1)), 0, noone);

#define sound_cloth()
sound_play(sound_get("CharSFX_ClothMovement_v" + string(random_func(54, 4, 1) + 1)), 0, noone);


#define spawn_base_dust // supersonic
/// spawn_base_dust(x, y, name, dir = 0)
///spawn_base_dust(x, y, name, ?dir)
//This function spawns base cast dusts. Names can be found below.
var dlen; //dust_length value
var dfx; //dust_fx value
var dfg; //fg_sprite value
var dfa = 0; //draw_angle value
var dust_color = 0;
var x = argument[0], y = argument[1], name = argument[2];
var dir = argument_count > 3 ? argument[3] : 0;

switch (name) {
	default: 
	case "dash_start":dlen = 21; dfx = 3; dfg = 2626; break;
	case "dash": dlen = 16; dfx = 4; dfg = 2656; break;
	case "jump": dlen = 12; dfx = 11; dfg = 2646; break;
	case "doublejump": 
	case "djump": dlen = 21; dfx = 2; dfg = 2624; break;
	case "walk": dlen = 12; dfx = 5; dfg = 2628; break;
	case "land": dlen = 24; dfx = 0; dfg = 2620; break;
	case "walljump": dlen = 24; dfx = 0; dfg = 2629; dfa = dir != 0 ? -90*dir : -90*spr_dir; break;
	case "n_wavedash": dlen = 24; dfx = 0; dfg = 2620; dust_color = 1; break;
	case "wavedash": dlen = 16; dfx = 4; dfg = 2656; dust_color = 1; break;
}
var newdust = spawn_dust_fx(x,y,asset_get("empty_sprite"),dlen);
if newdust == noone return noone;
newdust.dust_fx = dfx; //set the fx id
if dfg != -1 newdust.fg_sprite = dfg; //set the foreground sprite
newdust.dust_color = dust_color; //set the dust color
if dir != 0 newdust.spr_dir = dir; //set the spr_dir
newdust.draw_angle = dfa;
return newdust;

#define offset_hud
/// offset_hud(val, coeff = .2;)
var val = argument[0];
var coeff = argument_count > 1 ? argument[1] : .2;;
hud_offset = round(lerp(hud_offset, val, coeff));