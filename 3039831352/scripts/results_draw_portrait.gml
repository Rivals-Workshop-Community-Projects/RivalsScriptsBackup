//results_draw_portrait.gml

if ("real_time" not in self)
{
    rank_override = -1;
    with (hit_fx_obj) if ("rank_override" in self && rank_override > -1) other.rank_override = rank_override;

    var tmp_sync_vars = get_synced_var(player);
    for (var i = 0; i < 2; i++)
    {
        var shift = (i*4);
        synced_vars[i] = tmp_sync_vars >> shift & 15;
    }

    real_time = 0; //for some reason the timers used in the results screen run twice
}
else
{
    if (_barsonic_boost_check) //boost mode wind
    {
        var alpha_check = results_timer < 10 ? 1 : white_flash_alpha;
        var alpha_set = clamp(alpha_check * 1.5, 0, 1);
        var boost_off_x = _barsonic_super_check ? -34 : 0;
        var boost_off_y = _barsonic_super_check ? 4 : 44;

        static_colorB = colorB;
        static_colorO = colorO;
        static_colorT = colorT;
        static_colorI = colorI;
        shader_start();
        draw_sprite_ext(sprite_get("port_fx"), _barsonic_super_check, portrait_x + boost_off_x, portrait_y + boost_off_y, 2, 2, 0, merge_color(c_white, c_black, alpha_set), 0.75);
        shader_end();
    }

    real_time += 0.5;

    //lord X has a different "win name" and no rank
    if !(get_player_color(player) == 16 && get_match_setting(SET_SEASON) == 3 && !get_match_setting(SET_TEAMS))
    {
        if (get_match_setting(SET_STOCKS) > 0 || rank_override > -1)
        {
            if (real_time == 0.5)
            {
                if (rank_override <= -1)
                {
                    if (get_match_setting(SET_TEAMS))
                    {
                        team_count = 0;
                        team_stocks = 0;
                        for (var i = 1; i <= 4; i++) if (is_player_on(i) && get_player_team(i) == get_player_team(player))
                        {
                            team_count ++;
                            team_stocks += get_player_stocks(i);
                        }
                        rank = round(team_stocks/(get_match_setting(SET_STOCKS)*team_count)*5);
                    }
                    else
                    {
                        stocks = round(get_player_stocks(player)/get_match_setting(SET_STOCKS)*3);
                        damage = (get_player_damage(player) < 100);
                        rank = stocks*2 - 1 - !damage * (stocks != 1);
                    }
                }
                else rank = rank_override + 1;

                rank_timing = 20;
                rank_offset_time = 220;
                a_player_skipped = false;
            }

            //rank timing check
            rank_cur_time = real_time - rank_offset_time;

            //player skip check
            if (skipped_player != 0 && !a_player_skipped)
            {
                rank_offset_time = real_time;
                a_player_skipped = true;
            }

            //draw rank result
            if (real_time > rank_offset_time)
            {
                draw_sprite_ext(
                    sprite_get("result_rank"), rank - 1, 480, 460,
                    rank_cur_time > rank_timing ? 2 : ease_quartOut(4, 2, floor(rank_cur_time), rank_timing),
                    rank_cur_time > rank_timing ? 2 : ease_quartOut(4, 2, floor(rank_cur_time), rank_timing),
                    rank_cur_time > rank_timing ? 0 : ease_quartOut(-20, 0, floor(rank_cur_time), rank_timing),
                    c_white,
                    rank_cur_time > rank_timing ? 1 : ease_quartOut(0, 1, floor(rank_cur_time), rank_timing)
                );
            }

            //rank sound + voice clip
            if (rank_cur_time == rank_timing-6)
            {
                sound_play(sound_get("sfx_rank"));

                switch (synced_vars[0])
                {
                    case 1: sound_play(sound_get("va_en_win" + string(rank))); break;
                    case 2: sound_play(sound_get("va_jp_win" + string(rank))); break;
                }
            }
        }
    }

    if (alt_cur == 5) //chaos mask
    {
        if (_barsonic_final_color[player][0][0] == get_color_profile_slot_r(alt_cur, 0)) //checks if he isn't super sonic
        {
            var alpha_check = results_timer < 10 ? 1 : white_flash_alpha;
            var alpha_set = clamp(alpha_check * 1.5, 0, 1);

            maskHeader();
            draw_sprite_ext(sprite_get("portrait_ex1"), 0, portrait_x, portrait_y, 2, 2, 0, c_white, (1-alpha_set) * 0.5);
            maskMidder();
            draw_sprite_tiled(sprite_get("alt_chaos"), real_time * 0.15, portrait_x, portrait_y + (-real_time / 8));
            maskFooter();

            static_colorB = colorB;
            static_colorO = colorO;
            static_colorT = colorT;
            static_colorI = colorI;
            shader_start();
            draw_sprite_ext(sprite_get("portrait_ex1-2"), 0, portrait_x, portrait_y, 2, 2, 0, merge_color(c_white, c_black, alpha_set), 1);
            shader_end();
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