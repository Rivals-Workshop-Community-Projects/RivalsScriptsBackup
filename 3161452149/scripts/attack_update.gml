// attack_update
if !instance_exists(self) exit;

//B - Reversals
if (attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
	trigger_b_reverse();
}

var window_end = floor(get_window_value(attack, window, AG_WINDOW_LENGTH) * ((get_window_value(attack, window, AG_WINDOW_HAS_WHIFFLAG) && !has_hit) ? 1.5 : 1));
var window_last = get_attack_value(attack, AG_NUM_WINDOWS);
switch attack{
	case AT_UTILT:
	if window < 4 offset_hud(100);
	if window = 1 && window_timer = window_end-1 sound_play(asset_get("sfx_mol_norm_explode"), 0, noone, .4, 1);
	case AT_FTILT:
	case AT_FAIR:
	case AT_DTILT:
	case AT_DATTACK:
	if !free && window = 1 fakeout();
	if window = 1 && window_timer = window_end-5 sound_play(asset_get("sfx_zetter_fireball_fire"), 0, noone, .4, 1);
	break;
	
	case AT_JAB:
	if window = 1 || window = 4 || window = 7 fakeout();
	if window = 7 && window_timer = window_end-4 sound_play(asset_get("sfx_zetter_fireball_fire"), 0, noone, .4, 1);
	break;
	
	case AT_FSTRONG:
	case AT_DSTRONG:
	if window = 1 fakeout();
	if window = 2 && window_timer = window_end-1 sound_play(asset_get("sfx_burnapplied"), 0, noone, 1, 1);
	if main_pl != self && instance_exists(main_pl) && window = window_last && window_timer = window_last && !has_hit with main_pl{
		hitstop_full = max(hitstop_full, 20);
		hitstop = max(hitstop, 20);
		hitpause = 1;
		old_hsp = hsp;
		old_vsp = vsp;
	}
	break;
	
	case AT_USTRONG:
	if main_pl != self && instance_exists(main_pl) && window = window_last && window_timer = window_last && !has_hit with main_pl{
		hitstop_full = max(hitstop_full, 20);
		hitstop = max(hitstop, 20);
		hitpause = 1;
		old_hsp = hsp;
		old_vsp = vsp;
	}
	if window = 1 fakeout();
	if window >= 2 offset_hud(200);
	break;
	
	case AT_NAIR:
	if window < 3 offset_hud(80);
	case AT_DAIR:
	if window = 1 && window_timer = window_end-4{
		sound_play(asset_get("sfx_zetter_fireball_fire"), 0, noone, .8, 1);
		sound_play(asset_get("sfx_ori_spin"), 0, noone, .8, 1);
	}
	break;
	
	case AT_UAIR:
	if window < 3 offset_hud(80);
	break;
	
	case AT_USPECIAL:
	can_fast_fall = 0;
	can_wall_jump = 1;
	offset_hud(150);
	if window = 1 && window_timer = window_end-4{
		sound_play(asset_get("sfx_zetter_fireball_fire"), 0, noone, .8, 1);
		sound_play(asset_get("sfx_ori_spin"), 0, noone, .8, 1);
	}
	break;
	
	case AT_DSPECIAL:
	if window_timer = 12{
		move_cooldown[attack] = 60;
		if free && dspecial_bounce{
			vsp = -10;
			dspecial_bounce = 0;
		}
		if instance_exists(venus){
			if !venus.state instance_destroy(venus);
			else{
				venus.state = 4;
				venus.timer = 0;
			}
		}
		var g = 0;
		if !free && !ground_at_pos(x, y){
			var dir = 2;
			repeat(80){
				dir = (g%2)*2 -1;
				if ground_at_pos(x + floor(g/2)*dir, y){
					g += 30
					break;
				}
				g++;
			}
		}
		venus = instance_create(x + floor(g/2)*dir, y + 9*free + 1, "obj_article1");
		venus.state = 7*(!free);
		venus.sprite_index = sprite_get(free? "dspecialseed": "Venus");
		if !free{
			sound_play(asset_get("sfx_blow_weak1"), 0, noone, 1);
			spawn_hit_fx(x + floor(g/2)*dir, y, 301);
		}
	}
	break;
	
	case AT_NSPECIAL:
	if window < 3 && store_grav vsp = clamp(vsp, vsp, 2);
	if window = 1 && window_timer = window_end && !free sound_play(asset_get("sfx_blow_weak1"), 0, noone, .5, 1.3);
	if window = 1 hsp = lerp(hsp, 0, .01);
	if window = 2{
		hsp = lerp(hsp, 0, .03);
		can_move = 0;
		if special_pressed && !is_special_pressed(DIR_UP){
			window = 3;
			window_timer = 0;
		}
		add_inputs();
		with (asset_get("new_dust_fx_obj")) if player = other.player && x != -3000{
			x = -3000;
			y = -3000;
			dust_length = 0;
		}
	}
	if window = 3{
		if window_timer = 1 sound_play(asset_get("sfx_burnapplied"), 0, noone, 1, 1);
		store_grav = 0;
	}
	break;
	
	case AT_FSPECIAL:
	if window_timer = 3{
		if (shield_down || shield_pressed) window = 1;
		else if instance_exists(venus) && venus.can_attack{
			window = 2;
			venus.state = 5;
			venus.timer = 0;
		}
	}
	if window = 1 && window_timer = 8{
		sound_play(asset_get("sfx_burnapplied"), 0, noone, 1, 1);
		sound_play(sfx_poke_weak);
		sound_play(sfx_tip_med);
		clone_pl = instance_create(x + 70*spr_dir, y - 10, (object_index = oPlayer? "oPlayer": "oTestPlayer"));
		main_pl = self;
		clone_pl.main_pl = self;
		clone_pl.clone_pl = clone_pl;
		clone_pl.clone_inputs = clone_inputs;
		clone_pl.custom_clone = 1;
		clone_pl.x += 70*spr_dir;
		clone_pl.input_dir = spr_dir;
		with clone_pl set_attack(AT_EXTRA_1);
		with asset_get("pet_obj") if owner = other.clone_pl with other.clone_pl{
			var g = spawn_hit_fx(0, 0, 0);
			g.white = other;
		}
	}
	break;
	
	case AT_EXTRA_2:
	can_move = 0;
	can_fast_fall = 0;
	if window_timer = window_end{
		if !projection && instance_exists(main_pl) main_pl.move_cooldown[AT_FSPECIAL] = 60;
		instance_destroy(self);
		exit;
	}
	break;
	
	case AT_TAUNT:
	if window = 1 && window_timer = 8 sound_play(asset_get("sfx_plant_ready"), 0, noone, .8, 1);
	break;
	
	case AT_TAUNT_2:
	if window_timer = 1 sound_play(asset_get("sfx_burnapplied"), 0, noone, 1, 1);
	if window_timer = 26 sound_play(asset_get("sfx_swipe_weak1"));
	if window_timer = 38 sound_play(asset_get("sfx_swipe_weak2"));
	if window_timer = 43{
		sound_play(sfx_poke_weak);
		sound_play(sfx_tip_med);
	}
	if window_timer = 38 sound_play(asset_get("sfx_zetter_fireball_fire"), 0, noone, .4, 1);
	break;
}

#define offset_hud
/// offset_hud(target, mult = .2;)
var target = argument[0];
var mult = argument_count > 1 ? argument[1] : .2;;
hud_offset = round(lerp(hud_offset, target, mult));

#define add_inputs()
var inputs = (spr_dir? [up_pressed, up_down, right_pressed, right_down, left_pressed, left_down, down_pressed, down_down,
strong_down, up_strong_pressed, up_strong_down, right_strong_pressed, right_strong_down, left_strong_pressed, left_strong_down, down_strong_pressed, down_strong_down,
up_stick_pressed, up_stick_down, right_stick_pressed, right_stick_down, left_stick_pressed, left_stick_down, down_stick_pressed, down_stick_down,
up_hard_pressed, right_hard_pressed, left_hard_pressed, down_hard_pressed,
attack_pressed, attack_down, special_pressed, special_down, jump_pressed, jump_down, tap_jump_pressed, shield_pressed, shield_down, taunt_pressed, taunt_down, joy_dir, joy_pad_idle]: [up_pressed, up_down, left_pressed, left_down, right_pressed, right_down, down_pressed, down_down,
strong_down, up_strong_pressed, up_strong_down, left_strong_pressed, left_strong_down, right_strong_pressed, right_strong_down, down_strong_pressed, down_strong_down,
up_stick_pressed, up_stick_down, left_stick_pressed, left_stick_down, right_stick_pressed, right_stick_down, down_stick_pressed, down_stick_down,
up_hard_pressed, left_hard_pressed, right_hard_pressed, down_hard_pressed,
attack_pressed, attack_down, special_pressed, special_down, jump_pressed, jump_down, tap_jump_pressed, shield_pressed, shield_down, taunt_pressed, taunt_down, joy_dir, joy_pad_idle]);
array_push(clone_inputs, inputs);

#define fakeout()
return;
if shield_pressed && !hitpause{
	var temp_pl = instance_create(x + 70*spr_dir, y - 10, (object_index = oPlayer? "oPlayer": "oTestPlayer"));
	temp_pl.state = state;
	temp_pl.state_timer = state_timer;
	temp_pl.attack = attack;
	temp_pl.window = window;
	temp_pl.window_timer = window_timer;
	temp_pl.strong_charge = strong_charge;
	temp_pl.should_die = 1;
	temp_pl.can_swap = 0;
	temp_pl.hsp = hsp;
	temp_pl.vsp = vsp;
	temp_pl.special_state = 1;
	temp_pl.main_pl = self;
	temp_pl.clone_pl = temp_pl;
	temp_pl.strong_charge = strong_charge;
	temp_pl.smash_charging = smash_charging;
	temp_pl.strong_flashing = strong_flashing;
	temp_pl.should_die = 1;
	if clone_pl = self && projection{
		temp_pl.projection = 1;
		temp_pl.main_pl = main_pl;
	}
	strong_charge = 0;
	smash_charging = 0;
	strong_flashing = 0;
	spc_dodge = 1;
	set_attack(AT_EXTRA_3);
	clear_button_buffer(PC_SHIELD_PRESSED);
	with asset_get("pet_obj") if owner = temp_pl with temp_pl{
		var g = spawn_hit_fx(0, 0, 0);
		g.white = other;
	}
}

#define ground_at_pos(xpos, ypos) //I'm lazy
return position_meeting(xpos, ypos, asset_get("par_block")) || position_meeting(xpos, ypos, asset_get("par_jumpthrough"));
