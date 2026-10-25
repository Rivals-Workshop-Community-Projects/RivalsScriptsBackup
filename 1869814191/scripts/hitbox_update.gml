//hitbox_update

#macro ATK_KR 0
#macro ATK_BLUE 1
#macro ATK_ORANGE 2

var sfx_dmg = sound_get("sfx_soul_damage");
var stateAttack = (player_id.state == PS_ATTACK_GROUND || player_id.state == PS_ATTACK_AIR);
switch(attack) {
	case AT_DTILT:
		if (hbox_num == 1) for (var i = 0; i < 20; i++) can_hit[i] = false;
		if (hbox_num == 1 && image_index >= 4 && _hbox == noone) {
			_hbox = create_hitbox(attack, 2, x, y-13);
			sound_play(sound_get("sfx_sans_rise"));
		}
	break;
	
	case AT_DSTRONG:
		/*
		if (hbox_num == 1 && player_id.window == 2) { 
			sprite_index = sprite_get("dstrong_bone"); 
			bone_active = true;
		}
		*/
		if (hbox_num == 1) {
			switch(player_id.window) {
				
				case 2:
					sprite_index = sprite_get("dstrong_bone");
					//image_index = 0;
					bone_active = true;
				break;
				
				case 3:
					//image_index = 1;
				break;
				
				case 4:
					//image_index = 1+floor(player_id.window_timer/5);
				break;
				
			}
			if (image_index >= 2 && _hbox == noone && bone_active) {
				image_index = (player_id.image_index - 3);
				_hbox = create_hitbox(attack, 2, x, y-19);
				//sound_play(sound_get("sfx_sans_rise"));
			}
		}
		if !(stateAttack && player_id.attack == attack) { instance_destroy(); }
	break;
	
	case AT_DAIR:
		if (hbox_num == 1 && image_index >= 4 && _hbox == noone) {
			_hbox = create_hitbox(attack, 2, x, y-19);
			sound_play(sound_get("sfx_sans_rise"));
		}
	break;
	
	case AT_FSPECIAL:
		if (hitbox_timer >= hitbox_life && !has_hit && !in_hitpause) {
			spawn_hit_fx(x, y, (hbox_num == 2 ? player_id.hfx_smallboned_blue : player_id.hfx_smallboned));
			//sound_play(sound_get("sfx_soul_break"));
			destroyed_next = true;
		}
	
	
	if hbox_num == 2 and hit_state == 0 {
		with oPlayer {
			if (state_cat != SC_HITSTUN || activated_kill_effect) other.can_hit[player] = false; else other.can_hit[player] = true;
		//	if (self == other.player_id or !place_meeting(x,y,other) or state_cat != SC_HITSTUN) or activated_kill_effect continue;

		//	other.hsp = 0
		//	other.hit_state = 1
		//	break
		}
	}

	if hit_state == 1 {
		hitbox_timer--
		hit_timer++

		if hit_timer == 4 {
			create_hitbox(AT_FSPECIAL, 3, x, y)
		}

		if hit_timer == 8 {
			destroyed = true
			create_hitbox(AT_FSPECIAL, 4, x, y)
		}
	}	
	
		if (hbox_num == 5) { // rune G
			for (var i = 0; i < 20; i++) can_hit[i] = false;
			with (asset_get("oPlayer")){
		
			    //var blueMoving = ((abs(movementCheck_X - x) > 0.1) || (abs(movementCheck_Y - y) > 0.1));
			    //probably best to just make a list of safe states that count as "not moving"
			    var blueMoving = !(state == PS_PARRY_START || state == PS_PARRY || state == PS_IDLE || 
			    	state == PS_CROUCH || state == PS_SPAWN || state == PS_RESPAWN || state == PS_DEAD ||
			    	state == PS_LAND || state == PS_PRATLAND || state == PS_LANDING_LAG ||
			    	state == PS_PRATFALL);
			    var deadState = (state == PS_DEAD || state == PS_RESPAWN);
			    var isJab = ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && attack == AT_JAB);
			
			    if (instance_place(x,y, other) && get_player_team(get_instance_player(other.sansID)) != get_player_team(player)){
			    	switch(other.boneType) {
			    	    case ATK_BLUE: //you should put your controller down, NOW
			    	        if (blueMoving && !isJab && !invincible) { krDamage(sfx_dmg, 1); }
			    	        //print_debug("movementCheck_X = " + string(movementCheck_X));
			    	        //print_debug("x = " + string(x));
			    	    break;
			    	    
			    	    case ATK_ORANGE: //start running
			    	        if (!blueMoving && !invincible) { krDamage(sfx_dmg, 1); }
			    	    break;
			    	    
			    	    default:
			    	        if (!deadState) krDamage(sfx_dmg, 0);
			    	    break;
			    	}
			    }
			}
		}
	break;
	
	case AT_EXTRA_1:
		if (hitbox_timer >= 6) {
			switch(hbox_num) {
				case 7:
				case 8:
					if (was_parried) {
						hitbox_timer = 7;
						hsp = (8*sign(hsp));
					} else {
						if (hsp >= 4 || hsp <= -4) {
							hsp = hsp*9/10;
						}
					}
				break;
				
				case 10:
				case 12:
					if (was_parried) {
						hitbox_timer = 7;
						vsp = (8*sign(vsp));
					} else {
						if (vsp >= 4 || vsp <= -4) {
							vsp = vsp*9/10;
						}
					}
				break;
			}
		}
	break;
}

#define krDamage(sfx, dmgType)

sound_play(sfx);
if (dmgType) { take_damage(player, get_instance_player(other.sansID), 1); }
else {
    sansKR++;
    if (sansKR > 20) { sansKR = 20; }
    sansKR_timer = 0;
    sansKR_player = get_instance_player(other.sansID);
}