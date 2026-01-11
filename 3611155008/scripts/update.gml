init_shader();
var t = get_gameplay_time();
if nymphcontrol nymphcontrol--;
if nymph_cooldown nymph_cooldown--;
if taichi_cooldown taichi_cooldown--;
if codec_buffer codec_buffer--;
if !free taichi_cooldown = 0;
if !on_controller && joy_dir%45 on_controller = 1;
codec_avail = 0;
with oPlayer if self != other && yi_codec_available other.codec_avail = 1;

//custom parry logicc
with oPlayer if self != other && ((yi_parry_undo && was_parried) || yi_parry_extra_hitpause){
	if yi_parry_undo == 1 was_parried = 0;
	else if yi_parry_undo == 2{
		var dir = point_direction(other.x, other.y, x, y);
		hsp = lengthdir_x(10, dir);
		vsp = lengthdir_y(10, dir)*free;
		old_hsp = lengthdir_x(10, dir);
		old_vsp = lengthdir_y(10, dir)*free;
	}
	if yi_parry_extra_hitpause{
		hitstop += 15;
		hitstop_full += 15;
		hitpause = 1;
	}
	yi_parry_undo = 0;
	yi_parry_extra_hitpause = 0;
}

if state == PS_PARRY switch window{
	case 0:
	parry_hit = 0;
	invincible = 0;
	invince_time = 0;
	taichi_cooldown = 1;
	hurtboxID.sprite_index = hurtbox_spr;
	array_copy(can_be_hit, 0, array_create(array_length(can_be_hit)), 0, array_length(can_be_hit));
	sound_play(sound_get("SFX_G_Yi_ReflectMove_v" + string((t%5) + 1)));
	break;
	
	case 2:
	if parry_cooldown parry_cooldown = 10;
	if window_timer <= 5 super_armor = 1;
	if window_timer >= 15 && shield_pressed && parry_hit{
		if !parry_hit set_state(PS_PARRY_START);
		else iasa_script();
	}
	if window_timer >= 15 && shield_down set_attack(AT_EXTRA_1);
	break;
}
parry_cooldown = 0;

unbound_timer = (shield_down? unbound_timer+1: 0);
if unbound_timer >= 30 && (state_cat == SC_GROUND_NEUTRAL || state == PS_LAND || state == PS_WALK_TURN || state == PS_WAVELAND || state == PS_DASH_START || state == PS_DASH || state == PS_DASH_TURN || state == PS_DASH_STOP) set_attack(AT_EXTRA_1);
if parryboost && !hitstop{
	vsp = -9;
	old_vsp = -9;
	parryboost = 0;
}

//qi visual handling
var g = 0;
repeat 5{
	qianim[@g] = (qi_stack > g? min(qianim[@g]+1, 20): max(qianim[@g]-1, 0));
	if qianim[g] qifrm[@g] = (qianim[g] == 20? qifrm[g] + .25: qifrm[g] + .75)%8;
	g++;
}
qi_stack = clamp(qi_stack, 0, 5);

with hit_fx_obj if "yiqishapes" in self && player_id == other{
	image_length = 1;
	image_alpha = .8*(1 - step_timer/hit_length);
	image_index = yiqishapes;
	start_frame = yiqishapes;
	spr_dir = 2 - 2*step_timer/hit_length;
	image_yscale = 2 - 2*step_timer/hit_length;
}

if !free || state == PS_WALL_JUMP{
	nymphbounce = 3;
	nymphgrab = 1;
}

if state != PS_RESPAWN && !respawn_taunt && platpos[2] > 0 platpos[@2] -= .05;

//codec logic
if codec_intro{
	if codec_intro == 1 sound_play(sound_get("UISFX_PhoneRing_NR"), 0, 0);
	if codec_intro == 137{
		sound_play(sound_get("UISFX_PhonePickup_NR"), 0, 0);
		codec_static = sound_play(sound_get("UISFX_PhoneStatic_L_NR"), 1, 0);
	}
	if codec_intro == 188{
		sound_play(sound_get("UISFX_PhoneHangup_NR"), 0, 0);
		sound_stop(codec_static);
	}
	codec_intro++;
	if codec_intro == 186 && codec_play[0].char != "yi" && codec_play[0].clip+1 sound_play(sound_get(variable_instance_get(self, codec_play[0].char + "_voices")[codec_play[0].clip]));
	if codec_intro == 187{
		codec_timer++;
		codec_intro--;
		var spk = codec_play[0].char;
		var txt = codec_play[0].txt;
		if spk == "yi" && !codec_yi codec_yi = 1;
		if codec_timer >= string_length(txt)*codex_textspeed + 100 + 80*codec_controls || (codec_timer >= string_length(txt)*codex_textspeed +25 && attack_pressed && codec_controls){
			clear_button_buffer(PC_ATTACK_PRESSED);
			if array_length(codec_play)-1{
				codec_play = array_slice(codec_play, 1, array_length(codec_play)-1);
				var nwspk = codec_play[0].char;
				codec_timer = 10*!((spk == "yi") ^ (nwspk == "yi"));
				if codec_play[0].clip+1 && !(nwspk == "yi" && !codec_yi) sound_play(sound_get(variable_instance_get(self, codec_play[0].char + "_voices")[codec_play[0].clip]));
				if nwspk != "yi"{
					codec_speakername = nwspk;
					codec_speakerimg = codec_play[0].expr;
					codec_speaker = max(codec_speaker, 1);
				}else codec_yi = max(codec_yi, 1);
				sound_play(sound_get("UISFX_PhoneTrigger_NR_v" + string(random_func(58, 9, 1) + 1)), 0, 0)
			}else codec_intro++;
		}
	}
	if codec_yi == clamp(codec_yi, 1, 33){
		codec_yi++;
		codec_timer--;
		if codec_yi == 34 && codec_play[0].clip+1 sound_play(sound_get(variable_instance_get(self, codec_play[0].char + "_voices")[codec_play[0].clip]));
	}
	if codec_intro >= 260 codec_intro = 0;
	codec_controls = 0;
}