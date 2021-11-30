//

shader_start();

if (infinite_ex == false){

if (ex_cooldown > 10){
    draw_sprite_ext(sprite_get("indicator"), ex_cooldown/30, temp_x+7, temp_y-9, 2, 2, 0, c_white, 1);
}

if (ex_cooldown > 0 && ex_cooldown <= 10){
    draw_sprite_ext(sprite_get("indicator"), 5, temp_x+7, temp_y-9, 2, 2, 0, c_white, 1);
}

if (ex_cooldown <= 0){
    draw_sprite_ext(sprite_get("indicator"), 6, temp_x+7, temp_y-9, 2, 2, 0, c_white, 1);
}

}

shader_end();

if (state == PS_SPAWN){
//    if (no_ex_sfx == false){
//        draw_debug_text(temp_x+27, temp_y-30, "Press SPECIAL to disable");
//        draw_debug_text(temp_x+27, temp_y-15, "the EX Ready SFX"); 
 //   }
 //   if (no_ex_sfx == true){
 //       draw_debug_text(temp_x+27, temp_y-15, "EX Ready SFX Disabled!"); 
 //   }
    if (parry_ex == true){
        draw_debug_text(temp_x+27, temp_y-30, "Press PARRY to use double");
        draw_debug_text(temp_x+27, temp_y-15, "tap for the EX moves."); 
    }
    if (parry_ex == false){
        draw_debug_text(temp_x+27, temp_y-15, "Using EX Double Tap!"); 
    }
}

if ((get_match_setting(SET_PRACTICE)) && infinite_ex == false && state != PS_SPAWN){
	draw_debug_text(temp_x+27, temp_y-15, "Taunt for no EX Cooldown");
}

