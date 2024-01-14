// For The String
#region // DEBUG
if player_id.wren_debug{
    draw_debug_text(x + 34, y + 0, "X: " + string(x) + "    Y: " + string(y));
    draw_debug_text(x + 34, y + 16, "HSP: " + string(hsp) + "    VSP: " + string(vsp));
    draw_debug_text(x + 34, y + 32, "State: " + string(state) + "    State Timer: " + string(state_timer));
}
#endregion

// Genesis X Skin
if get_player_color(player_id.player) == 26{
    gpu_push_state();
    gpu_set_blendmode(bm_add);
    switch(state){
        case 0:
            draw_sprite_ext(spr_bubble_spawn_gen, image_index, x, y, spr_dir, 1, 0, c_red, 1);
            break;
        case 1:
        case 2:
        case 6:
        case 7:
        case 8:
        case 9:
            draw_sprite_ext(spr_bubble_idle_gen, image_index, x, y, spr_dir, 1, 0, c_red, 1);
            break;
        case 3:
        case 14:
            draw_sprite_ext(spr_bubble_recall_gen, image_index, x, y, spr_dir, 1, 0, c_red, 1);
            break;
        case 4:
            draw_sprite_ext(spr_bubble_pop_gen, image_index, x, y, spr_dir, 1, 0, c_red, 1);
            break;
        case 10:
            draw_sprite_ext(spr_bubble_whirlstart_gen, image_index, x, y, spr_dir, 1, 0, c_red, 1);
            break;
        case 11:
        case 12:
            draw_sprite_ext(spr_bubble_whirl_gen, image_index, x, y, spr_dir, 1, 0, c_red, 1);
            break;
        case 13:
            draw_sprite_ext(spr_bubble_whirlend_gen, image_index, x, y, spr_dir, 1, 0, c_red, 1);
            break;
    }
    gpu_pop_state();
}

#region // String Sprite
var dir = point_direction(x,y+18,player_id.x,player_id.y - (player_id.char_height/2));
var dist = point_distance(x,y+18,player_id.x,player_id.y - (player_id.char_height/2));

draw_sprite_ext(sprite_get("string"),get_gameplay_time()*.2,x,y,dist/256,1,dir,get_player_hud_color(player_id.player),.5);

#endregion