//post-draw

if (attack == AT_NSPECIAL && bombEffect == 0 && window == 1 && (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR))
{
    
    if (lastEffect != -3)
        draw_sprite(sprite_get("commandselectL"), 0, x-32, y-32);
    else
        draw_sprite(sprite_get("commandselectLgrey"), 0, x-32, y-32);
        
    if (lastEffect != 11)
        draw_sprite(sprite_get("commandselectR"), 0, x+32, y-32);
    else
        draw_sprite(sprite_get("commandselectRgrey"), 0, x+32, y-32);
        
    if (lastEffect != -1)
        draw_sprite(sprite_get("commandselectD"), 0, x, y-0);
    else
        draw_sprite(sprite_get("commandselectDgrey"), 0, x, y-0);
        
    if (lastEffect != -2)
        draw_sprite(sprite_get("commandselectU"), 0, x, y-64);
    else
        draw_sprite(sprite_get("commandselectUgrey"), 0, x, y-64);
}
else if (attack == AT_NSPECIAL && window == 1 && (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR))
{
    
    if (bombEffect == -3)
        draw_sprite(sprite_get("commandselectL"), 0, x-32, y-32);
    if (bombEffect == 11)
        draw_sprite(sprite_get("commandselectR"), 0, x+32, y-32);
    if (bombEffect == -1)
        draw_sprite(sprite_get("commandselectD"), 0, x, y-0);
    if (bombEffect == -2)
        draw_sprite(sprite_get("commandselectU"), 0, x, y-64);
}