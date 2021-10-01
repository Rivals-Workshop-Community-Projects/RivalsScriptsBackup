//draw gauge
var width = 172;
var height = 4;
var origin_x = temp_x + 12;
var origin_y = temp_y - height - 7;


if (cur_card == 1)
{
draw_sprite(sprite_get("card1"),cards,temp_x + 134,temp_y - 118);
}

if (cur_card == 2)
{
draw_sprite(sprite_get("card2"),cards,temp_x + 134,temp_y - 118);
}

if (cur_card == 3)
{
draw_sprite(sprite_get("card3"),cards,temp_x + 134,temp_y - 118);
}

if (cur_card == 4)
{
draw_sprite(sprite_get("card4"),cards,temp_x + 134,temp_y - 118);
}

if (cur_card == 5)
{
draw_sprite(sprite_get("card5"),cards,temp_x + 134,temp_y - 118);
}

if (cur_card == 6)
{
draw_sprite(sprite_get("card6"),cards,temp_x + 134,temp_y - 118);
}

if (cur_card == 7)
{
draw_sprite(sprite_get("card7"),cards,temp_x + 134,temp_y - 118);
}

if (cur_card == 8)
{
draw_sprite(sprite_get("card8"),cards,temp_x + 134,temp_y - 118);
}

if (cur_card == 9)
{
draw_sprite(sprite_get("card9"),cards,temp_x + 134,temp_y - 118);
}

if (cur_card == 10)
{
draw_sprite(sprite_get("card10"),cards,temp_x + 134,temp_y - 118);
}

if (cur_card == 11)
{
draw_sprite(sprite_get("cardace"),cards,temp_x + 134,temp_y - 118);
}

if (cur_card == 12)
{
draw_sprite(sprite_get("cardace2"),cards,temp_x + 134,temp_y - 118);
}

draw_sprite(sprite_get("cards"),cards,temp_x - 10,temp_y - 30);
draw_sprite(sprite_get("card_empty"),cards,temp_x + 160,temp_y - 90);

//draw_debug_text(temp_x+140, temp_y-28, string(string(cards)));

//draw_debug_text(temp_x+140, temp_y-60, string(string(cur_card)));

//draw_debug_text(temp_x+140, temp_y-100, string(string(card)));

//draw_debug_text(temp_x+140, temp_y-140, string(string(invin_timer)));