if has_rune("G") && get_player_damage(player) >= last_stand_dmg take_damage(hit_player_obj.player, player, ceil(my_hitboxID.damage*.35));

switch my_hitboxID.attack{
	//normals
	case AT_JAB:
	if my_hitboxID.hbox_num == 3 || my_hitboxID.hbox_num == 4 sound_hitfap(2);
	sound_hitmetal();
	sound_hitfap();
	sound_hitbass();
	break;
	
	case AT_DATTACK:
	if my_hitboxID.hbox_num == 1{
		sound_hitmetal();
		sound_hitstab();
		sound_hitfap(2);
	}
	sound_hitfap();
	sound_hitbass();
	break;
	
	case AT_FTILT:
	if my_hitboxID.hbox_num == 1{
		sound_hitmetal();
		sound_hitstab();
	}
	sound_hitfap();
	sound_hitbass();
	break;
	
	case AT_UTILT:
	if my_hitboxID.hbox_num == 1{
		sound_hitmetal();
		sound_hitfap(2);
	}
	sound_hitfap();
	sound_hitbass();
	break;
	
	case AT_DTILT:
	if my_hitboxID.hbox_num == 1 sound_hitstab();
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
	sound_weakhitflavour();
	case AT_FSTRONG:
	case AT_USTRONG:
	if my_hitboxID.hbox_num == 1 sound_crithit();
	else{
		sound_hitmetal();
		sound_hitstab();
		sound_hitfap();
		sound_hitbass();
	}
	break;
	
	case AT_DSTRONG_2:
	sound_weakhitflavour();
	case AT_DSTRONG:
	if my_hitboxID.hbox_num == 3 sound_crithit();
	else{
		sound_hitmetal();
		sound_hitstab();
		sound_hitfap();
		sound_hitbass();
	}
	if my_hitboxID.hbox_num == 2 array_push(movepl, hit_player_obj);
	break;
	
	//aerials
	case AT_NAIR:
	if my_hitboxID.hbox_num <= (1 + has_rune("C")) old_vsp = min(vsp, -4);
	else sound_weakhitflavour();
	sound_hitmetal();
	sound_hitstab();
	sound_hitfap();
	sound_hitbass();
	break;
	
	case AT_FAIR:
	sound_hitmetal();
	sound_hitstab();
	sound_hitfap();
	sound_hitbass();
	break;
	
	case AT_UAIR:
	if my_hitboxID.hbox_num == 1{
		sound_hitmetal();
		sound_hitstab();
	}
	sound_hitfap();
	sound_hitbass();
	break;
	
	case AT_BAIR:
	if my_hitboxID.hbox_num == 2{
		sound_hitmetal();
		sound_hitstab();
	}
	sound_hitfap();
	sound_hitbass();
	break;
	
	case AT_DAIR:
	sound_hitfap();
	sound_hitbass();
	sound_hitmetal();
	old_vsp = -8;
	break;
	
	//specials
	case AT_NSPECIAL:
	if my_hitboxID.hbox_num == 1 sound_hitfap();
	else spawn_hit_fx(hit_player_obj.x, hit_player_obj.y - hit_player_obj.char_height/2, hit_bow_big);
	sound_play(sound_get("CharSFX_Bow_Penetrate"));
	break;
	
	case AT_FSPECIAL:
	if my_hitboxID.hbox_num == 1{
		sound_hitfap();
		sound_hitbass();
		sound_hitmetal();
		sound_weakhitflavour();
		if has_rune("A") && grabp != noone grabp2 = grabp;
		if !has_rune("A") destroy_hitboxes();
		grabp = hit_player_obj;
		grabp.hitstop += get_player_damage(grabp.player)*.2;
		grabp.hitstop_full += get_player_damage(grabp.player)*.2;
		var g = 0;
		var t = noone;
		repeat 25{
			t = spawn_area_effect(fx_shape, grabp.x, grabp.y - grabp.char_height/2, 70, 110, 90*random_func_2(g+50, 4, 1), g);
			t.start_frame = random_func_2(g, 3, 1);
			t.image_index = t.start_frame;
			t.depth = depth+1;
			variable_instance_set(t, "yiqishapes", t.start_frame);
			g++;
		}
	}else sound_fooexplode();
	break;
	
	case AT_USPECIAL:
	switch my_hitboxID.hbox_num{
		case 1:
		sound_hitfap();
		sound_hitbass();
		
		if usp_pratcancel /*&& qi_stack*/{
			//qi_stack--;
			usp_pratcancel = 0;
			set_hitbox_value(AT_USPECIAL, 2, HG_ANGLE_FLIPPER, 10);
			set_window_value(AT_USPECIAL, 5, AG_WINDOW_TYPE, 0);
		}
		break;
		
		case 2:
		sound_hitfap();
		sound_hitbass();
		break;
		
		case 3:
		grabp = hit_player_obj;
		usp_pos = [hit_player_obj.x, hit_player_obj.y - hit_player_obj.char_height/2, (usp_pos == -1? 0: usp_pos[2]), (usp_pos == -1? 0: usp_pos[2]), point_direction(hit_player_obj.x, hit_player_obj.y - hit_player_obj.char_height/2, x + 4*spr_dir, y - 32)-90];
		break;
	}
	break;
	
	case AT_DSPECIAL:
	if my_hitboxID.hbox_num-1{
		sound_hitfap();
		sound_hitbass();
	}
	sound_play(sound_get("CharSFX_FooExplode_ElectricBass_v" + string(random_func(66, 6, 1) + 1)));
	sound_play(sound_get("CharSFX_FooExplode_ElectricExplode"));
	break;
}

with hit_fx_obj if player_id == other && array_find_index([other.hit_slash_small, other.hit_bow_big, other.hit_slash_big], hit_fx)+1 depth = other.depth+1;

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

#define sound_fooexplode()
sound_play(sound_get("CharSFX_FooExplode_LightBass_v" + string(random_func(97, 12, 1) + 1)));
if fspec_charge > fspec_single_charge*2{
	sound_play(sound_get("CharSFX_FooExplode_ElectricBass_v" + string(random_func(96, 6, 1) + 1)));
	sound_play(sound_get("CharSFX_FooExplode_ElectricExplode"));
}
if fspec_charge > fspec_single_charge*3 sound_hitbass();
if fspec_charge > fspec_single_charge*4 sound_play(sound_get("CharSFX_FooExplode_LongBass_v" + string(random_func(98, 4, 1) + 1)));
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