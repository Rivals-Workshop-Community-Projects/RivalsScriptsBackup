var temp_color = c_white;
if ( attack == AT_NSPECIAL && window == 4 ){
    draw_sprite_ext(sprite_get("ristararm"), 0, x, y-26, (grabbedx-x), 1, 0, temp_color, 1 );
}
if ( attack == AT_UTHROW && window == 3 ){
    if (spr_dir == -1){
        draw_sprite_ext(sprite_get("ristararm"), 0, x-2, y-20, (grabbedy-y)+20, 1, 270, temp_color, 1 );
    }
    else draw_sprite_ext(sprite_get("ristararm"), 0, x+6, y-20, (grabbedy-y)+20, 1, 270, temp_color, 1 );
}
if ( attack == AT_DTHROW && window == 3 ){
    if (spr_dir == -1){
        draw_sprite_ext(sprite_get("ristararm"), 0, x+2, y-36, (grabbedy-y)-20, 1, 270, temp_color, 1 );
    }
    else draw_sprite_ext(sprite_get("ristararm"), 0, x+2, y-36, (grabbedy-y)-20, 1, 270, temp_color, 1 );
}
if ( attack == AT_NTHROW && window == 3 ){
    if (spr_dir == -1){
        draw_sprite_ext(sprite_get("ristararm"), 0, x-4, y-20, point_distance(x, y, diagx-18, diagy+18), 1.25, 225, temp_color, 1 );
    }
    else draw_sprite_ext(sprite_get("ristararm"), 0, x+10, y-22, point_distance(x, y, diagx+18, diagy+18), 1.25, 315, temp_color, 1 );
}
//draw_sprite_ext( sprite, subimage, x, y, xscale, yscale, rotation, color, alpha )