
switch(state){
    case PS_WRAPPED:
    if (spr_dir = -1){
    draw_sprite_pos(sprite_get("dspecialrope"), -1, grabbedplayer.x - (8 * spr_dir), grabbedplayer.y, grabbedplayer.x + (8 * spr_dir), grabbedplayer.y, x - 16, y - 24, x - 12, y - 24, 1);
    }
    if (spr_dir = 1){    
    draw_sprite_pos(sprite_get("dspecialrope"), -1, grabbedplayer.x - (8 * spr_dir), grabbedplayer.y, grabbedplayer.x + (8 * spr_dir), grabbedplayer.y, x + 12 , y - 24, x + 0, y - 24, 1);    
    }
    draw_sprite_ext(sprite_get("dspecialropeend"), -1, grabbedplayer.x, grabbedplayer.y - 38, spr_dir, 1, 0, c_white, 1 );
        break;     
}