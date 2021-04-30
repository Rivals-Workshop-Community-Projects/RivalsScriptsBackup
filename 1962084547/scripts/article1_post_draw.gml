//article1_post_draw.gml
//this article exists solely to draw sprites behind BG's eggs
for(var i = 0; i < trail_count; i++) {
    var hb = hb_array_id[i];
    if (!instance_exists(hb) || hb_array_state[i] >= 3) continue;
    draw_sprite(spr_fx, hb_array_frame[i], hb.x, hb.y);
}