//pre-draw
switch (state){
    case PS_ATTACK_GROUND:
        if (attack == AT_TAUNT){
            var grov_gearx = (27*-spr_dir)-1;
            var glow_color = /*#*/$60f060;
            if get_player_color(player) == 12 glow_color = /*#*/$9ae2d3;
            if get_player_color(player) == 13 glow_color = /*#*/$f06cb9;
            
            if window == 2 draw_sprite_ext(sprite_get("timegearglow"),0,x+grov_gearx,y-58,2,2,0,glow_color,window_timer/6);
            if window == 3 draw_sprite_ext(sprite_get("timegearglow"),0,x+grov_gearx,y-58,2,2,0,glow_color,1-window_timer/8);
            if window == 4 draw_sprite_ext(sprite_get("timegearglow"),0,x+grov_gearx,y-58,2,2,0,glow_color,(sin((window_timer*pi)/30)*0.4)+1); //help
        }
        break;
    break;
}