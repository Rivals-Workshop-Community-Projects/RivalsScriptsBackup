// pre-draw
if url == 1877715009{ // Hikaru
    switch (state){
        case PS_ATTACK_GROUND:
            if (attack == AT_TAUNT_2 && counterid == other_player_id && aura && !beast_deity){
                var grov_gearx = 26;
                if spr_dir == 1 grov_gearx = -28;
                var grov_glow = 0;
                if window == 2{
                    draw_sprite_ext(grov_hikaru_tauntglow, grov_glow, x+grov_gearx, y-58, 2,2,0,c_white,min(window_timer/6,1));
                }
                if window == 3{
                    draw_sprite_ext(grov_hikaru_tauntglow, grov_glow, x+grov_gearx, y-58, 2,2,0,c_white,max(1-window_timer/8,0));
                }
            }
            break;
        break;
    }

}