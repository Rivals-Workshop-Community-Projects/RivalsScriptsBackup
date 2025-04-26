/*draw_debug_text(30, 180,"STATE_NUMBER: " + string(state));
draw_debug_text(30, 200,"AIRBORNE: " + string(free));
*/
/*
draw_debug_text(30, 260,"USPEC_USES: " + string(uspec_uses));
draw_debug_text(30, 280,"CAN_USPEC: " + string(can_uspec));
draw_debug_text(30, 300,"WINDOW: " + string(window));
draw_debug_text(30, 320,"TIMER: " + string(window_timer));

*/
/*draw_debug_text(30,240,"WILL_CHARGE:" + string(will_charge));
draw_debug_text(30, 260,"WILL_LEVEL:" + string(will_lvl));
draw_debug_text(30, 220,"Cancel Window:" + string(will_cancel));
draw_debug_text(30, 200,"Will_Cancel?" + string(can_special));
*/

/*draw_debug_text(30, 280,"sprite_index:" + string(sprite_index));
draw_debug_text(30, 300,"image_index:" + string(image_index));
*/

if("hit_timer" not in self){
    exit;
}
// draw_debug_text(30, 320,"Hit Lockout:" + string(hit_timer));


// draw_debug_text(30, 260,"ATTACK: " + string(attack));
// draw_debug_text(30, 280,"CAN WALL JUMP: " + string(can_wall_jump));
// draw_debug_text(30, 300,"WINDOW: " + string(window));
// draw_debug_text(30, 320,"TIMER: " + string(window_timer));

// draw_debug_text(30, 320,"Uspec Uses: " + string(uspec_uses));


shader_start();
//Location of HUD element relative to main HUD.
var _hud_x = 34;
var _hud_y = -75;
//Location of bar relative to HUD element.
var _bar_offset_x = 21;
var _bar_offset_y = 60;

draw_sprite_stretched_ext(sprite_get("bar_meter"), 1, temp_x + _hud_x + _bar_offset_x, temp_y + _hud_y + _bar_offset_y,
                          (will_charge/will_max) * 105, 8, -1, 1);

if (will_lvl < 1) {
    draw_sprite(sprite_get("bar_none"), hud_frame, temp_x + _hud_x, temp_y + _hud_y);
}else if (will_lvl == 1){
    draw_sprite(sprite_get("bar_half"), hud_frame, temp_x + _hud_x, temp_y + _hud_y);
}else if (will_lvl == 2){
    draw_sprite(sprite_get("bar_full"), hud_frame, temp_x + _hud_x, temp_y + _hud_y);
}
shader_end();