switch(state) {
    case 3:
        state = 1;
        charges -= 1;
        sound_play(asset_get("sfx_absa_harderhit"))
        sound_stop(cur_sound)
        var vfx = spawn_hit_fx(x, y+center[1]-15, player_id.plasma_hitfx)
        vfx.depth += 2;
        target = noone;
        break;
}