//TODO: remove if it's still empty

var line = 0;
var offset = 15;

if !get_match_setting(SET_HITBOX_VIS) exit;
exit;


    var ofx = abs(sprite_xoffset);
    var ofy = abs(sprite_yoffset);
    var bbt = sprite_get_bbox_top(sprite_index);
    var bbl = sprite_get_bbox_left(sprite_index);
    var bbr = sprite_get_bbox_right(sprite_index);
    var bbb = sprite_get_bbox_bottom(sprite_index);

draw_debug_text(x-20, y+(offset*line++), "");
draw_debug_text(x-20, y+(offset*line++), "ofx " + string(ofx));
draw_debug_text(x-20, y+(offset*line++), "ofy " + string(ofy));
draw_debug_text(x-20, y+(offset*line++), "bbt " + string(bbt));
draw_debug_text(x-20, y+(offset*line++), "bbl " + string(bbl));
draw_debug_text(x-20, y+(offset*line++), "bbr " + string(bbr));
draw_debug_text(x-20, y+(offset*line++), "bbb " + string(bbb));

draw_debug_text(x-20, y+(offset*line++), "hsp " + string(hsp));
draw_debug_text(x-20, y+(offset*line++), "vsp " + string(vsp));


//var obj = instance_place( x, y+1, all);
draw_debug_text(x-20, y+(offset*line++), "hsp " + string(hsp));
draw_debug_text(x-20, y+(offset*line++), "state " + get_state_name(state));
draw_debug_text(x-20, y+(offset*line++), "state_timer " + string(state_timer));
draw_debug_text(x-20, y+(offset*line++), "crawl? " + string(msg_crawlintro_timer));
//draw_debug_text(x-20, y+(offset*line++), get_state_name(state));
//draw_debug_text(x-20, y+(offset*line++), "timer " + string(state_timer));
//draw_debug_text(x-20, y+(offset*line++), "window_timer " + string(window_timer));
//draw_debug_text(x-20, y+(offset*line++), "prev_dir " + string(at_prev_dir_buffer));