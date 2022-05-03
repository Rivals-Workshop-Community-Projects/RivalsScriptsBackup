//debug_draw.gml

if (drawDebug > 0) {
    draw_debug_text( x, y, "Cycle: " + string(cycle) );
    draw_debug_text( x, y+12, "Old Cycle: " + string(old_cycle) );
    draw_debug_text( x, y+24, "CD: " + string(cooldown) );
    draw_debug_text( x, y+36, "CD on: " + string(cooldownOn) );
    draw_debug_text( x, y+48, "CD cycle: " + string(cooldownCycle) );
    draw_debug_text( x, y+60, "W: " + string(window) );
    draw_debug_text( x, y+72, "WT: " + string(window_timer) );
    draw_debug_text( x, y+84, "Fairy: " + string(fairy) );
    with (asset_get( "obj_article1" )) {
        if (player == other.player) {
            draw_debug_text( other.x, other.y+96, "Distance: " + string(point_distance(x, y, other.x, other.y)) );
            draw_debug_text( other.x, other.y+108, "Fairy dir: " + string(spr_dir) );
        }
    }
}