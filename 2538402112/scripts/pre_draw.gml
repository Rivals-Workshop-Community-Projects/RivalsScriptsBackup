// pre-draw

switch (state){
    case PS_ATTACK_GROUND:
        if (attack == AT_TAUNT){
            var grov_gearx = 26;
            if spr_dir == 1 grov_gearx = -28;
            var grov_glow = 0;
            if get_player_color(player) == 14 grov_glow = 1;
            if get_player_color(player) == 15 grov_glow = 2;
            var glow_size = 2;
            if has_rune("O") glow_size = 4.5;
            
            if window == 2{
                draw_sprite_ext(sprite_get("timegearglow"), grov_glow, x+grov_gearx, y-58, glow_size,glow_size,0,c_white,min(window_timer/6,1));
            }
            if window == 3{
                draw_sprite_ext(sprite_get("timegearglow"), grov_glow, x+grov_gearx, y-58, glow_size,glow_size,0,c_white,max(1-window_timer/8,0));
            }
            if window == 4{
                draw_sprite_ext(sprite_get("timegearglow"), grov_glow, x+grov_gearx, y-58, glow_size,glow_size,0,c_white,min((sin((window_timer*pi)/30)*0.4)+0.9,1)); // Hello Desmos
            }
        }
        break;
    break;
}