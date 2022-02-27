var temp_color = c_white;
if ( attack == AT_NSPECIAL && window == 4 ){
    draw_sprite_ext(sprite_get("ristararm"), 0, x, y-20, (grabbedx-x), 1, 0, temp_color, 1 );
    shader_start();
    draw_sprite_ext(sprite_get("ristarhands"), 0, grabbedx, y-20, spr_dir, 1, 0, temp_color, 1 );
    shader_end();
}
if ( attack == AT_UTHROW && window == 3 ){
    if (spr_dir == -1){
        draw_sprite_ext(sprite_get("ristararm"), 0, x+4, y-20, (grabbedy-y)+20, 1, 270, temp_color, 1 );
    }
    else draw_sprite_ext(sprite_get("ristararm"), 0, x, y-20, (grabbedy-y)+20, 1, 270, temp_color, 1 );
    shader_start();
    draw_sprite_ext(sprite_get("ristarhands"), 2, x+2*spr_dir, grabbedy, spr_dir, 1, 0, temp_color, 1 );
    shader_end();
}
if ( attack == AT_FTHROW && window == 3 ){
    if (spr_dir == -1){
        draw_sprite_ext(sprite_get("ristararm"), 0, x+1, y-20, point_distance(x, y, diagx-18, diagy-18), 1.25, 135, temp_color, 1 );
    }
    else draw_sprite_ext(sprite_get("ristararm"), 0, x-7, y-20, point_distance(x, y, diagx+18, diagy-18), 1.25, 45, temp_color, 1 );
    shader_start();
    draw_sprite_ext(sprite_get("ristarhands"), 1, diagx+22*spr_dir, diagy-34, spr_dir, 1, 0, temp_color, 1 );
    shader_end();
}
if ( attack == AT_NTHROW && window == 3 ){
    if (spr_dir == -1){
        draw_sprite_ext(sprite_get("ristararm"), 0, x+8, y-20, point_distance(x, y, diagx-18, diagy+18), 1.25, 225, temp_color, 1 );
    }
    else draw_sprite_ext(sprite_get("ristararm"), 0, x-2, y-22, point_distance(x, y, diagx+18, diagy+18), 1.25, 315, temp_color, 1 );
    shader_start();
    draw_sprite_ext(sprite_get("ristarhands"), 3, diagx+22*spr_dir, diagy-12, spr_dir, 1, 0, temp_color, 1 );
    shader_end();
}
if ( attack == AT_DTHROW && window == 3 ){
    if (spr_dir == -1){
        draw_sprite_ext(sprite_get("ristararm"), 0, x+8, y-36, (grabbedy-y)-14, 1, 270, temp_color, 1 );
    }
    else draw_sprite_ext(sprite_get("ristararm"), 0, x-4, y-36, (grabbedy-y)-14, 1, 270, temp_color, 1 );
    shader_start();
    draw_sprite_ext(sprite_get("ristarhands"), 4, x-4*spr_dir, grabbedy-50, spr_dir, 1, 0, temp_color, 1 );
    shader_end();
}

//draw_sprite_ext( sprite, subimage, x, y, xscale, yscale, rotation, color, alpha )