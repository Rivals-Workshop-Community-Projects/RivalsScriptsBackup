if ("real_time" not in self) real_time = 0; //for some reason the timers used in the results screen run twice
else
{
    real_time += 0.5;

    //lord X has a different "win name" and no rank
    if (get_player_color(player) == 16 && get_match_setting(SET_SEASON) == 3 && !get_match_setting(SET_TEAMS))
    {
        if (real_time == 1) winner_name = "so many souls... so little time";
    }
    else
    {
        if (winner_name = "Sonic (TEST) WINS!") winner_name = "Sonic Wins!";

        if (!get_match_setting(SET_TEAMS) && get_match_setting(SET_STOCKS) > 0)
        {
            if (real_time == 0.5)
            {
                stocks = round(get_player_stocks(player)/get_match_setting(SET_STOCKS)*3);
                damage = (get_player_damage(player) < 100);
                rank = stocks*2 - 1 - !damage * (stocks != 1);

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

                var tmp_sync_vars = get_synced_var(player);
                for (var i = 0; i < 2; i++)
                {
                    var shift = (i*4);
                    synced_vars[i] = tmp_sync_vars >> shift & 15;
                }

                switch (synced_vars[0])
                {
                    case 1: sound_play(sound_get("va_en_win" + string(rank))); break;
                    case 2: sound_play(sound_get("va_jp_win" + string(rank))); break;
                }
            }
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