//POST DRAW



shader_start();


if (attack == AT_USPECIAL && (window == 2 || window == 3) && chargeSpent){
    draw_sprite_ext(tornado, floor(tornadoAnimTimer), (x + 48 + tornadoXposition*-1), y-64, spr_dir, 1, 0 , c_white, 1);
}

if (attack == AT_DSPECIAL && window == 1 && special_down && dspecialcharge < 16 && window_timer < 10 && window_timer > 4){
    draw_sprite_ext(reticle, floor(reticleAnimTimer), x+(dspecialcharge*8+64)*spr_dir, y-40, spr_dir, 1, 0 , c_white, 1);
}



meterDraw(x,y-88, 48, 6, meter_color, chargeCounter/240, 1,1,1);

#define rectDraw(left, top, width, height, color)

draw_rectangle_color(left, top, left + width - 1, top + height - 1, color, color, color, color, false);

#define meterDraw(center, top, width, height, color, amount, alpha, alpha2, border)

var left = center - width * 0.5;

draw_set_alpha(alpha);

rectDraw(left, top, width, height, c_navy);
rectDraw(left + 2, top + 2, width - 4, height - 4, make_color_rgb(60, 60, 60));
if border rectDraw(left + 2, top + 2, min(((width - 4) * amount / 2) * 2 + 2, width - 4), height - 4, c_white);

draw_set_alpha(alpha * alpha2);

rectDraw(left + 2, top + 2, ((width - 4) * amount / 2) * 2, height - 4, color);

draw_set_alpha(1);

shader_end();