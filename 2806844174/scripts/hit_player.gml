// code for kamehameha

var hatk = my_hitboxID.attack;
var hnum = my_hitboxID.hbox_num;
var hdam = get_hitbox_value(hatk, hnum, HG_DAMAGE);

switch (hatk) {
	case AT_JAB:
		switch (hnum) {
			case 1:
				break;
			case 2:
				break;
			case 3:
				sound_play(sound_get("coreblade_hit_05"));
				break;
		}
		break;
	case AT_UTILT:
		if hnum == 6 sound_play(sound_get("coreblade_hit_05"));
		break;
	case AT_DTILT:
		sound_play(sound_get("coreblade_hit_05"));
		break;
	case AT_FTILT:
		sound_play(sound_get("coreblade_hit_05"));
		break;
	case AT_DATTACK:
		sound_play(sound_get("coreblade_hit_05"));
		break;
	case AT_FSPECIAL:
		if hnum == 2 sound_play(sound_get("coreblade_hit_05"));
		break;
	case AT_NAIR:
		if hnum == 2 sound_play(sound_get("coreblade_hit_05"));
		break;
	case AT_FAIR:
		sound_play(sound_get("coreblade_hit_05"));
		break;
	case AT_BAIR:
		sound_play(sound_get("coreblade_hit_05"));
		break;
	case AT_DAIR:
		sound_play(sound_get("coreblade_hit_05"));
		if hnum == 1 {
			sound_play(sound_get("lastattack_hit"));
			vsp = 0;
			old_vsp = -9;
		}
		break;
	case AT_UAIR:
		sound_play(sound_get("coreblade_hit_05"));
		if hnum == 1 {
			vsp = 0;
			old_vsp = -4;
		}
		break;
	case AT_USTRONG:
		sound_play(sound_get("coreblade_hit_05"));
		if hnum == 1 sound_play(sound_get("lastattack_hit"));
		break;
	case AT_DSTRONG:
		sound_play(sound_get("coreblade_hit_05"));
		if hnum == 1 sound_play(sound_get("lastattack_hit"));
		break;
	case AT_FSTRONG:
		if hnum == 1 {
			sound_play(sound_get("lastattack_hit"));
			sound_play(sound_get("coreblade_hit_05"));
		}
		break;
	case AT_DSPECIAL:
		sound_play(sound_get("coreblade_hit_05"));
		sound_play(sound_get("lastattack_hit"));
		break;
}