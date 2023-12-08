var hb = my_hitboxID;
var hpo = hit_player_obj;
var hp = hit_player;

switch hb.attack {
    case AT_FSPECIAL:
    	grab_player();
    	if array_length(grabbed) > 0 {
			old_hsp = hsp / 3;
			old_vsp = -10.5;
			sound_play(sfx_fspec_grab);
    	}
    	break;
	case AT_DSTRONG:
		if hb.hbox_num <= 2 {
			hpo.can_wall_tech = false;
			hpo.x = lerp(hpo.x, x, 0.6);
		}
		else {
			hpo.can_wall_tech = true;
			hpo.can_tech = true;
		}
		break;
}

#define grab_player
var hpo = hit_player_obj;
if (hpo.state == PS_HITSTUN || hpo.state == PS_HITSTUN_LAND) && !was_parried && !hpo.clone {
	var grabbed_struct = {
	    pid : hpo,
	    relative_x : hpo.x - x,
	    relative_y : hpo.y - y
	};
	array_push(grabbed, grabbed_struct);
	hpo.hurt_img = 0;
}
