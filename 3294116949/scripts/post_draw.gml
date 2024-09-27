//post-draw
// sparks1 = hit_fx_create( sprite_get( "sparks1" ), 16 );
// sparks2 = hit_fx_create( sprite_get( "sparks2" ), 16 );

/*
draw_debug_text( x -10+30, y - 20,"Lamp bounce: " + string(lamp_bounce));
draw_debug_text( x -10+30, y - 40,"Available lamps: " + string(lamp_number));
*/

if(get_match_setting(SET_HITBOX_VIS) && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && attack == AT_USPECIAL && window == 4){
    draw_set_alpha(.5);
    draw_ellipse_color(x + (60 * spr_dir) - 25, y - 178 - 30, x + (60 * spr_dir) + 25, y - 168 + 30, c_gray, c_gray, false);
    draw_ellipse_color(x + (35 * spr_dir) - 25, y - 118 - 30, x + (35 * spr_dir) + 25, y - 118 + 30, c_gray, c_gray, false);
    draw_ellipse_color(x + (15 * spr_dir) - 20, y - 68 - 30, x + (15 * spr_dir) + 20, y - 68 + 30, c_gray, c_gray, false);
    draw_set_alpha(1);
}