#region // Variables
var force = get_kb_formula(get_player_damage(player), knockback_adj, get_match_setting(SET_SCALING), enemy_hitboxID.damage, enemy_hitboxID.kb_value, enemy_hitboxID.kb_scale);
#endregion

#region // REMOVING CHARGE
switch(state){
    case PS_ATTACK_AIR:
    case PS_ATTACK_GROUND:
        switch(attack){
        	case AT_TAUNT:
        		sound_stop(sound_get("sfx_whirlpool_loop"));
        		break;
            case AT_NSPECIAL:
                wren_charge = 0;
                wren_charge_lvl = 0;
                break;
            case AT_FSPECIAL:
				if instance_exists(wren_yoyo.hbox){
					wren_yoyo.state = 1;
					wren_yoyo.state_timer = 0;
					with(wren_yoyo){
						instance_destroy(hbox);
					}
				}
            	break;
        }
        break;
}
#endregion

#region // Stop the Yo-Yo
if instance_exists(wren_yoyo){
    if wren_yoyo.state != 1 and wren_yoyo.state != 8 and wren_yoyo.state < 10{
        wren_yoyo.state = 1;
        wren_yoyo.state_timer = 0;
        if instance_exists(wren_yoyo.hbox){
            instance_destroy(wren_yoyo.hbox);
        }
    }
    if wren_yoyo.state < 12 and wren_yoyo.state >= 10{
		wren_yoyo.state = 12;
		wren_yoyo.state_timer = 0;
		if instance_exists(wren_yoyo.hbox){
			with(wren_yoyo){
				instance_destroy(hbox);
			}
		}
    }
    if wren_yoyo.state == 14{
    	wren_yoyo.state = 1;
    	wren_yoyo.state_timer = 0;
        if instance_exists(wren_yoyo.hbox){
            instance_destroy(wren_yoyo.hbox);
        }
    }
}
#endregion

#region // Riptide
if hit_player_obj.wren_riptide_id == id{
    if enemy_hitboxID.type == 1{
        hit_player_obj.wren_stacks -= 1;
    }
}
#endregion

#region // Rivals 2 Mode
if wren_rivaltwo_mode{
    if (!wren_rtwo_was_hit and (attack == AT_EXTRA_1 and window == 2) and force <= 4){
        wren_rtwo_was_hit = true;
        var temp_angle = get_hitbox_angle( enemy_hitboxID );
        hsp = lengthdir_x( force, temp_angle );
        window = 1;
        window_timer = 0;
    }
}
#endregion

move_cooldown[AT_FSPECIAL] = 0;
wren_nostall = 0;