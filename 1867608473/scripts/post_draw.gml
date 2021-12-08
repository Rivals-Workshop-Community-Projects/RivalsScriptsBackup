// Post Draw
var temp_color = c_white;

// Draws the gauge above the actual HUD
if (!showbaby){
    draw_sprite_ext(sprite_get("littletp"), (floor(tp_gauge/3.34)), x - 20, y + 2.5, 1.25, 1.25, 0, c_white, 0);
} else {
    draw_sprite_ext(sprite_get("littletp"), (floor(tp_gauge/3.34)), x - 20, y + 2.5, 1.25, 1.25, 0, c_white, baby_vis);
    draw_debug_text( x - 10, y + 15, string( tp_gauge ) + "%");
}

//draw_debug_text( x - 10, y + 30, string(stage_id));

if diamondbutbetterkrisbbutbetter || kris_sparkles_active{
    draw_sprite_ext(sprite_get("sparkles"), kris_sparkle_frame, x - 110, y- 130, 2, 2, 0, c_white, 1);
    
}