if(attack == AT_NSPECIAL){
    if(window == 10 && window_timer < 4){
        var totalTime = get_window_value(AT_NSPECIAL, 10, AG_WINDOW_LENGTH) + get_window_value(AT_NSPECIAL, 5, AG_WINDOW_LENGTH)-5;
        var tTopx = 0;
        tTopx = ease_linear(totemStorePos, x+65*spr_dir, min(totemSwallowTime, totalTime), totalTime);
        shader_start();
        draw_sprite_ext(totemTop_spr, 0, tTopx, y, 1*totemspr_dir, 1, 0, c_white, 1);
        shader_end();
    }

}