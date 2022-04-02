//hit_player

if my_hitboxID.attack == AT_DAIR && (my_hitboxID.hbox_num == 1 || my_hitboxID.hbox_num == 2 || my_hitboxID.hbox_num == 4 || my_hitboxID.hbox_num == 5) {
    hit_player_obj.should_make_shockwave = false;
}

if my_hitboxID.attack == AT_USPECIAL && (my_hitboxID.hbox_num == 1 || my_hitboxID.hbox_num == 3) {
    //sound_play(asset_get("sfx_bird_screech"));
}

if my_hitboxID.attack == AT_DSPECIAL && my_hitboxID.hbox_num == 2 {
    //print_debug(string(my_hitboxID.wt))
}

if ("isclone" in my_hitboxID) {
    goose_id.hitpause = true;
    goose_id.hitstop = my_hitboxID.hitpause + (my_hitboxID.damage*my_hitboxID.kb_scale*.05);
    goose_id.hitstop_full = goose_id.hitstop;
    goose_id.has_hit = true;
    goose_id.old_vsp = goose_id.vsp
    goose_id.old_hsp = goose_id.hsp
}