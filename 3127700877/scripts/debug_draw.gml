// debug_draw.gml
// https://rivalslib.com/workshop_guide/programming/reference/scripts/animation_scripts.html#debug-draw-gml
// Meant for development, not final characters.
// Drawn in front of everything else.

if(has_rune("M")){
    shader_start();
    var x_anchor = view_get_xview() + 150;
    var y_anchor = view_get_yview() + 150;
    var alpha = .4;
    
    draw_sprite_ext(sprite_get("smog_tile"), get_gameplay_time()/8, x_anchor, y_anchor, 1, 1, 0, c_white, alpha);
    draw_sprite_ext(sprite_get("smog_tile"), get_gameplay_time()/8, x_anchor + 300, y_anchor, -1, 1, 0, c_white, alpha);
    draw_sprite_ext(sprite_get("smog_tile"), get_gameplay_time()/8, x_anchor + 600, y_anchor, 1, 1, 0, c_white, alpha);
    draw_sprite_ext(sprite_get("smog_tile"), get_gameplay_time()/8, x_anchor + 900, y_anchor, -1, 1, 0, c_white, alpha);
    
    draw_sprite_ext(sprite_get("smog_tile"), get_gameplay_time()/8, x_anchor, y_anchor + 300, 1, -1, 0, c_white, alpha);
    draw_sprite_ext(sprite_get("smog_tile"), get_gameplay_time()/8, x_anchor + 300, y_anchor + 300, -1, -1, 0, c_white, alpha);
    draw_sprite_ext(sprite_get("smog_tile"), get_gameplay_time()/8, x_anchor + 600, y_anchor + 300, 1, -1, 0, c_white, alpha);
    draw_sprite_ext(sprite_get("smog_tile"), get_gameplay_time()/8, x_anchor + 900, y_anchor + 300, -1, -1, 0, c_white, alpha);
    shader_end();
}