//slenderman set_attack

reset_attack_value(AT_FSTRONG, AG_NUM_WINDOWS);
reset_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS);
reset_attack_value(AT_DSPECIAL_AIR, AG_NUM_WINDOWS);
fst_hit = false;
nsp_hit = false;
jab_timer = 0;
jab_end_timer = 0;
dsp_timer = 0;
dsp_end_timer = 0;
dsp_orig_dir = spr_dir;
dsp_distance = 0;

if (attack==AT_JAB){
	sound_play(sound_get("cut_1"),false,noone,0.3)
	sound_play(sound_get("staticmedium_short"),false,noone,0.4,1.6)
}
if (attack==AT_DSPECIAL){
if (free){
	if (!dsp_air_try_cd){
		if (move_cooldown[AT_DSPECIAL_AIR]||(state==PS_FIRST_JUMP&&state_timer<16)||state==PS_JUMPSQUAT||jump_pressed){
			dsp_air_try_cd_timer = dsp_air_try_cd_timer_max;
			dsp_air_try_cd = dsp_air_try_cd_max;
			sound_play(sound_get("tta_13"),false,noone,0.3,0.5);
		}else{
			if (!hitpause){
				dsp_air_try_cd = dsp_air_try_cd_max;
				attack = AT_DSPECIAL_AIR;
				hitpause = true;
				hitstop = 13;
				hitstop_full = 13;
				vsp = 0;
				hsp = 0;
				old_vsp = 400;
				old_hsp = 0;
				summon_afterimage(0, 0.005)
				
				var rand_tmp = random_func_2( 4, 9, true );
					switch (rand_tmp){
						case 0: sound_play(sound_get("cut_1"),false,noone,0.7);
						break;
						case 1: sound_play(sound_get("cut_2"),false,noone,0.7);
						break;
						case 2: sound_play(sound_get("cut_3"),false,noone,0.7);
						break;
						case 3: sound_play(sound_get("cut_4"),false,noone,0.7);
						break;
						case 4: sound_play(sound_get("cut_5"),false,noone,0.7);
						break;
						case 5: sound_play(sound_get("cut_6"),false,noone,0.7);
						break;
						case 6: sound_play(sound_get("tta_15"),false,noone,0.6);
						break;
						case 7: sound_play(sound_get("tta_16"),false,noone,0.6);
						break;
						case 8: sound_play(sound_get("tta_17"),false,noone,0.6);
						break;
						default: break;
					}
			}
		}
	}
	//print("YEAH?")
}else{
	sound_play(sound_get("cut_2"),false,noone,0.3);
	sound_play(sound_get("cut_2"),false,noone,0.5,0.3);
}
}

//=======================================================================================================================//


#define summon_afterimage
///summon_afterimage(hspboolean, vspboolean)
var aft_ = instance_create( x, y, "obj_article1" );
aft_.sprite_index = sprite_index;
aft_.image_index = image_index;
aft_.spr_dir = spr_dir;
aft_.hsp = hsp/3*argument[0];
aft_.vsp = vsp/3*argument[1];
return aft_;