
if (draw_mist_here) {

    with (other_player_id) {

        if (dream_mist != noone) {
            var mist;
            var i;
            var l;
            var tmp_x;
            var tmp_y;

            var all_gone = true;
            for (i = 0; i < 9; i+=1) {
                mist = dream_mist[i];
                if (mist != noone) {
                    if (!instance_exists(mist)) {
                        dream_mist[i] = noone;
                    } else {
                        all_gone = false;
                    }
                }
            }

            if (all_gone) {
                dream_mist = noone;
            } else {

                // White outline
                for (i = 0; i < 9; i+=1) {
                    mist = dream_mist[i];
                    if (mist != noone) {
                        draw_sprite_ext(
                            dream_mist_outline,
                            0, mist.x, mist.y,
                            1.0, 1.0, 0.0,
                            c_white, 1.0);
                    }
                }

                // Black fill
                for (i = 0; i < 9; i+=1) {
                    mist = dream_mist[i];
                    if (mist != noone) {
                        draw_sprite_ext(
                            dream_mist_fill,
                            0, mist.x, mist.y,
                            1.0, 1.0, 0.0,
                            c_white, 1.0);
                    }
                }

                // Background stars
                for (i = 0; i < 9; i+= 1) {
                    mist = dream_mist[i];
                    if (mist != noone) {
                        tmp_x = (view_get_xview() / 8 + mist.x) % 160;
                        tmp_y = (view_get_yview() / 8 + mist.y) % 160;
                        draw_sprite_part_ext(
                            dream_mist_stars1,
                            0, tmp_x, tmp_y, 30, 30,
                            mist.x + 6, mist.y + 6, 1.0, 1.0,
                            c_white, 1.0);
                    }
                }

                // Foreground stars
                for (i = 0; i < 9; i+= 1) {
                    mist = dream_mist[i];
                    if (mist != noone) {
                        tmp_x = (view_get_xview() / 3 + mist.x) % 160;
                        tmp_y = (view_get_yview() / 3 + mist.y) % 160;
                        draw_sprite_part_ext(
                            dream_mist_stars2,
                            floor(mist_timer / 16), tmp_x, tmp_y, 30, 30,
                            mist.x + 6, mist.y + 6, 1.0, 1.0,
                            c_white, 1.0);
                    }
                }
            }
        }
    }

}