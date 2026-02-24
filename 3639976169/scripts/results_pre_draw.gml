if (!variable_instance_exists(self, "binary_string"))
{
    binary_string = "10010101110110110010100001010101101010101110101000101100101010011011011000001101101100001101111000";
    offsets = [1929, 3129, 6742, 2488, 3985, 4283, 7538, 288, 2242, 1085, 5522, 8921, 4002, 6204, 3233, 9210, 1177, 2029, 1600, 756];
}
if (!variable_instance_exists(self, "timer"))
    timer = -600;

draw_set_font(asset_get("roaMBLFont"));
draw_set_halign(fa_left);
draw_set_valign(fa_center);

for (var i = 0; i < 20; i++)
{
    var display_val = "";
    var time = floor(((timer + offsets[i]) / 5)) % 120;
    var letter_offset = (offsets[(i + 3) % 20] + time) % 98;
    for (var j = 0; j < 10; j++)
    {
        display_val += string_char_at(binary_string, (j + letter_offset) % 98);
    }
    var col = make_color_rgb(50, 180, 200);
    draw_text_color(-60 + (time * 16), i * 30, display_val, col, col, col, col, 1);
}