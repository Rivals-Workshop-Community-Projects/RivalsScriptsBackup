//draw_hud.gml

if ("char_height" not in self) exit;


draw_sprite_ext(sprite_get("hud_pocket"), 0, temp_x + 192, temp_y - 8, 2, 2, 0, c_white, 1);
if (holding_item)
{
    draw_sprite_ext(sprite_get("hud_items"), pocket_item.type, temp_x + 192, temp_y - 8, 2, 2, 0, c_white, 1);
    if (pocket_item.type != spit_item_id) draw_sprite_ext(sprite_get("hud_pocket_crack"), pocket_item.hp, temp_x + 192, temp_y - 8, 2, 2, 0, c_white, 1);
}