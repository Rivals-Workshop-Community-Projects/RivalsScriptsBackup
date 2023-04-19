var boost = -1;

var can_pull;
can_pull = !hit_player_obj.clone and hit_player_obj.free;

switch (my_hitboxID.attack)
{
    case AT_NSPECIAL:
        if nspecial_grabbed_player == noone and !hit_player_obj.clone and !hit_player_obj.super_armor
        {
            old_vsp -= 3*free;
            nspecial_grabbed_player = hit_player_obj;
            nspecial_grab_timer = nspecial_grab_max_time;
            nspecial_grabbed_player.old_hsp = 0;
            nspecial_grabbed_player.old_vsp = 0;
        }
    break;
    case AT_EXTRA_1:
    case AT_FTHROW:
    case AT_UTHROW:
    case AT_DTHROW:
		if (nspecial_grabbed_player == hit_player_obj){
			if attack == AT_DTHROW
			{
				hit_player_obj.x = lerp(hit_player_obj.x,x,0.5)
				hit_player_obj.y = lerp(hit_player_obj.y,y,0.6)
			}
			nspecial_grabbed_player = noone;
			nspecial_grab_timer = 0;
		}
    break;
    case AT_DSPECIAL:
        if my_hitboxID.hbox_num == 1 sound_play(asset_get("sfx_shovel_hit_med2"));
    break;
    case AT_DATTACK:
        if can_pull
        {
            hit_player_obj.x = lerp(hit_player_obj.x,x+(30*spr_dir),0.3)         
        }
        break;
    case AT_USTRONG:
        if can_pull {
            hit_player_obj.x = lerp(hit_player_obj.x,x,0.1)
            hit_player_obj.y = lerp(hit_player_obj.y,y-70,0.2)
        }
		if !has_rune("I") && hit_player_obj.should_make_shockwave {
		    sound_play(sound_get("star_get"));
		}
        break;
    case AT_DAIR:
        if my_hitboxID.hbox_num == 1 { 
		old_vsp = -10;
		shake_camera( 10, 20+ round(get_player_damage(hit_player_obj.player) / 4) );
		}
    break;
    case AT_NAIR:
    case AT_BAIR:
        var dir = sign((hit_player_obj.y - (hit_player_obj.char_height/2)) - (y - (char_height/2)));
        old_vsp += dir*(!fast_falling)
    case AT_UAIR:
        if can_pull and attack != AT_BAIR
        {
             if !(attack = AT_UAIR && my_hitboxID.hbox_num = 1) hit_player_obj.x = lerp(hit_player_obj.x,x,0.1)
             hit_player_obj.y = lerp(hit_player_obj.y,y-55,0.21)
        }
        var t = ((attack == AT_BAIR) * 2) + ((attack == AT_UAIR)*1)
        
        old_vsp = min(old_vsp - t,0)
    break;
	
	case AT_USPECIAL:
		with(my_hitboxID){
			if ("ownerarticle" in self){
				ownerarticle.hitstop = hitpause;
				ownerarticle.old_hsp = ownerarticle.hsp;
				ownerarticle.old_vsp = ownerarticle.vsp;
				ownerarticle.disable_hitboxes = true;
				ownerarticle.disappear_time = ownerarticle.disappear_time_max - 30;
			}
		}
	break;
	 
	case AT_FSTRONG:
	    whomp_id.eergh_hitpause = hit_player_obj.hitstop - (my_hitboxID.extra_hitpause);
		if state = PS_ATTACK_GROUND && attack = AT_FSTRONG {
		    hitstop = hit_player_obj.hitstop - (my_hitboxID.extra_hitpause);
		}
	break;
	case AT_DSTRONG:
	if !has_rune("M") {
	    thwomp_id.eergh_hitpause = hit_player_obj.hitstop - (my_hitboxID.extra_hitpause);
		if (state = PS_ATTACK_GROUND || state = PS_ATTACK_AIR) && attack = AT_DSTRONG {
		    hitstop = hit_player_obj.hitstop;
		}
	}
	break;
	
	case AT_FSPECIAL:
	    sound_stop(sm64_fuse);
	break;
}
