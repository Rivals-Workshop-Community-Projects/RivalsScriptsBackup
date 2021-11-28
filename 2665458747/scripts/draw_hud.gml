//temp_x, temp_y are the anchors for the top left coordinates for the hud

if ("croagberry" in self) && ("croagbelchcharged" in self)
{
    if croagbelchcharged
    {
        draw_sprite(sprite_get("hudicons"), croagberry, temp_x+180, temp_y-26);
    }
}

if ("croagstance" in self)
{
switch (croagstance)
{
    case 1://Toxic Stance
    {
        draw_sprite(sprite_get("hudicons"), 4, temp_x+64, temp_y+6);
    }break;
    
    case 2://Punish Stance
    {
        draw_sprite(sprite_get("hudicons"), 5, temp_x+54, temp_y);
    }break;
}
}