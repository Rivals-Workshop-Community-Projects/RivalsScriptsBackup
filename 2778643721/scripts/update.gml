//
muno_event_type = 1;
user_event(14);

if (introTimer2 < 4) {
    introTimer2++;
} else {
    introTimer2 = 0;
    introTimer++;
}
//this increments introTimer every few frames, depending on the number entered

if (!instance_exists(lor) && state == PS_RESPAWN && intro_toggle){
	lor = (instance_create(x - 68*spr_dir, y + 300, "obj_article2"));
}
if (introTimer < 9) {
	if (!instance_exists(lor) && state == PS_SPAWN && intro_toggle){
		lor = (instance_create(x, y - 50, "obj_article2"));
	}
    draw_indicator = false;
} else {
    draw_indicator = true;
}
//this stops the overhead HUD from getting in the way of the animation. If your animation does not involve much movement, this may not be necessary.

if (instance_exists(lor) && state != PS_SPAWN && lor.state != 1 && state != PS_RESPAWN){
	lor.state = 1;
	lor.state_timer = 0;
}
if (instance_exists(fspecial_id) && attack == AT_FSPECIAL && window == 2){
	fspecial_id.x = x - 6 *spr_dir;
	fspecial_id.y = y;
	fspecial_id.hitpause = true;
	fspecial_id.hitstop = 30;
}

if (!instance_exists(apple) && move_cooldown[AT_DSPECIAL] > 0){
	move_cooldown[AT_DSPECIAL] = 0;
}

if (instance_exists(apple) && apple.state < 5){
	laugh_cancel = false;
}

if (state == PS_ATTACK_GROUND && attack == AT_USPECIAL or state == PS_ATTACK_AIR && attack == AT_USPECIAL){
	if (window > 1){
	if (instance_exists(portal1) && instance_exists(portal2)){
		if portal1.state == 1 && portal2.state == 1{
			
	portal1.portal_cooldown = 2;
	portal2.portal_cooldown = 2;
		}
	}
	}
}
if (portal_cooldown > 0 && move_cooldown[AT_USPECIAL] == 0){
	move_cooldown[AT_USPECIAL] = portal_cooldown;
}
if (instance_exists(portal1) && instance_exists(portal2)){
	
	portal1.portal1_direction = portal1.portal_direction;
	portal2.portal1_direction = portal1.portal_direction;
	portal1.portal2_direction = portal2.portal_direction;
	portal2.portal2_direction = portal2.portal_direction;
	
	portal_cooldown = portal1.portal_cooldown;
	if (room == 58 or room == 26 or room == 27){
		if (portal2.y >= 600  && portal2.x > 277 && portal2.x < 1003){
			portal2.y -= 160;
		}
		if (portal1.y >= 600  && portal1.x > 277 && portal1.x < 1003){
			if (state != PS_ATTACK_AIR && state != PS_ATTACK_GROUND){
				portal1.y -= 160;
			} else if (attack != AT_USPECIAL && attack != AT_USPECIAL_2){
				portal1.y -= 160;
			}
		}
	}
	if (portal2.x == portal1.x && portal2.y == portal1.y && free == false){
			portal2.x += 60*portal1.spr_dir;
		}
	if (portal1.state == 1 && portal2.state == 1 && portal1.portal_cooldown == 0 && portal2.portal_cooldown == 0){
		portals_active = true;
	} else portals_active = false;
    portal1_x = portal1.x;
	portal1_y = portal1.y;
	portal2_x = portal2.x;
	portal2_y = portal2.y;
	portal1.portal_cooldown = portal2.portal_cooldown;
	portal2.portal_cooldown = portal1.portal_cooldown;
} else portal_cooldown = 0;

if (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND){
	if (attack == 49){
		if (char_height < 150){
			if (char_height < 142){
			char_height += 8;
			} else char_height += 2;
		}
	}
	if (attack == AT_DSTRONG or attack == AT_FSTRONG){
		
		if (char_height < 214){
			if (char_height < 206){
			char_height += 8;
			} else char_height += 2;
		}
	}
	if (attack == AT_UAIR){
		if (char_height < 90){
		if (char_height < 82){
			char_height += 4;
		} else char_height += 2;
		}
	}
	if (attack != AT_UAIR && attack != AT_DSTRONG && attack != AT_FSTRONG && attack != 49){
	if char_height > 46{
	char_height -= 8;
}	
	}
} else if char_height > 46{
	char_height -= 8;
}
if (char_height < 46){
	char_height = 46;
}
if phone_cheats[CHEAT_FLY] && !shield_down vsp = -1;

if (state == PS_AIR_DODGE or state == PS_ROLL_BACKWARD or state == PS_ROLL_FORWARD or state == PS_TECH_FORWARD or state == PS_TECH_BACKWARD){
    if (state_timer == 3 or state_timer == 8 or state_timer == 12){
        if (hsp != 0 or vsp != 0){
    spawn_dust_fx( x, y - 32, sprite_get("airdodge_trail"), 12 );
        }
    }
}
if (state == PS_AIR_DODGE && state_timer == 14){
    sound_play(sound_get("magolor_tele_out"));
}

if (state == PS_ROLL_BACKWARD or state == PS_ROLL_FORWARD or state == PS_TECH_FORWARD or state == PS_TECH_BACKWARD){
    if (state_timer == 1){
    sound_stop(asset_get("sfx_roll"));
    sound_stop(asset_get("quick_dodge"));
    sound_play(sound_get("magolor_tele_in"));
    }
    if (state_timer == 14){
    sound_play(sound_get("magolor_tele_out"));
    }
}

if (get_player_color( player ) == 8){
    soul = true;
}

if "superTrue" in self {
if superTrue == 1 {
set_attack(49);
///type your super code
superTrue = 0

}
}

if (state == PS_WALL_JUMP or free == false or state_cat == SC_HITSTUN){
	if (move_cooldown[AT_FSPECIAL] > 30){
		move_cooldown[AT_FSPECIAL] = 30;
	}
	if (move_cooldown[AT_USPECIAL] > 0 && portal_cooldown == 0){
		move_cooldown[AT_USPECIAL] = 0;
	}
}
if (state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR && state_cat == SC_HITSTUN){
    
        sound_stop(sound_get("sfx_charge_loop"));
}

if (!instance_exists(portal2) && instance_exists(portal1) && portal1.state == 1){
    portal1.state = 2;
    portal1.state_timer = 0;
}