// pre-draw

// SHINE
if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) 
    && attack == AT_NSPECIAL_2
    && window == 2)
{
    draw_sprite(sprite_get("shine"), floor(window_timer/2), x, y);
}