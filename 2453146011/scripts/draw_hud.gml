if "introTimer" not in self exit;

if(introTimer < liteModeTime)
{
    textDraw(temp_x , 480, "fName", c_white, 100, 400, fa_left, 1, true, 1, lite ? "Lite mode activated!" : "Press Taunt for lite mode", false);
}

shader_start();

// Portal HUD
if(portal_1 != noone)
{
    if(blue_indicator < 3){
        blue_indicator += 0.25;
        draw_sprite_ext(sprite_get("smallport_blue"),blue_indicator,temp_x + 150,486,1,1,0,c_white,1);
    }
    else draw_sprite_ext(sprite_get("smallport_blue"),blue_indicator+(get_gameplay_time()%24 / 6),temp_x + 150,486,1,1,0,c_white,1);
}
else if(blue_indicator > 0)
{
    if(blue_indicator < 7) blue_indicator = 7;
    
    if(blue_indicator < 10) blue_indicator += 0.2;
    draw_sprite_ext(sprite_get("smallport_blue"),blue_indicator,temp_x + 150,486,1,1,0,c_white,1);
    
    if(blue_indicator == 10) blue_indicator = 0;
}

if(portal_2 != noone)
{
    if(red_indicator < 3){
        red_indicator += 0.25;
        draw_sprite_ext(sprite_get("smallport_red"),red_indicator,temp_x + 180,486,1,1,0,c_white,1);
    }
    else draw_sprite_ext(sprite_get("smallport_red"),red_indicator+(get_gameplay_time()%24 / 6),temp_x + 180,486,1,1,0,c_white,1);
}
else if(red_indicator > 0)
{
    if(red_indicator < 7) red_indicator = 7;
    
    if(red_indicator < 10) red_indicator += 0.2;
    draw_sprite_ext(sprite_get("smallport_red"),blue_indicator,temp_x + 180,486,1,1,0,c_white,1);
    
    if(red_indicator == 10) red_indicator = 0;
}

shader_end();

// Muno meme
if(introTimer >= liteModeTime)
user_event(11);

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
