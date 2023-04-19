//Big Card (tm)
draw_sprite_ext(spr_index, img_index, round(x), round(y + draw_y), spr_dir, 1, 0, c_white, 1);

#define draw_outline(_spr, _img, _x, _y, _xscale, _yscale, _rot, _alpha, _outline_col, _outline_thickness)
for (var ix = -_outline_thickness; ix <= _outline_thickness; ix += _outline_thickness) {  
     for (var iy = -_outline_thickness; iy <= _outline_thickness; iy += _outline_thickness) {  
        gpu_set_fog(1, _outline_col, 0, 0);
            draw_sprite_ext(_spr,_img,_x + ix,_y + iy,_xscale,_yscale,_rot,_outline_col,_alpha);
        gpu_set_fog(0, 0, 0, 0);
     }
}