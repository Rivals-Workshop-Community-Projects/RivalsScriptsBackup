if(introTimer < liteModeTime || (frameTimer > 15 && frameTimer < 60))
{
    textDraw(temp_x , 480, "fName", c_white, 100, 400, fa_left, 1, true, 1, lite ? "Lag BEGONE!" : "Press Taunt for lite mode", false);
}

/*
if (introhud == true){
    draw_sprite(sprite_get("hud_crystals"), 1*3, temp_x - 12, temp_y - 40);
    introhud = false
}
*/
if has_rune("G") {
if (move_cooldown[AT_DSPECIAL] == 0 || move_cooldown[AT_DSPECIAL_2] == 0)
{
   draw_sprite(sprite_get("hud_rb"), 0, temp_x + 178, temp_y - 24);
}

if (move_cooldown[AT_DSPECIAL] > 0 || move_cooldown[AT_DSPECIAL_2] > 0)
{
   draw_sprite(sprite_get("hud_rb"), 1, temp_x + 178, temp_y - 24);
}
}
/*
if (RedMode == true)
{
   draw_sprite(sprite_get("hud_crystals"), 16 + 9*3, temp_x - 12, temp_y - 40);
}
*/

if(introTimer >= liteModeTime)
user_event(11);

//textDraw code by muno
#define textDraw(x1, y1, font, color, lineb, linew, align, scale, outline, alpha, text, array_bool)

draw_set_font(asset_get(font));
draw_set_halign(align);

if outline {
    for (i = -1; i < 2; i++) {
        for (j = -1; j < 2; j++) {
            draw_text_ext_transformed_color(x1 + i * 2, y1 + j * 2, text, lineb, linew, scale, scale, 0, c_black, c_black, c_black, c_black, alpha);
        }
    }
}

if alpha draw_text_ext_transformed_color(x1, y1, text, lineb, linew, scale, scale, 0, color, color, color, color, alpha);

if array_bool return [string_width_ext(text, lineb, linew), string_height_ext(text, lineb, linew)];
else return;