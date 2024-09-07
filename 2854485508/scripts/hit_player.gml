if (my_hitboxID.orig_player_id != self) exit;

if (my_hitboxID.attack == AT_NSPECIAL && my_hitboxID.hbox_num == 1 && my_hitboxID.player == player) {
    hit_player_obj.mamizou_mark_id = id;
    sound_play(asset_get("sfx_leaves"));
}

if (my_hitboxID.attack == AT_FSTRONG && my_hitboxID.hbox_num == 2) {
    sound_play(asset_get("sfx_frog_gong_hit"));
}

if (my_hitboxID.attack == AT_USTRONG && (my_hitboxID.hbox_num == 1 || my_hitboxID.hbox_num == 3 || my_hitboxID.hbox_num == 5)) {
    sound_play(asset_get("sfx_frog_gong_hit"));
}

if (my_hitboxID.attack == AT_DSTRONG && my_hitboxID.hbox_num == 2) {
    sound_play(asset_get("sfx_frog_gong_hit"));
}

if (my_hitboxID.attack == AT_DSPECIAL || (my_hitboxID.attack == 49 && (("mamizou_mark_id" in hit_player_obj) && hit_player_obj.mamizou_mark_id == id))) {
    if ((!("mamizou_trans" in hit_player_obj) || !hit_player_obj.mamizou_trans) && !hit_player_obj.super_armor && hit_player_obj.soft_armor == 0) {
        hit_player_obj.mamizou_trans = true;
        hit_player_obj.mamizou_trans_damage = 0;
	    hit_player_obj.mamizou_draw_y = draw_y;
	    hit_player_obj.mamizou_mark_id = noone;
        var fx = spawn_hit_fx(round(hit_player_obj.x), round(hit_player_obj.y - 48), hfx_leaf_heavy)
        fx.depth = hit_player_obj.depth - 3;
    }
}


if (my_hitboxID.attack == AT_USPECIAL_2 && my_hitboxID.hbox_num == 2) {
	uspecial_hit = true;
}


if (("mamizou_trans" in hit_player_obj) && hit_player_obj.mamizou_trans) {
    with (hit_player_obj) {
        mamizou_trans_damage += other.my_hitboxID.damage;
    }
}