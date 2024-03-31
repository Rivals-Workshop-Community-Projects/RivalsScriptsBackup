//pre_draw.gml

shader_end(); //used for rainbow ring shenanigans

//respawn platform
if (state == PS_RESPAWN || respawn_taunt > 0)
{
	if (cur_plat == 3) draw_sprite_ext(sprite_get("plat_rush_back"), game_time * plat_stat[cur_plat][1], x - 36, y - 70, 2, 2, 0, c_white, 1);
	draw_sprite_ext(plat_stat[cur_plat][0], game_time * plat_stat[cur_plat][1], x, y, 2, 2, 0, c_white, 1);
}

shader_start();

//blue tornado dstrong
if (instance_exists(dstrong_tornado_hbox))
{
    draw_sprite_ext(
        tornado_spr,
        dstrong_tornado_hbox.hitbox_timer * 0.5,
        dstrong_tornado_hbox.x,
        dstrong_tornado_hbox.y+44,
        (dstrong_tornado_hbox.image_xscale * dstrong_drawn_size_offset) * dstrong_tornado_hbox.spr_dir,
        1, 0, c_white, lerp(1, 0, dstrong_tornado_hbox.hitbox_timer/dstrong_tornado_hbox.length)
    );
}

//final smash effects
if (fs_blast[4] > 0)
{
    draw_sprite_ext(
        sprite_get("fx_fs_shockwave"),
        0,
        fs_blast[0], fs_blast[1],
        lerp(fs_blast[3], fs_blast[2], fs_blast[4]/fs_blast[5]),
        lerp(fs_blast[3], fs_blast[2], fs_blast[4]/fs_blast[5]),
        0, c_white,
        lerp(0, 2, fs_blast[4]/fs_blast[5])
    );
}

shader_end();

//boost mode afterimages
if (boost_mode || is_super)
{
	var alpha_mult = 0.5;
    //backdrop
    gpu_set_fog(1, make_color_rgb(cur_colors[1 + uses_super_colors * 8][@ 0]/3, cur_colors[1 + uses_super_colors * 8][@ 1]/3, cur_colors[1 + uses_super_colors * 8][@ 2]/3), 0, 1);
    draw_sprite_ext(
		afterimage.spr,
		afterimage.img,
		floor(afterimage.xpos),
		floor(afterimage.ypos),
		2 * afterimage.dir,
		2,
		afterimage.rot,
		c_white,
		0.75 * alpha_mult
	);
    gpu_set_fog(0, c_white, 0, 0);

	gpu_set_blendmode(bm_add);
	shader_start();
	draw_sprite_ext(
		afterimage.spr,
		afterimage.img,
		floor(afterimage.xpos),
		floor(afterimage.ypos),
		2 * afterimage.dir,
		2,
		afterimage.rot,
		make_color_rgb(cur_colors[0 + uses_super_colors * 8][@ 0], cur_colors[0 + uses_super_colors * 8][@ 1], cur_colors[0 + uses_super_colors * 8][@ 2]),
		1 * alpha_mult
	);
    shader_end();
	gpu_set_blendmode(bm_normal);
}

//chaos mask
if (alt_cur == 5 && cur_alpha[1] < 1 && !secret_active)
{
    maskHeader();
    draw_sprite_ext(sprite_index, image_index, x + draw_x, y + draw_y, 2 * spr_dir, 2, spr_angle, c_white, 1);
    maskMidder();
    draw_sprite_tiled(sprite_get("alt_chaos"), game_time * 0.15, x, y + (-game_time / 8));
    maskFooter();
}

//special hitboxes
with (pHitBox) if (player_id == other && attack == 0)
{
	if (hbox_num == 1 && "ring_collect_time" in self) //rings
	{
		if (ring_collect_time[1] > hitbox_timer && ring_player > 0)
		{
			draw_sprite_ext(sprite_get("artc_ring_outline"), image_index, x, y, 2, 2, 0, hud_owner_col, 1);
		}
	}
}

#define maskHeader
{
    //set the mask to take effect on pretty much everything in the room
    //below this function, add the MASK
    gpu_set_blendenable(false);
    gpu_set_colorwriteenable(false,false,false,true);
    draw_set_alpha(0);
    draw_rectangle_color(-200 ,-200 , room_width + 200, room_height + 200, c_white, c_white, c_white, c_white, false);
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