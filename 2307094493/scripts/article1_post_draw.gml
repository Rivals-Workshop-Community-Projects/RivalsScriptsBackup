

// //Draw electric field effect over charged acorn.
// if (state == 1 && charge != 0) {
//     var anim_speed = 1/5;
//     var anim_length = 7;
    
//     switch (charge) {
//         case -1:
//             draw_sprite(sprite_get("AirCharge(-)"), floor(state_timer * anim_speed) mod anim_length, x-4, y+36);
//             draw_circle_color(x, y, deadzone_radius, c_yellow, c_yellow, true);  //Debug line that shows deadzone.
//             break;
//         case 1:
//             draw_sprite(sprite_get("AirCharge(+)"), floor(state_timer * anim_speed) mod anim_length, x-4, y+36);
//             draw_circle_color(x, y, deadzone_radius, c_yellow, c_yellow, true);  //Debug line that shows deadzone.
//             break;
//     }
// }

//Draw the acorn.
var freq = 3;
var amp = 2;
var oscilate = amp * dsin(freq * get_gameplay_time());

draw_sprite_ext(sprite_get("acorn"), 0, x, y+oscilate, spr_dir, 1, 0, c_white, 1);
// print_debug("drawing acorn");