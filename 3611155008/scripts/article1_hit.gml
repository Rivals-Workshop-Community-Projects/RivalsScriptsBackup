if "Yi_hitnymph" in enemy_hitboxID && is_array(enemy_hitboxID.Yi_hitnymph){
	if array_find_index(enemy_hitboxID.Yi_hitnymph, self)+1 exit;
	else array_push(enemy_hitboxID.Yi_hitnymph, self);
}else variable_instance_set(enemy_hitboxID, "Yi_hitnymph", [self]);

if "is_Yi_ninesols" in hit_player_obj do_yilogic(hit_player_obj, enemy_hitboxID.attack, enemy_hitboxID.hbox_num, enemy_hitboxID);
else{
	do_kb(enemy_hitboxID);
	do_sfx(enemy_hitboxID);
	do_hitpause(hit_player_obj, enemy_hitboxID);
	qi_stack = min(qi_stack+1, 10);
	health--;
	if !health{
		state_set(4);
		hsp = 0;
		vsp = 0;
		sound_play(sound_get("CharSFX_Butterfly_Hacking_Breakdown"));
	}
}

#define state_set
/// state_set(st, t = 0;)
var st = argument[0];
var t = argument_count > 1 ? argument[1] : 0;;
state = st;
timer = t;

#define do_kb(hitbox)
state_set(2);
var an = get_hitbox_angle(hitbox);
var kb = get_kb_formula(50 - health*10, .9, 1, hitbox.damage, hitbox.kb_value, hitbox.kb_scale);
nymph_lockout = get_hitstun_formula(50 - health*10, 1, 1, hitbox.damage, hitbox.kb_value, hitbox.kb_scale)*.5;
hsp = lengthdir_x(kb, an);
vsp = lengthdir_y(kb, an);
if hsp != 0 spr_dir = sign(hsp);
sound_play(sound_get("CharSFX_Butterfly_Hurt_Bawu_v" + string(random_func(97, 3, 1) + 1)));
sound_play(sound_get("CharSFX_Butterfly_Hurt_Negative_AlienVocal_v" + string(random_func(98, 3, 1) + 1)));
sound_play(sound_get("CharSFX_Butterfly_Hurt_Negative_ComputerGlitch_v" + string(random_func(99, 3, 1) + 1)));
sound_play(sound_get("CharSFX_Butterfly_Hurt_Negative_Grains_v" + string(random_func(100, 3, 1) + 1)));
sound_play(sound_get("CharSFX_Butterfly_Hurt_Negative_Puff_v" + string(random_func(101, 3, 1) + 1)));

#define do_hitpause(plr, hitbox)
var am = get_hitstop_formula(50 - health*10, hitbox.damage, hitbox.hitpause, hitbox.hitpause_growth, 0);
plr.hitpause = 1;
plr.hitstop = am;
plr.hitstop_full = am;
plr.old_hsp = plr.hsp;
plr.old_vsp = plr.vsp;
hitstop = am;


#define do_sfx(hitbox)
with hitbox{
	sound_play(sound_effect);
	var g = spawn_hit_fx(x, y, hit_effect);
	g.depth = other.depth-1;
	if type = 2 && walls = 0 destroyed = 1;
}

#define do_yilogic(plr, atk, num, hitbox)
var own = plr == player_id;
var dmg = 1;
var hitqi = 1;
var kb = 1;
switch atk{
	//normals
	case AT_JAB:
	if own break;
	if num >= 3 sound_hitfap(2);
	sound_hitmetal();
	sound_hitfap();
	sound_hitbass();
	break;
	
	case AT_DATTACK:
	if own break;
	if num == 1{
		sound_hitmetal();
		sound_hitstab();
		sound_hitfap(2);
	}
	sound_hitfap();
	sound_hitbass();
	break;
	
	case AT_FTILT:
	if own break;
	if num == 1{
		sound_hitmetal();
		sound_hitstab();
	}
	sound_hitfap();
	sound_hitbass();
	break;
	
	case AT_UTILT:
	if own break;
	if num == 1{
		sound_hitmetal();
		sound_hitfap(2);
	}
	sound_hitfap();
	sound_hitbass();
	break;
	
	case AT_DTILT:
	if own break;
	if num == 1 sound_hitstab();
	else{
		sound_hitmetal();
		sound_hitstab();
		sound_hitfap();
		sound_hitbass();
	}
	sound_hitfap();
	sound_hitbass();
	break;
	
	//strongs
	case AT_FSTRONG_2:
	case AT_USTRONG_2:
	if own break;
	sound_weakhitflavour();
	case AT_FSTRONG:
	case AT_USTRONG:
	if own break;
	if num == 1 sound_crithit();
	else{
		sound_hitmetal();
		sound_hitstab();
		sound_hitfap();
		sound_hitbass();
	}
	break;
	
	case AT_DSTRONG_2:
	if own break;
	sound_weakhitflavour();
	case AT_DSTRONG:
	if own break;
	if num == 3 sound_crithit();
	else{
		sound_hitmetal();
		sound_hitstab();
		sound_hitfap();
		sound_hitbass();
	}
	break;
	
	//aerials
	case AT_NAIR:
	if own break;
	if num == 1 plr.old_vsp = min(plr.vsp, -4);
	else sound_weakhitflavour();
	sound_hitmetal();
	sound_hitstab();
	sound_hitfap();
	sound_hitbass();
	break;
	
	case AT_FAIR:
	if own break;
	sound_hitmetal();
	sound_hitstab();
	sound_hitfap();
	sound_hitbass();
	break;
	
	case AT_UAIR:
	if own break;
	if num == 1 sound_hitmetal();
	sound_hitfap();
	sound_hitbass();
	break;
	
	case AT_BAIR:
	if own break;
	if num == 2{
		sound_hitmetal();
		sound_hitstab();
	}
	sound_hitfap();
	sound_hitbass();
	break;
	
	case AT_DAIR:
	if own && player_id.nymphbounce{
		player_id.nymphbounce--;
		do_sfx(hitbox);
		do_hitpause(plr, hitbox);
	}else break;
	sound_hitfap();
	sound_hitbass();
	sound_hitmetal();
	plr.old_vsp = -8;
	break;
	
	//specials
	case AT_NSPECIAL:
	if own do_sfx(hitbox);
	if num == 1{
		sound_hitfap();
		qi_stack = min(qi_stack+1, 10);
	}else{
		with plr spawn_hit_fx(other.x, other.y, hit_bow_big);
		qi_stack = min(qi_stack+2, 10);
	}
	sound_play(sound_get("CharSFX_Bow_Penetrate"));
	break;
	
	case AT_FSPECIAL:
	if own do_sfx(hitbox);
	hitqi = 0;
	if num == 1{
		sound_hitfap();
		sound_hitbass();
		sound_hitmetal();
		sound_weakhitflavour();
		plr.grabp = self;
		with plr destroy_hitboxes();
		var g = 0;
		var t = noone;
		repeat 25{
			with plr{
				t = spawn_area_effect(fx_shape, other.x, other.y, 70, 110, 90*random_func_2(g+50, 4, 1), g);
				t.start_frame = random_func_2(g, 3, 1);
				t.image_index = t.start_frame;
				t.depth = depth+1;
				variable_instance_set(t, "yiqishapes", t.start_frame);
			}
			g++;
		}
		dmg = 0;
	}else{
		sound_fooexplode(plr);
		qi_stack = min(qi_stack + floor(plr.fspec_charge/plr.fspec_single_charge)*2, 10);
	}
	break;
	
	case AT_USPECIAL:
	hitqi = 0;
	dmg = 0;
	kb = 0;
	switch num{
		case 1:
		if own{
			do_sfx(hitbox);
			do_hitpause(plr, hitbox);
		}
		sound_hitfap();
		sound_hitbass();
		with plr if usp_pratcancel && (own? nymphgrab: qi_stack){
			if own nymphgrab = 0;
			else qi_stack--;
			usp_pratcancel = 0;
			set_hitbox_value(AT_USPECIAL, 2, HG_ANGLE_FLIPPER, 10);
			set_window_value(AT_USPECIAL, 5, AG_WINDOW_TYPE, 0);
		}
		break;
		
		case 2:
		return;
		break;
		
		case 3:
		with plr{
			grabp = other;
			usp_pos = [other.x, other.y, (usp_pos == -1? 0: usp_pos[2]), (usp_pos == -1? 0: usp_pos[2]), point_direction(other.x, other.y, x + 4*spr_dir, y - 32)-90];
			usp_angle = lerp(usp_angle, darcsin(dsin(point_direction(x + 4*spr_dir, y - 32, other.x, other.y))), .3);
			usp_angle = clamp(usp_angle, 0, 90);
		}
		break;
	}
	break;
}

if !own{
	if kb do_kb(hitbox);
	do_sfx(hitbox);
	do_hitpause(plr, hitbox)
	if dmg health--;
	if hitqi qi_stack = min(qi_stack+1, 10);
	if !health{
		state_set(4);
		hsp = 0;
		vsp = 0;
		sound_play(sound_get("CharSFX_Butterfly_Hacking_Breakdown"));
	}
}


#define sound_crithit()
sound_play(sound_get("CharSFX_CriticalHit_AnimeHit_v" + string(random_func(1, 4, 1) + 1)));
sound_play(sound_get("CharSFX_CriticalHit_BassEffect_v" + string(random_func(2, 5, 1) + 1)));
sound_play(sound_get("CharSFX_CriticalHit_HighFrequency_v" + string(random_func(3, 4, 1) + 1)));
sound_play(sound_get("CharSFX_CriticalHit_Whoosh"));
sound_play(sound_get("CharSFX_CriticalHit_Bell"));
sound_play(sound_get("CharSFX_CriticalHit_Brute"));
sound_play(sound_get("CharSFX_CriticalHit_Claw"));
sound_play(sound_get("CharSFX_CriticalHit_Cymbal"));
sound_play(sound_get("CharSFX_CriticalHit_Daiko"));
sound_play(sound_get("CharSFX_CriticalHit_Gong"));

#define sound_weakhitflavour()
sound_play(sound_get("CharSFX_WeaknessAttack_HanElement"));
sound_play(sound_get("CharSFX_WeaknessAttack_Impact_Remake"));
sound_play(sound_get("CharSFX_WeaknessAttack_MagicEffect"));

#define sound_hitfap
/// sound_hitfap(seed = 0;)
var seed = argument_count > 0 ? argument[0] : 0;;
sound_play(sound_get("SFX_G_Enemy_Hit_Fap_v" + string(random_func(99 + seed, 7, 1) + 1)));
#define sound_hitbass()
sound_play(sound_get("SFX_G_Enemy_Hit_HeavyBass_v" + string(random_func(98, 5, 1) + 1)));
#define sound_hitstab()
sound_play(sound_get("SFX_G_Enemy_Hit_KatanaStab_v" + string(random_func(97, 7, 1) + 1)));
#define sound_hitmetal()
sound_play(sound_get("SFX_G_Enemy_Hit_MetalReflect_v" + string(random_func(96, 7, 1) + 1)));

#define sound_fooexplode(plr)
sound_play(sound_get("CharSFX_FooExplode_LightBass_v" + string(random_func(97, 12, 1) + 1)));
if plr.fspec_charge > plr.fspec_single_charge*2{
	sound_play(sound_get("CharSFX_FooExplode_ElectricBass_v" + string(random_func(96, 6, 1) + 1)));
	sound_play(sound_get("CharSFX_FooExplode_ElectricExplode"));
}
if plr.fspec_charge > plr.fspec_single_charge*3 sound_hitbass();
if plr.fspec_charge > plr.fspec_single_charge*4 sound_play(sound_get("CharSFX_FooExplode_LongBass_v" + string(random_func(98, 4, 1) + 1)));
sound_play(sound_get("CharSFX_FooExplode_MidElectric"));
sound_hitfap();
sound_play(asset_get("sfx_icehit_medium2"));

#define spawn_area_effect
/// spawn_area_effect(fx, dx, dy, area_width, area_height, angle = 1, seed = 0, hspd = 0, vspd = 0, grav = 0, move_out = 0;)
var fx = argument[0], dx = argument[1], dy = argument[2], area_width = argument[3], area_height = argument[4];
var angle = argument_count > 5 ? argument[5] : 1;
var seed = argument_count > 6 ? argument[6] : 0;
var hspd = argument_count > 7 ? argument[7] : 0;
var vspd = argument_count > 8 ? argument[8] : 0;
var grav = argument_count > 9 ? argument[9] : 0;
var move_out = argument_count > 10 ? argument[10] : 0;;
var og_x = dx;
var og_y = dy;
dx += random_func(1 + seed, area_width, true) - area_width/2;
dy += random_func(2 + seed, area_height, true) - area_height/2;

var da = angle;

var h = spawn_hit_fx(floor(dx), floor(dy), fx);

h.hsp = hspd;
h.vsp = vspd;
if move_out{
	var am = point_distance(0, 0, hspd, vspd);
	var dir = point_direction(og_x, og_y, dx, dy);
	h.hsp = lengthdir_x(am, dir);
	h.vsp = lengthdir_y(am, dir);
}
h.grav = grav;
h.draw_angle = da;
if dx % 2 == 0 h.depth = depth-1;
return h;