//
if (walk_sparks == true){
    draw_sprite_ext(sprite_get("vfx_sparks"), walk_sparks_cont/6, x-120*spr_dir, 
    y, spr_dir, 1, 0, c_white, 1);
}

if (dash_sparks == true){
    draw_sprite_ext(sprite_get("vfx_sparks"), dash_sparks_cont/4, x-120*spr_dir, 
    y, spr_dir, 1, 0, c_white, 1);
}

//Intro Stuff
if (james_intro > 0){
    if(james_intro > 30){
        draw_sprite_ext(james_sprite, james_frame, james_x_start, james_y_start, spr_dir * 2, 2, 0, c_white, 1);
    }if(james_intro < 16 and james_y != 0){
        draw_sprite_ext(james_sprite, 1, james_x, james_y, spr_dir * 2, 2, 0, c_white, 1);
    }
}