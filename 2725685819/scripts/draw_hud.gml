
shader_start();
if (move_cooldown[AT_NSPECIAL] == 0)
draw_sprite_ext( sprite_get("storm_cd"), 0, temp_x + 180, temp_y-10, 2, 2, 0, c_white, 1 );
else
draw_sprite_ext( sprite_get("storm_cd"), 0, temp_x + 180, temp_y-10, 2, 2, 0, c_dkgray, 1 );
shader_end();

if ("intro_timer" in self){	

if (get_player_color(player) == 6){
    
    if (intro_timer < intro_full) 
    {
        if (!vergil && !sparda)
        draw_debug_text( temp_x, temp_y-36, 
"[ATK]+[TAUNT] for Announcer and Voice!
[PARRY]+[TAUNT] for Announcer only!
");
        else
        draw_debug_text( temp_x, temp_y-16, 
        "I'm Motivated!");

    }
}

if (get_player_color(player) == 7){
    
    if (intro_timer < intro_full) 
    {
        if (!dante && !sparda)
        draw_debug_text( temp_x, temp_y-36, 
"[ATK]+[TAUNT] for Announcer and Voice!
[PARRY]+[TAUNT] for Announcer only!
);")
        else
        draw_debug_text( temp_x, temp_y-16, 
        "Let's go!");

    }
}

if (get_player_color(player) == 9){
    
    if (intro_timer < intro_full) 
    {
        draw_debug_text( temp_x, temp_y-36, 
"you know what you got yourself into
there's no off button"
);
    }
}

}


