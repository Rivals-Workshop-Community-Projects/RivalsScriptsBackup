shader_start();

/*if attack == AT_NSPECIAL{
    //                                              x y hight, whitch, rotation 
    draw_sprite_ext(sprite_get("beem"),image_index,x--,y,1*spr_dir,1,0,c_white,1);
    if window >= 4 {
        hsp = 2 * spr_dir; // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
    }
    if window > 100 {
        hsp -= .9 * spr_dir; // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
    }
    if window_timer > 200 {
    hsp -= 1 * spr_dir; // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
    }
      //sprite_get = ("beem", (x + 20 * spr_dir), y - 37);

}*/



shader_end();


#define window_time_is(frame) // Version 0
    // Returns if the current window_timer matches the frame AND the attack is not in hitpause
    return window_timer == frame and !hitpause