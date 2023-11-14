/*
with (asset_get("oPlayer")){
    draw_debug_text( x, y - 150, "In range? " + string( in_daruma_range ));
    if (hit_player_obj != -4){
        draw_debug_text( x, y - 120, "hit_player_obj player: " + string( hit_player_obj ));
    }
    draw_debug_text( x, y - 100, "has_hit_player: " + string( has_hit_player ));
    draw_debug_text( x, y - 80, "has_hit: " + string( has_hit ));
}

with (asset_get("pHitBox")){
    draw_debug_text( x, y - 30, "Sent by: " + string( hbox_group ));
}

draw_debug_text( x, y - 150, "NSPECIAL angle: " + string( nspec_dir ));
*/