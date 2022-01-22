if (my_hitboxID.type == 1 || my_hitboxID.attack == AT_FSTRONG){
	sound_play(sfx_minecraft_hit, false, noone, 1, 1);
}



my_hitboxID.has_hit = true;



var hitpause_exclude = 0;

switch(my_hitboxID.attack){
	case AT_DTILT:
		if hit_player_obj.state_cat == SC_HITSTUN{
			hit_player_obj.free = 1;
		}
		break;
	case AT_FAIR:
		if rune_crit_fair sound_play(asset_get("sfx_war_horn"));
	case AT_NSPECIAL_AIR: //Thorns
		spawnCritFX();
		break;
	case AT_FSTRONG:
	case AT_DAIR:
	case AT_FSTRONG_2:
		sound_play(sfx_minecraft_ding1);
		sound_play(sfx_minecraft_bow_hit[clamp(random_func(0, 4, true), 0, 3) + 1]);
		
		if !my_hitboxID.enemies{
			var vfx = spawn_hit_fx(my_hitboxID.x, my_hitboxID.y, vfx_arrow);
			vfx.steve_manip_id = self;
			vfx.type = 1;
			vfx.draw_angle = my_hitboxID.proj_angle;
			if my_hitboxID.attack == AT_DAIR && my_hitboxID.hbox_num == 1 vfx.draw_angle = (spr_dir == 1) ? 315 : 45;
			vfx.drag_x = vfx.x - hit_player_obj.x;
			vfx.drag_y = vfx.y - hit_player_obj.y;
			vfx.drag_target = hit_player_obj;
		}
		
		if ((my_hitboxID.type == 2 && my_hitboxID.crit) || (my_hitboxID.type == 1 && strong_charge == 60)){
			spawnCritFX();
			my_hitboxID.players_crossbowed++;
			if my_hitboxID.players_crossbowed == 3 && !advancement_made_arrow{
				with chat_owner{
					ds_list_add(chat_txt, "Steve has completed the challenge [Three Birds, One Arrow]");
					ds_list_add(chat_tmr, chat_tmr_max);
					ds_list_add(chat_col, c_white);
				}
				advancement_made_arrow = 1;
				sound_play(sfx_minecraft_totem);
			}
		}
		break;
	case AT_EXTRA_1: //Sticky Piston
		piston_target = hit_player_obj;
		break;
	case AT_FSPECIAL:
		with hit_player_obj{
			burned = true;
			burnt_id = other;
			burn_timer = burn_timer % 30;
			sound_play(asset_get("sfx_burnapplied"));
		}
		break;
	case AT_NTHROW:
		if (my_hitboxID.hbox_num == 2){
			with my_hitboxID{//ender pearl
				player_id.pearled = true;
				player_id.pearl_x = x;
				player_id.pearl_y = y;
				instance_destroy();
				exit;
			}
			// hitpause = true;
			// hitstop = hit_player_obj.hitstop;
			// hitstop_full = hitstop;
		}
		else if (my_hitboxID.hbox_num == 3){
			hitpause_exclude = 1;
			my_hitboxID.target = hit_player_obj;
		}
		else if (my_hitboxID.hbox_num == 9){
			sound_play(sfx_minecraft_bell, false, noone, 1.25);
		}
		else if my_hitboxID.hbox_num == 10{
			my_hitboxID.hitpause_timer_2 = round(hit_player_obj.hitstop_full);
			my_hitboxID.in_hitpause = true;
		}
		break;
	case AT_USPECIAL:
		if my_hitboxID.hbox_num == 2{
			my_hitboxID.hitpause_timer = hit_player_obj.hitstop_full;
		}
		break;
	case AT_USTRONG:
	case AT_DSTRONG:
		if hit_player_obj.burned && has_rune("B"){
			explode = 10;
			explode_id = hit_player_obj;
			sound_play(sfx_minecraft_fuse);
		}
		break;
}



var vfx_exists = 0;

with asset_get("hit_fx_obj") if ("steve_manip_id" in self && steve_manip_id == other && type == 5) vfx_exists = 1;

if (!has_container && !held_item && !vfx_exists) && (my_hitboxID.type == 1) switch(my_hitboxID.attack){
	case AT_JAB:
	case AT_FTILT:
	case AT_UTILT:
	case AT_DTILT:
	case AT_DATTACK:
	case AT_FSTRONG:
	case AT_USTRONG:
	case AT_DSTRONG:
	case AT_NAIR:
	case AT_FAIR:
	case AT_BAIR:
	case AT_UAIR:
	case AT_DAIR:
	case AT_USPECIAL:
		sound_play(sfx_minecraft_ding1);
		var hfx = spawn_hit_fx(hit_player_obj.x, hit_player_obj.y - 32, vfx_exp);
		hfx.steve_manip_id = self;
		hfx.type = 5;
		hfx.depth = depth - 10;
		hfx.num = 1;
		var hfx2 = spawn_hit_fx(hit_player_obj.x, hit_player_obj.y - 32, vfx_exp_pickup);
		hfx2.depth = depth - 10;
		break;
	default:
		break;
}



if (strength_pot || size_mult > 1 && has_rune("O")) && my_hitboxID.type == 1{
	if strength_pot spawnPotFX();
	if my_hitboxID.kb_scale > 0{
		sound_play(asset_get("sfx_war_horn"));
		hitstop *= strength_pot_mult;
		hit_player_obj.hitstop *= strength_pot_mult;
	}
}



if (my_hitboxID.type == 2 && !hitpause_exclude) my_hitboxID.hitpause_timer = hit_player_obj.hitpause;



check_kill_effect = true;



#define spawnCritFX

var bias_amt = lengthdir_x(1, my_hitboxID.kb_angle);

for (i = 0; i < 7; i++){
	var hfx = spawn_hit_fx(cr_x, cr_y, vfx_crit);
	var angle = 10 + random_func(10 + i, 120, true);
	var spd = 6;
	
	var cr_x = round(lerp(hit_player_obj.x, my_hitboxID.x, 0.5) + lengthdir_x(abs(i) * 10 * my_hitboxID.spr_dir, angle));
	var cr_y = round(lerp(hit_player_obj.y - hit_player_obj.char_height / 2, my_hitboxID.y, 0.5));
	
	hfx.hsp = lengthdir_x(spd, angle) * my_hitboxID.spr_dir * 1.5;
	hfx.vsp = lengthdir_y(spd, angle) * 0.75;
	
	hfx.steve_manip_id = self;
	hfx.type = 0;
	hfx.depth = depth - 1;
	hfx.num = i;
	hfx.hit_length = 100;
}



#define spawnPotFX

var bias_amt = lengthdir_x(1, my_hitboxID.kb_angle);

for (i = 0; i < 7; i++){
	var hfx = spawn_hit_fx(cr_x, cr_y, vfx_potion_bubble_strength);
	var angle = 10 + random_func(10 + i, 360, true);
	var spd = 6;
	
	var cr_x = round(lerp(hit_player_obj.x, my_hitboxID.x, 0.5) + lengthdir_x(abs(i) * 10 * my_hitboxID.spr_dir, angle));
	var cr_y = round(lerp(hit_player_obj.y - hit_player_obj.char_height / 2, my_hitboxID.y, 0.5));
	
	hfx.hsp = lengthdir_x(spd, angle) * my_hitboxID.spr_dir * 4 * bias_amt;
	hfx.vsp = lengthdir_y(spd, angle) * 2;
	
	hfx.steve_manip_id = self;
	hfx.type = 0;
	hfx.depth = depth - 1;
	hfx.num = 10;
	
	hfx.ignore_gravity = true;
	hfx.go_up = 0.5;
}