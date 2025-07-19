var dir = point_direction(x,y,player_id.x,player_id.y - (player_id.char_height/2));
var dist = point_distance(x,y,player_id.x,player_id.y - (player_id.char_height/2));

draw_sprite_ext(sprite_get("soul_tether"),get_gameplay_time()*.2,x,y,dist/252,1,dir,player_id.soul_col,.5);

switch(state){
    case 4:
        draw_sprite_ext(sprite_get("soul"), image_index, x, y, spr_dir, 1, 0, c_black, soul_hit_vis);
        break;
    case 5:
        draw_sprite_ext(sprite_get("soul"), image_index, x, y, spr_dir, 1, 0, c_black, .75)
        break;
    case 7:
        draw_sprite_ext(real_sprite[state], image_index, x, y, spr_dir, 1, 0, player_id.soul_col, 1);
        break;
    default:
        draw_sprite_ext(real_sprite[state], image_index, x, y, spr_dir, 1, 0, player_id.soul_col, 1);
        break;
}

//draw_debug_text(x, y + 32, "x: " + string(x));
//draw_debug_text(x, y + 48, "y: " + string(y));