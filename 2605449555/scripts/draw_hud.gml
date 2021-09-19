// Drawing Hud Stuff

// Debugs

//draw_debug_text( temp_x, temp_y - 85, string( CannCounterActive ));

//draw_debug_text( temp_x + 30, temp_y - 85, string( super_armor ));

//draw_debug_text( temp_x + 60, temp_y - 85, string( invincible ));

// Heat Meter

if (CannExploded == false) {
    if (HeatLevel <= 9) {
        shader_start();
        draw_sprite(sprite_get("heatmeter"), HeatLevel, temp_x + 80, temp_y + 10);
        shader_end();
    } else {
        shader_start();
        draw_sprite(sprite_get("heatmeter"), HeatGlowAnim, temp_x + 80, temp_y + 10);
    }
} else {
    shader_start();
    draw_sprite(sprite_get("heatmeter"), HeatLowerAnim, temp_x + 80, temp_y + 10);
    shader_end();
}

// Fuse Meter

//draw_sprite(sprite_get("fusemeter"), FuseTimer, temp_x - 4, temp_y - 82);

// NSpecial Meter

shader_start();
draw_sprite(sprite_get("nspecialmeter"), CannNSpcCharge, temp_x + 166, temp_y);
shader_end();