//post-draw
if item_menu_active == true
{
    draw_sprite(sprite_get("itemGUI"),chosen_item,x,y-87);
    switch (chosen_item)
    {
        case 0:draw_sprite(sprite_get("itemlegend"),legend_used,x,y-87); break;
        case 1:draw_sprite(sprite_get("itemribbon"),ribbon_used,x,y-87); break;
        case 2:draw_sprite(sprite_get("itemtea"),tea_used,x,y-87); break;
        case 3:draw_sprite(sprite_get("itemsandwich"),sandwich_used,x,y-87); break;
    }
}

if (attack == AT_TAUNT && state == PS_ATTACK_GROUND)
{
    draw_sprite(sprite_get("dramaticspr"),0,x,y-85);
}
