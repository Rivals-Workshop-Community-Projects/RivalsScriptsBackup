switch (evidence1) {
    case 0:
        draw_sprite(sprite_get("evidence1"), 0, temp_x+55, temp_y-5);
        break;
    case 1:
        draw_sprite(sprite_get("evidence2"), 0, temp_x+55, temp_y-5);
        break;
    case 2:
        draw_sprite(sprite_get("evidence3"), 0, temp_x+55, temp_y-5);
        break;
    case 3:
        draw_sprite(sprite_get("evidence4"), 0, temp_x+55, temp_y-5);
        break;
    case 4:
        draw_sprite(sprite_get("evidence5"), 0, temp_x+55, temp_y-5);
        break;
    case 5:
        draw_sprite(sprite_get("evidence6"), 0, temp_x+55, temp_y-5);
        break;
    case 6:
        draw_sprite(sprite_get("evidence7"), 0, temp_x+55, temp_y-5);
        break;
    case 7:
        draw_sprite(sprite_get("evidence8"), 0, temp_x+55, temp_y-5);
        break;
}
switch (evidence2) {
    case 0:
        draw_sprite(sprite_get("evidence1"), 0, temp_x+95, temp_y-5);
        break;
    case 1:
        draw_sprite(sprite_get("evidence2"), 0, temp_x+95, temp_y-5);
        break;
    case 2:
        draw_sprite(sprite_get("evidence3"), 0, temp_x+95, temp_y-5);
        break;
    case 3:
        draw_sprite(sprite_get("evidence4"), 0, temp_x+95, temp_y-5);
        break;
    case 4:
        draw_sprite(sprite_get("evidence5"), 0, temp_x+95, temp_y-5);
        break;
    case 5:
        draw_sprite(sprite_get("evidence6"), 0, temp_x+95, temp_y-5);
        break;
    case 6:
        draw_sprite(sprite_get("evidence7"), 0, temp_x+95, temp_y-5);
        break;
    case 7:
        draw_sprite(sprite_get("evidence8"), 0, temp_x+95, temp_y-5);
        break;
}
switch (evidence3) {
    case 0:
        draw_sprite(sprite_get("evidence1"), 0, temp_x+135, temp_y-5);
        break;
    case 1:
        draw_sprite(sprite_get("evidence2"), 0, temp_x+135, temp_y-5);
        break;
    case 2:
        draw_sprite(sprite_get("evidence3"), 0, temp_x+135, temp_y-5);
        break;
    case 3:
        draw_sprite(sprite_get("evidence4"), 0, temp_x+135, temp_y-5);
        break;
    case 4:
        draw_sprite(sprite_get("evidence5"), 0, temp_x+135, temp_y-5);
        break;
    case 5:
        draw_sprite(sprite_get("evidence6"), 0, temp_x+135, temp_y-5);
        break;
    case 6:
        draw_sprite(sprite_get("evidence7"), 0, temp_x+135, temp_y-5);
        break;
    case 7:
        draw_sprite(sprite_get("evidence8"), 0, temp_x+135, temp_y-5);
        break;
}

if (state == PS_SPAWN and voice_text == 0)
{
    draw_debug_text( temp_x + 0, temp_y - 40, "Taunt to activate voices");
}

if (move_cooldown[AT_FSPECIAL] == 0)
{
    draw_sprite(sprite_get("hold_icon"), 0, temp_x + 0, temp_y-30);
}
else if (move_cooldown[AT_FSPECIAL] > 0)
{
    draw_sprite(sprite_get("hold_icon"), 1, temp_x + 0, temp_y-30)
}

if (turnabout == 1)
{
    draw_debug_text(temp_x + 170, temp_y - 30, "TBT:");
    draw_debug_text(temp_x + 170, temp_y - 15, string(bout_timer));
}

if (spirit == 1)
{
    draw_sprite_ext(sprite_get("magatama"), 0, temp_x  + 5, temp_y - 50, 1, 1, 0, -1, 1);
}

if (evidence1 == -1 and evidence2 == -1 and evidence3 == -1 and turnabout == 0)
{
    draw_sprite(sprite_get("buttons"), 0, temp_x+45, temp_y-32);
}
else if (evidence2 == -1 and evidence3 == -1 and turnabout == 0)
{
    draw_sprite(sprite_get("buttons"), 0, temp_x+85, temp_y-32);
}
else if (evidence3 == -1 and turnabout == 0)
{
    draw_sprite(sprite_get("buttons"), 0, temp_x+125, temp_y-32);
}