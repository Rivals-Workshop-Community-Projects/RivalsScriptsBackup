//hit_player - called when one of your hitboxes hits a player

if (my_hitboxID.attack == AT_FSTRONG) && (my_hitboxID.hbox_num == 3) {
    sound_play(asset_get("sfx_ell_steam_hit"));
}

if (my_hitboxID.attack == AT_USTRONG) && (my_hitboxID.hbox_num == 3) {
    sound_play(asset_get("sfx_ell_steam_hit"));
}

if (my_hitboxID.attack == AT_DSTRONG) && (my_hitboxID.hbox_num == 3) {
    sound_play(asset_get("sfx_ell_steam_hit"));
}

if (my_hitboxID.attack == AT_UAIR) && (my_hitboxID.hbox_num != 2) && (attack_down) && (meter_water > uairWater) {
    uair_hit_timer = true;
    hit_player_obj.orig_knock *= 0.4;
    hit_player_obj.should_make_shockwave = false;
    old_vsp = 0;
}

if (my_hitboxID.attack == AT_FAIR) && (my_hitboxID.hbox_num != 3) && (my_hitboxID.hbox_num != 4) && (attack_down) && (meter_water > fairWater) {
    fair_hit_timer = true;
    hit_player_obj.orig_knock *= 0.6;
    hit_player_obj.should_make_shockwave = false;
    old_hsp = 0;
}

if (my_hitboxID.attack == AT_BAIR) && (my_hitboxID.hbox_num != 2) && (attack_down) && (meter_water > bairWater) {
    bair_hit_timer = true;
    hit_player_obj.orig_knock *= 0.6;
    hit_player_obj.should_make_shockwave = false;
    old_hsp = 0;
}

move_cooldown[AT_DSPECIAL] -= my_hitboxID.damage*8;
if move_cooldown[AT_DSPECIAL] < 0 {
    move_cooldown[AT_DSPECIAL] = 0;
}