var hb = my_hitboxID;
var hpo = hit_player_obj;

if "owner" in hb && instance_exists(hb.owner) && "smb_is_mob" in hb.owner {
    with hb.owner {
        last_hit_player = hpo.player;
        if !free { 
            if state == PS_DASH {
                state = PS_FROZEN; // dummy state
                queued_state = PS_DASH;
                spr_dir *= -1;
            }
            else {
                state = PS_WALK;
                queued_state = PS_WALK_TURN;
            }
        }
        else {
            vsp = -1 * max(abs(vsp), 5);
            hsp *= -2;
            if sign(hsp) != 0 { spr_dir = sign(hsp); }
            hitstun = max(hitstun, hitstun_full * 0.75);
        }
    }
}
