//post-draw
shader_end();
if (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && attack == AT_TAUNT_2 && window == clamp(window, 2, 6) && window != 4{
    draw_sprite_ext(stolen_goods, stolen_goods_idx, x - 20*spr_dir - 12, y - 88 - 4*(window == 2 || window == 5), 2, 2, 0, c_white, 1);
    draw_set_halign(fa_center);
    textDraw(x - 20*spr_dir, y - 92 - 10 - (text_timer/4), "fName", c_white, 12, 1000000000, 1, 1, (60 - text_timer)/40, stolen_name + "!", c_black);
}

for(var e = 0; e < array_length(lwfx_buffer); e++){
    var p = lwfx_buffer[e];
    if p.layer == -1{
        if p.shade shader_start();
        if p.fog gpu_set_fog(1, p.blend, 1, 0);
        draw_sprite_ext(p.sprite, p.frame, p.xpos, p.ypos, 2*p.dir, 2, p.angle, p.blend, p.alpha);
        if p.fog gpu_set_fog(0, p.blend, 1, 0);
        if p.shade shader_end();
    }
}


#define textDraw(x, y, font, color, lineb, linew, scale, outline, alpha, string, outline_c)

draw_set_font(asset_get(font));

if outline{ //outline. doesn't work lol //now it does, you're welcome
    draw_text_ext_transformed_color(x + scale*2, y, string, lineb, linew, scale, scale, 0, outline_c, outline_c, outline_c,outline_c, alpha);
    draw_text_ext_transformed_color(x + scale*2, y + scale*2, string, lineb, linew, scale, scale, 0, outline_c, outline_c, outline_c,outline_c, alpha);
    draw_text_ext_transformed_color(x + scale*2, y - scale*2, string, lineb, linew, scale, scale, 0, outline_c, outline_c, outline_c,outline_c, alpha);
    draw_text_ext_transformed_color(x, y - scale*2, string, lineb, linew, scale, scale, 0, outline_c, outline_c, outline_c,outline_c, alpha);
    draw_text_ext_transformed_color(x - scale*2, y - scale*2, string, lineb, linew, scale, scale, 0, outline_c, outline_c, outline_c,outline_c, alpha);
    draw_text_ext_transformed_color(x - scale*2, y, string, lineb, linew, scale, scale, 0, outline_c, outline_c, outline_c,outline_c, alpha);
    draw_text_ext_transformed_color(x - scale*2, y + scale*2, string, lineb, linew, scale, scale, 0, outline_c, outline_c, outline_c,outline_c, alpha);
    draw_text_ext_transformed_color(x, y +  scale*2, string, lineb, linew, scale, scale, 0, outline_c, outline_c, outline_c,outline_c, alpha);
}
draw_text_ext_transformed_color(x, y, string, lineb, linew, scale, scale, 0, color, color, color, color, alpha);