//hit_player - called when one of your hitboxes hits a player\

/*var my_dmg = my_hitboxID.damage;
var dmg = ceil(my_dmg*0.25);
if (dmg < 1) { dmg = 1; }*/

switch(my_hitboxID.attack) {
	case AT_FSPECIAL:
		switch(my_hitboxID.hbox_num) {
			case 1:
				addKR(4);
			break;
			case 2:
				my_hitboxID.hit_state = 1;
				my_hitboxID.hsp = 0;
			break;
			
			case 3:
				sound_play(asset_get("sfx_ori_energyhit_medium"))
				sound_play(asset_get("sfx_blow_medium2"))	
			break;
			
			case 4:
				sound_play(asset_get("sfx_ori_energyhit_heavy"))
				sound_play(asset_get("sfx_blow_heavy2"))
	    		consumeKR();
			break;
		}
	break;
	case AT_FTILT:
	    if (my_hitboxID.hbox_num == 2) {
			sound_play(sound_get("sfx_sans_hit"), false, 0, 0.5);
	    }
	break;
	
	case AT_DTILT:
    if(my_hitboxID.force_flinch == 1 && hit_player_obj.state == PS_HITSTUN_LAND && !free)
    {
        var hsp_value = (point_distance(hit_player_obj.x, 0, x + 150 * spr_dir, 0) + .5 * hit_player_obj.ground_friction * (10*10))/10;
        hit_player_obj.old_hsp = -hsp_value * -spr_dir;
    }
	break;
	
	case AT_FSTRONG:
	case AT_USTRONG:
	    if (my_hitboxID.hbox_num == 2) sound_play(sound_get("sfx_sans_hit"), false, 0, 0.5);
	break;
	
	case AT_DSTRONG:
		switch(my_hitboxID.hbox_num) {
			case 1:
			case 2:
				sound_play(sound_get("sfx_sans_critical"));
				sound_play(asset_get("sfx_blow_heavy2"))
			break;
		}
	break;
	
	case AT_FAIR:
	    if (my_hitboxID.hbox_num == 1) {
			sound_play(sound_get("sfx_sans_hit"), false, 0, 0.5);
	    }
	break;
	case AT_BAIR:
		sound_play(sound_get("sfx_sans_hit"), false, 0, 0.5);
		sound_play(sound_get("sfx_soul_damage"), false, 0, 1);
	break;
	case AT_DAIR:
	    if (my_hitboxID.hbox_num == 1) {
			sound_play(sound_get("sfx_sans_hit"), false, 0, 0.5);
	    }
	break;

	case AT_DSPECIAL:
    	switch(my_hitboxID.hbox_num) {
    		case 1:
				if (!hit_player_obj.clone && hit_player_obj.hitstun > 0) {
					window = 4;
					window_timer = 0;
					hit_player_obj.sansGrab_id = id;
					soul_id = hit_player_obj.id;
					sound_play(sound_get("sfx_soul_battlestart"));
					destroy_hitboxes();
				}
    		break;
    		case 2:
				hit_player_obj.sansGrab_id = noone; 
				soul_id = noone;
    			consumeKR();
    		break;
    	}
	break;
	
	case 49:
        hitpause = false;
    	hitstop = 0;
    	hitstop_full = 0;
		if(my_hitboxID.hbox_num == 1) {
			hit_player_obj.sansFS_soul_host = self;
			window = 4;
			window_timer = 0;
			set_attack_value(attack, AG_NUM_WINDOWS, 9);
			with(obj_article1){
				if(player_id == other) instance_destroy(self);
			}
		}
		if(my_hitboxID.hbox_num == 3){
			hit_player_obj.sansFS_soul_host = noone;
		}
	break;
}

addKR(get_hitbox_value(attack, my_hitboxID.hbox_num, HG_KARMA));
//print_debug("old_hsp = " + string(hit_player_obj.old_hsp));
//print_debug("old_vsp = " + string(hit_player_obj.old_vsp));

if (my_hitboxID.type == 2){
	switch(my_hitboxID.hbox_num) {
		case 1:
		case 2:
	        sound_play(sound_get("sfx_soul_damage"));
		break;
		
		case 7:
		case 8:
		case 9:
		case 10:
			sound_play(sound_get("sfx_soul_damage"));
		break;
	}
}

#define addKR(karma)
with(hit_player_obj) {
	if !(sansKRconsume) {
	sansKR += karma;
	if sansKR_player <= 0 sansKR_timer = 0;
	sansKR_player = other.player;
	}
}
#define consumeKR()

var dmg = get_player_damage(hit_player_obj.player)-my_hitboxID.damage;
var kb_dir = get_hitbox_angle(my_hitboxID);

var _snd = sound_get("sfx_sans_impact");
with (hit_player_obj) {
	if (sansKR > 0) {
		with other spawn_hit_fx(hit_player_obj.x, hit_player_obj.y-(hit_player_obj.char_height/2), hfx_karma);
		//spawn_hit_fx(x, y-(char_height/2), other.hfx_karma); // i dont know why this doesnt work
		take_damage(player, other.player, sansKR);
		hitstop += 5+round(sansKR/2);
		sansKRconsume = true;
		//sansKR = 0;
		sansKR_timer = 0;
		//sansKR_player = noone;
		comboKR = 0;
		sound_play(_snd, false, 0, 1.2+(2/sansKR));
	}
}
