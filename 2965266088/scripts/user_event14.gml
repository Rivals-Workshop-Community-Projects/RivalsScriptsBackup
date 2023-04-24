//draw_hud.gml

if (practice_darkness && temp_level == 0)
{
    draw_debug_text(temp_x + 10, temp_y - 26 - 48 * has_superspell, "press DOWN + TAUNT for");
    draw_debug_text(temp_x + 10, temp_y - 10 - 48 * has_superspell, "Darkness Orb toggle");
}

shader_start();

//darkness hud
draw_sprite_ext(sprite_get("hud_darkness_cd"), darkness_cd <= 0, temp_x + 188, temp_y - 14, 2, 2, 0, c_white, 1);

//rumia EX hud
if (has_superspell)
{
    draw_sprite_ext(sprite_get("hud_fs_fill"), 0, temp_x + 2, temp_y - 14, 2, 2, 0, hud_frame_col, 0.5);
    
    draw_sprite_ext(
        sprite_get("hud_fs_frame"), (superspell_cur < superspell_max) ? 0 : 1 + (game_time % 8 > 4),
        temp_x, temp_y - 44, 2, 2, 0, c_white, 1
    );

    maskHeader();
    draw_sprite_ext(sprite_get("hud_fs_fill"), 0, temp_x + 2, temp_y - 14, 2, 2, 0, c_black, 1);
    maskMidder();

    draw_sprite_part_ext(
        sprite_get("hud_fs_meter"), 0,
        0, game_time % (128 - 7),
        lerp(0, 1, superspell_cur/superspell_max) * 83, 7,
        temp_x + 4, temp_y - 12, 2, 2, c_white, 1
    );
    if (superspell_cur > 0 && superspell_cur < superspell_max)
    {
        draw_sprite_ext(
            sprite_get("_pixel"), 0,
            temp_x + 4 + lerp(0, 1, superspell_cur/superspell_max) * 166,
            temp_y - 12, 2, 14, 0,
            c_gray, 1
        );
    }
    maskFooter();
    
    draw_sprite_ext(sprite_get("hud_fs_frame_in"), 0, temp_x + 2, temp_y - 14, 2, 2, 0, hud_frame_col, 1);

    //draw_debug_text(temp_x + 2, temp_y - 4, string(superspell_cur));
}

shader_end();


#define maskHeader
{
    //set the mask to take effect on pretty much everything in the room
    //below this function, add the MASK
    gpu_set_blendenable(false);
    gpu_set_colorwriteenable(false,false,false,true);
    draw_set_alpha(0);
    draw_rectangle_color(-200 ,-200 , room_width, room_height, c_white, c_white, c_white, c_white, false);
    draw_set_alpha(1);
}
#define maskMidder
{
    //sets the thing underneath the mask to be drawn
    //below this function, add the TEXTURE
    gpu_set_blendenable(true);
    gpu_set_colorwriteenable(true,true,true,true);
    gpu_set_blendmode_ext(bm_dest_alpha,bm_inv_dest_alpha);
    gpu_set_alphatestenable(true);
}
#define maskFooter
{
    //go back to drawing normally again
    gpu_set_alphatestenable(false);
    gpu_set_blendmode(bm_normal);
    draw_set_alpha(1);
}