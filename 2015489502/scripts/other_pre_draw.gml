//wow

//other_pre_draw.gml
if url == CH_ORI {
    if attack == AT_DSPECIAL && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && !has_hit {
        switch (window) {
            case 4:
                if (window_timer >= 58){
                    window = 5;
                    window_timer = 0;
                }
                break;
        }
    }
}



if ("otto_8ball_hitstop_fix" in self && otto_8ball_hitstop_fix){
    otto_8ball_hitstop_fix = false;
    hitstop = clamp(hitstop, 0, otto_8ball_hitstop_amt);
}