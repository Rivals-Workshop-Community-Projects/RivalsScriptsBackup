/*for use in demo
transition_timer++;
if(transition_timer == swap_time){
    with(obj_stage_article_platform){
        if(mode < 4){
            mode++;
        } else if (mode >= 4){
            mode = 1;
        }
        time = 0;
    }
    with(obj_stage_article){
        if(mode < 4){
            mode++;
        } else if (mode >= 4){
            mode = 1;
        }
    }
    transition_timer = 0;
}
*/

//Extra music code
if (get_gameplay_time() < 129 and mus == -1) {
    if(music >= 4){
        music_play_file( "music_loop" + string(music+1) );
    }
}

with(pHitBox){
    if(attack == AT_JAB and orig_player == 5 and hbox_num == 1){
        with(oPlayer){
            if(player = other.player){
                other.x = x + hsp;
                other.y = y - 50 + vsp;
            }
        }
    }
}