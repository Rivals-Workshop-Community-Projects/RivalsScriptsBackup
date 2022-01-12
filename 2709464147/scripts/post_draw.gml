if ((state == PS_ATTACK_GROUND) && attack == AT_TAUNT && window == 2) {
    var tb_x1 = x - 64;
    var tb_y1 = y - 144;
    
    for (var i = 0; i <= textbox_linenum; i++) {
        draw_sprite(sprite_get("taunt_box"), 0, tb_x1, tb_y1 + 24 + (128 * (i)));
    }
    draw_set_halign(fa_left);
    draw_text_trans_outline(tb_x1, tb_y1, textbox_typetext, 16, -1, 1, 1, 0, c_white, c_black, 1);
    draw_set_halign(fa_center);
}
    
#define draw_text_trans_outline(_x, _y, str, separ, w, xscale, yscale, angl, text_colour, outline_colour, alph)
for (i = - 1; i < 2; i++) for (j = -1; j < 2; j++) draw_text_ext_transformed_color(_x+i*2,_y+j*2,str,separ, w, xscale, yscale, angl, outline_colour, outline_colour, outline_colour, outline_colour, 1);
draw_text_ext_transformed_color(_x,_y,str,separ, w, xscale, yscale, angl, text_colour, text_colour, text_colour, text_colour, 1);
