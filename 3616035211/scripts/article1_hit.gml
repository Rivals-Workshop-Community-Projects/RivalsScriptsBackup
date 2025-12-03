if "Imstinkeringit" in hit_player_obj switch enemy_hitboxID.attack{
	case AT_DSPECIAL:
	explosion_owner = hit_player_obj;
	state_set(3);
	break;
	
	default:
	if hit_player_obj != player_id && !invincible state_set(2);
	break;
}else if !invincible state_set(2);



#define state_set
/// state_set(st, tm = 0;)
var st = argument[0];
var tm = argument_count > 1 ? argument[1] : 0;;
state = st;
t = tm;