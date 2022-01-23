// gauge bonuses and extra sfx
var hatk = my_hitboxID.attack;
var hnum = my_hitboxID.hbox_num;
var hdam = get_hitbox_value(hatk, hnum, HG_DAMAGE);
var old_gauge = d_gauge;
var gauge_loss = 160;

switch (hatk) {
	case AT_JAB:
		if hnum == 1 sound_play(sound_get("stab1"));
		if hnum == 3 sound_play(sound_get("stab2"));
		break;
	case AT_DATTACK:
		sound_play(sound_get("stab2"));
		break;
	case AT_FTILT:
		sound_play(sound_get("stab2"));
		break;
	case AT_DTILT:
		if hnum == 1 sound_play(sound_get("stab2"));
		break;
	case AT_FSTRONG:
		sound_play(sound_get("stab3"));
		sound_play(asset_get("sfx_crunch"));
		break;
	case AT_DSTRONG:
		if hnum == 1 {
			sound_play(sound_get("stab3"));
		}
		//if hnum > 1 sound_play(asset_get("sfx_blow_weak2"));
		break;
	case AT_USTRONG:
		if hnum == 1 sound_play(sound_get("stab3"));
		break;
	case AT_NAIR:
		if (hnum < 4) {
		} else {
			sound_play(sound_get("stab2"));
			aerial_hit = true;
		}
		if (checkHeight(self, hit_player_obj)) d_gauge += hdam*12; else if d_gauge == old_gauge d_gauge -= gauge_loss / 4;
		break;
	case AT_FAIR:
		//sound_play(asset_get("sfx_blow_weak2"));
		if hnum == 1 sound_play(sound_get("stab1"));
		if hnum == 2 || hnum == 3 {
			sound_play(sound_get("stab2"));
			aerial_hit = true;
		}
		if hnum > 3 {
			if d_gauge == old_gauge d_gauge -= gauge_loss / 2;
		} else if (checkHeight(self, hit_player_obj)) d_gauge += hdam*18; else if d_gauge == old_gauge d_gauge -= gauge_loss / 2;
		break;
	case AT_DAIR:
		if hnum == 1 {
			sound_play(sound_get("stab3"));
			aerial_hit = true;
			d_gauge += hdam*18;
		} else if d_gauge == old_gauge d_gauge -= gauge_loss;
		break;
	case AT_UAIR:
		d_gauge -= gauge_loss/2;
		break;
	case AT_BAIR:
		if hnum == 3 {
			sound_play(sound_get("stab2"));
			aerial_hit = true;
		} else d_gauge -= gauge_loss;
		if (checkHeight(self, hit_player_obj)) d_gauge += hdam*18; else if d_gauge == old_gauge d_gauge -= gauge_loss;
		break;
	case AT_USPECIAL:
		if hnum == 1 {
			sound_play(sound_get("stab3"));
			aerial_hit = true;
			d_gauge += 160;
		} else {
			sound_play(sound_get("stab1"));
		}
		break;
	case AT_FSPECIAL:
		sound_play(sound_get("stab3"));
		aerial_hit = true;
		d_gauge += hdam*15;
		break;
	case AT_DSPECIAL:
		if (hnum == 1) d_gauge += 220;
	case AT_DSPECIAL_2:
		if (hnum == 1) {
			shake_camera(8, 24);
			aerial_hit = true;
		}
		break;
}
if old_gauge = 1000 && d_gauge != 0 d_gauge = 1000;
if d_gauge > 1000 d_gauge = 1000;
if d_gauge < 0 d_gauge = 0;
if d_gauge > old_gauge && d_gauge == 1000 {
	move_cooldown[AT_EXTRA_1] = 600;
	sound_play(sound_get("skill_ready"));
}

// other stuff...
switch (hatk) {
	case AT_NSPECIAL:
		break;
	case AT_DSPECIAL_2:
	case AT_DSPECIAL:
		if (hnum == 6) {
			sound_play(sound_get("stab1"));
			if (hit_player_obj.dive_grabbed_id == noone && hit_player_obj.super_armor == false && hit_player_obj.clone == false) {
				dived_someone = true;
				hit_player_obj.dive_grabbed_id = self;
				dive_grabbed_x = hit_player_obj.x;
			}
		}
		break;
}

#define checkHeight(attacker, target)

if round(attacker.y - attacker.char_height/2) + 8 < round(target.y - target.char_height/2) {
	return 1;
} else {
	return 0;
}