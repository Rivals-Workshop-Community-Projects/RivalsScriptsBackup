//danm oment so i gotta define hfx AGAIN
square_tail_fx = player_id.square_tail_fx;
square_destroy = player_id.square_destroy;
pshooter_destroy = player_id.pshooter_destroy;
fair_lines =  player_id.fair_lines;

switch (attack) {
    case AT_FAIR:
	    if hbox_num = 1{
	    spawn_hit_fx( x, y, fair_lines);
		}
	break;
    case AT_JAB:
	case AT_FTILT:
	if player_id.outline = true { image_index = 10; }
	shootsfxnum = random_func( 0, 5, true ) + 1;
	sound_play(sound_get("pshooter_" + string(shootsfxnum)) );
	    if !(has_rune("O") || player_id.phone_cheats[player_id.CHEAT_GUN] = 1) {
	    player_id.pshooter_limit++;
		}
		player_id.pshooter_firing = 4;
		hitsfxnum = random_func( 0, 3, true ) + 1;
			if player_id.pshooter_limit = 3 {
			sound_effect = sound_get("pshoot_hit_final" + string(hitsfxnum) );
			force_flinch = 0;
			hitpause += 2;
			kb_value += 1;
			kb_scale += 0.2;
			hit_effect = player_id.pshooter_b_hfx;
			} else {
			
			sound_effect = sound_get("pshooter_hit_" + string(hitsfxnum) );
			}
			
	break;
    case AT_NAIR:
	if player_id.outline = true { image_index = 10; }
	shootsfxnum = random_func( 0, 5, true ) + 1;
	sound_play(sound_get("pshooter_" + string(shootsfxnum)) );
	
	    if !(has_rune("O") || player_id.phone_cheats[player_id.CHEAT_GUN] = 1) {
	    player_id.pshooter_limit++;
		}
		player_id.pshooter_firing = 4;
		hitsfxnum = random_func( 0, 3, true ) + 1;
		vsp = player_id.vsp * 0.15;
		    if player_id.pshooter_limit = 3 {
			sound_effect = sound_get("pshoot_hit_final" + string(hitsfxnum) );
			force_flinch = 0;
			hitpause += 2;
			kb_value += 1;
			kb_scale += 0.2;
			hit_effect = player_id.pshooter_b_hfx;
			} else {
			sound_effect = sound_get("pshooter_hit_" + string(hitsfxnum) );
			}
	break;
	case AT_DAIR:
	case AT_UAIR:
	if player_id.outline = true { image_index = 10; }
	    hitsfxnum = random_func( 0, 3, true ) + 1;
		sound_effect = sound_get("pshooter_hit_" + string(hitsfxnum) );
		cluster_num = player_id.cluster_num;
	    switch (hbox_num){
	    case 1:
		case 2:
		    decel_num = 0.2 * player_id.spr_dir;
		break;
		case 3:
		    decel_num = 0;
		break;
		case 4:
		case 5:
		    decel_num = 0.2 * -player_id.spr_dir;
		break;
	    }
	break;
	case AT_DSTRONG:
		spr_spikespawn = player_id.spike1_index;
		spr_spikeloop = player_id.spike2_index;
		spr_spike = player_id.spike3_index;
		spr_spikespawn_air = player_id.spike1_index_a;
		spr_spikeloop_air = player_id.spike2_index_a;
		spr_airspike = player_id.spike3_index_a;
		fx_particles = 1;
		
		if free && has_rune("G") {
	    sprite_index = spr_spikespawn_air;
	    }
	break;
	case AT_FSPECIAL:
	
	if vsp = 0 {
	vsp = 0.01;
	}
	if hsp = 0 {
	hsp = 0.01*spr_dir;
	}
	
	if player_id.outline = true { image_index = 1; }
	shootsfxnum = random_func( 0, 5, true ) + 1;
	hitsfxnum = random_func( 0, 3, true ) + 1;
	sound_play(sound_get("pshooter_" + string(shootsfxnum) ));
	sound_effect = sound_get("pshoot_hit_final" + string(hitsfxnum) );
	if player_id.phone_cheats[player_id.CHEAT_HOMING] =  0 {
	player_id.move_cooldown[AT_FSPECIAL] = 120;
	}
	break;
	
	case AT_NSPECIAL:
	    fx_particles = 3;
	break;
	
	case AT_EXTRA_1:
	    image_index = random_func( 1, 10, true );
		hsp = -10 + random_func( 0, 20, true );
		vsp -= random_func( 2, 5, true );
	break;
	
	case 49:
	    fx_particles = 1;
	break;
	
	case AT_DSPECIAL_AIR:
		dunked = false;
		shaking = false;
		shaking_timer = 30;
		shaking_x = x;
		shaking_y = y;
	break;
}