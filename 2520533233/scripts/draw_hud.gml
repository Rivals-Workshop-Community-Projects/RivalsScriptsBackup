//draw hud
//enums
enum ROCK{
    INIT,
    MOVE,
    DROP,
    IDLE_1,
    IDLE_2,
    RETURN,
    KABOOM,
    THROW
}
//error check
if("dragon_install" in self){
//Spawn-------------------------------------------------------------------------
if(state == PS_SPAWN){
    if(!lightweight){
        draw_debug_text(temp_x, temp_y - 30, "Taunt for lightweight mode!");
    } else {
        draw_debug_text(temp_x, temp_y - 30, "Lightweight mode enabled.");
    }
}
    
//Install Live Credits----------------------------------------------------------
if("dragon_install" in self and dragon_install){
    if(install_time < 20){
        draw_sprite(sprite_get("song_credits"), install_theme, 0-200+install_time*10, 0);
    } else if (install_time < 120){
        draw_sprite(sprite_get("song_credits"), install_theme, 0, 0);
    } else if (install_theme < 140){
        draw_sprite(sprite_get("song_credits"), install_theme, 0-(install_time-120)*10, 0);
    }
}

//GUI---------------------------------------------------------------------------

if(!rock_lockout > 0 and can_rock and can_move_rock){
    draw_sprite_ext(sprite_get("rock_icon"), 0, temp_x + 190, temp_y - 14, 1+small_sprites, 1+small_sprites, 0, c_white, 1);
} else {
    draw_sprite_ext(sprite_get("rock_icon"), 1, temp_x + 190, temp_y - 14, 1+small_sprites, 1+small_sprites, 0, c_white, 1);
}
draw_sprite_ext(sprite_get("peachbar_bg"), 0, temp_x+28, temp_y - 14, 1+small_sprites, 1+small_sprites, 0, c_white, 1);

if(dragon_install){
    if(state_cat!=SC_HITSTUN){
        draw_sprite_ext(sprite_get("install_hut"), 0, temp_x+28, temp_y+8, 1, 1, 0, rainbow_dark, 1);
    }
    
    draw_sprite_ext(sprite_get("peachbar_bg"), 0, temp_x+28, temp_y - 14, 1+small_sprites, 1+small_sprites, 0, rainbow_color_ULTRADARK, 1);
    if(install_time<tenshi_magic){
        draw_sprite_ext(sprite_get("peachbar_bar"), 0, temp_x+34, temp_y - 14, (1+small_sprites)*(tenshi_magic/tenshi_magic_max)*(1-install_time/tenshi_magic), 1+small_sprites, 0, rainbow_color_slow, 1);
        draw_sprite_ext(sprite_get("peachbar_bar"), 1, temp_x+32, temp_y - 14, (1+small_sprites), 1+small_sprites, 0, rainbow_color_slow, 1);
    } 
    draw_sprite_ext(sprite_get("peachbar_peach"), dragon_install, temp_x+36, temp_y - 14, 1+small_sprites, 1+small_sprites, 0, c_white, 1);
} else {
    if(tenshi_magic > 0 and tenshi_magic < tenshi_magic_max/2){
        draw_sprite_ext(sprite_get("peachbar_bar"), 0, temp_x+34, temp_y - 14, (1+small_sprites)*(tenshi_magic/tenshi_magic_max), 1+small_sprites, 0, c_maroon, 1);
        draw_sprite_ext(sprite_get("peachbar_bar"), 1, temp_x+32, temp_y - 14, (1+small_sprites), 1+small_sprites, 0, c_maroon, 1);
        draw_sprite_ext(sprite_get("peachbar_peach"), 0, temp_x+36, temp_y - 14, 1+small_sprites, 1+small_sprites, 0, c_white, 1);
    } else if(tenshi_magic >= tenshi_magic_max/2){
        draw_sprite_ext(sprite_get("peachbar_bar"), 0, temp_x+34, temp_y - 14, (1+small_sprites)*(tenshi_magic/tenshi_magic_max), 1+small_sprites, 0, c_red, 1);
        draw_sprite_ext(sprite_get("peachbar_bar"), 1, temp_x+32, temp_y - 14, (1+small_sprites), 1+small_sprites, 0, c_red, 1);
        draw_sprite_ext(sprite_get("peachbar_peach"), 1, temp_x+36, temp_y - 14, 1+small_sprites, 1+small_sprites, 0, c_white, 1);
        draw_sprite_ext(sprite_get("install_input"), 0, temp_x+14, temp_y - 14, 1, 1, 0, c_white, 1);
    } else {
        draw_sprite_ext(sprite_get("peachbar_peach"), 0, temp_x+36, temp_y - 14, 1+small_sprites, 1+small_sprites, 0, c_white, 1);
    }
}

}
//Muno Phone--------------------------------------------------------------------
user_event(11);