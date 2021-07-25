image_index += 0.2;

glow = (glow+1) mod 360;

sway = (sway+0.0075) mod 360;

var ssway = cos(sway)*0.3;
var sssss = cos(sway*2)*0.5;
set_bg_data(1, BG_LAYER_AUTOSCROLL_Y, ssway);
set_bg_data(2, BG_LAYER_AUTOSCROLL_Y, ssway);
set_bg_data(3, BG_LAYER_AUTOSCROLL_Y, ssway*-0.5);
set_bg_data(8, BG_LAYER_AUTOSCROLL_Y, ssway*0.5);
set_bg_data(1, BG_LAYER_AUTOSCROLL_X, sssss);
set_bg_data(2, BG_LAYER_AUTOSCROLL_X, sssss);