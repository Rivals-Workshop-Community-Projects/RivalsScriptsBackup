//post-draw
// sparks1 = hit_fx_create( sprite_get( "sparks1" ), 16 );
// sparks2 = hit_fx_create( sprite_get( "sparks2" ), 16 );

/*
draw_debug_text( x -10+30, y - 20,"Lamp bounce: " + string(lamp_bounce));
draw_debug_text( x -10+30, y - 40,"Available lamps: " + string(lamp_number));
*/

if(get_match_setting(SET_HITBOX_VIS) && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && attack == AT_USPECIAL && window == 4){
    draw_set_alpha(.5);
    draw_ellipse_color(x + (uspec_grabs[0][0] * spr_dir) - uspec_grabs[0][2], y - uspec_grabs[0][1] - uspec_grabs[0][3], x + (uspec_grabs[0][0] * spr_dir) + uspec_grabs[0][2], y - uspec_grabs[0][1] + uspec_grabs[0][3], c_gray, c_gray, false);
    draw_ellipse_color(x + (uspec_grabs[1][0] * spr_dir) - uspec_grabs[1][2], y - uspec_grabs[1][1] - uspec_grabs[1][3], x + (uspec_grabs[1][0] * spr_dir) + uspec_grabs[1][2], y - uspec_grabs[1][1] + uspec_grabs[1][3], c_gray, c_gray, false);
    draw_ellipse_color(x + (uspec_grabs[2][0] * spr_dir) - uspec_grabs[2][2], y - uspec_grabs[2][1] - uspec_grabs[2][3], x + (uspec_grabs[2][0] * spr_dir) + uspec_grabs[2][2], y - uspec_grabs[2][1] + uspec_grabs[2][3], c_gray, c_gray, false);
    draw_ellipse_color(x + (uspec_grabs[3][0] * spr_dir) - uspec_grabs[3][2], y - uspec_grabs[3][1] - uspec_grabs[3][3], x + (uspec_grabs[3][0] * spr_dir) + uspec_grabs[3][2], y - uspec_grabs[3][1] + uspec_grabs[3][3], c_black, c_black, false);
    draw_set_alpha(1);
}