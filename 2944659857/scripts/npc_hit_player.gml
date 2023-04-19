var hb = my_hitboxID;
var hpo = hit_player_obj;

if "owner" in hb && instance_exists(hb.owner) && "smb_is_mob" in hb.owner {
    with hb.owner {
        if state != PS_DASH && get_article_script(id) != 3 {
            state = PS_FROZEN;
            queued_state = PS_HITSTUN;
            hitstop = hpo.hitstop;
            hitstun_full = 20;
            hitstun = hitstun_full;
            hsp = 0;
            vsp = 0;
            old_hsp = -4 * (hpo.old_hsp != 0 ? sign(hpo.old_hsp) : spr_dir);
            old_vsp = -7;
            last_hit_player = hpo.player;
            spr_dir = -1 * sign(old_hsp);
        }
    }
}
