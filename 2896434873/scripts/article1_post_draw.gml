//draw_debug_text(x,y,"LIT : " + string(dspecial_lit));


if dspecial_lit
{
    draw_sprite_ext(sprite_index,image_index,x,y,spr_dir,image_yscale,image_angle,c_red,0.5 + (0.3*sin(get_gameplay_time() / (10 - (4 * ( dspecial_wait < 60) ) ) )))
}

if get_match_setting( SET_HITBOX_VIS ) draw_sprite_ext(mask_index,0,x,y,1,1,0,c_white,0.5);