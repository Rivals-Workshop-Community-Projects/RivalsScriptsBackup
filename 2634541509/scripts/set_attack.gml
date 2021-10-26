special_x = x;
special_x %= 200;
switch(attack){
    case AT_JAB:
    var ring = random_func_2(special_x, 50, true);
    if(ring == 1){
        set_window_value(AT_JAB, 2, AG_WINDOW_HAS_SFX, 1);
        set_window_value(AT_JAB, 2, AG_WINDOW_SFX, sound_get("phone_ring"));
        set_window_value(AT_JAB, 2, AG_WINDOW_SFX_FRAME, 1);
    }else{
        set_window_value(AT_JAB, 2, AG_WINDOW_HAS_SFX, 1);
        set_window_value(AT_JAB, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
        set_window_value(AT_JAB, 2, AG_WINDOW_SFX_FRAME, 2);
    }
    break;
    case AT_FSTRONG:
    word_anim = 0;
    word_index = random_func_2(special_x, 3, true);
    break;
    case AT_FSPECIAL:
    sprite_change_offset("explosion2", 0, 60);
    sprdirir = spr_dir;
}