if ((state = PS_ATTACK_GROUND || state = PS_ATTACK_AIR) && attack = AT_TAUNT && taunt_hit = false) 
{
    if (window = 1) char_height = 56;
    if (window = 2 && window_timer >= 7) 
    {
        char_height = 104;
        draw_sprite_ext(sprite_get("speech_bubble"), 0, x, y-72, 1, 1, 0, c_white, 1);
    }
    if (window >= 3 && window <= 7 || window = 8 && window_timer <= 7)
    {
        draw_sprite_ext(sprite_get("speech_bubble"), 1, x, y-72, 1, 1, 0, c_white, 1);
        draw_debug_text(x-56,y-120, string(taunt_line1));
        draw_debug_text(x-56,y-104, string(taunt_line2));
        char_height = 112;
    }
    if (window = 8 && window_timer > 7)
    {
    char_height = 96;
    draw_sprite_ext(sprite_get("speech_bubble"), 2, x, y-72, 1, 1, 0, c_white, 1);
    }
}