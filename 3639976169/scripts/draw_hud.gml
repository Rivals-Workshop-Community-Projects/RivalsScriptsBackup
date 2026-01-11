if (!variable_instance_exists(self, "orb3"))
    exit;
var xPos = temp_x + 20;
var yPos = temp_y - 12;
shader_start();
draw_sprite_ext(orb3.sprite_index, 0, xPos, yPos, 2, 2, 0, c_white, 1);
draw_sprite_ext(orb3.sprite_index, 0, xPos + 25, yPos, 2, 2, 0, c_white, 1);
draw_sprite_ext(orb1.sprite_index, 0, xPos + 50, yPos, 2, 2, 0, c_white, 1);

shader_end();
var time = get_gameplay_time();
for (var i = 0; i < 3; i++)
{
    var offs = 50 - (i * 25);
    if (orb_slots[i] == 1)
        draw_sprite_ext(spr_orb_lightning, time / 6, xPos + offs, yPos, 2, 2, 0, c_white, 1);
    else if (orb_slots[i] == 2)
        draw_sprite_ext(spr_orb_frost, time / 9, xPos + offs, yPos, 2, 2, 0, c_white, 1);    
    else if (orb_slots[i] % 10 == 3)
    {
        draw_sprite_ext(spr_orb_dark, time / 9, xPos + offs, yPos, 2, 2, 0, c_white, 1);
        draw_set_halign(fa_left);
        draw_set_valign(fa_top);
        draw_set_font(asset_get("fName"))
        draw_text_color(xPos + offs, yPos, string(floor(orb_slots[i] / 10)), c_white, c_white, c_white, c_white, 1);
    }
    else if (orb_slots[i] == 4)
        draw_sprite_ext(spr_orb_plasma, time / 9, xPos + offs, yPos, 2, 2, 0, c_white, 1);
}