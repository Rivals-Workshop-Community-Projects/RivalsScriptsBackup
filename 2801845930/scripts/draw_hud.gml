// Drawing Hud Stuff

// Debugs

//draw_debug_text( temp_x, temp_y - 85, string( SpamNeoREAL ));

//draw_debug_text( temp_x + 60, temp_y - 85, string( SpamNeo1984 ));

//draw_debug_text( temp_x + 120, temp_y - 85, string( SpamNeoEnemyName ));

//draw_debug_text( temp_x + 120, temp_y - 85, string( CannBoomX ));

//draw_debug_text( temp_x + 180, temp_y - 85, string( CannBoomY ));

// Heat Meter

if (SpamNeoPipisActive == false && SpamNeoPipisCooldown <= 0) {
    shader_start();
    draw_sprite_ext(sprite_get("pipishud"), 0, temp_x + 170, temp_y + 2, 1, 1, 0, -1, 1);
    shader_end();
} else {
    shader_start();
    draw_sprite_ext(sprite_get("pipishud"), 1, temp_x + 170, temp_y + 2, 1, 1, 0, -1, 1);
    shader_end();
}