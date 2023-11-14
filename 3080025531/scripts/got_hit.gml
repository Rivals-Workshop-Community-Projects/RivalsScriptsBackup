if (voiced) {
    var rand = random_func(7, 8, true);
    switch (rand) {
        case 0:
            if (!dust_mode) sound_play(vc_dust_hurt1);
            else sound_play(sfx_dust_dust);
            break;
        case 1:
            if (!dust_mode) sound_play(vc_dust_hurt2);
            else sound_play(sfx_dust_dust);
            break;
        case 2:
            if (!dust_mode) sound_play(vc_dust_hurt3);
            else sound_play(sfx_dust_dust);
            break;
        case 4:
            if (!dust_mode) sound_play(vc_dust_hurt4);
            else sound_play(sfx_dust_dust);
            break;
    }
}
if (instance_exists(fidget)) {
    fidget.fid_panic = true;
}