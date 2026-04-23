status_color = c_white;
jevilx = x;
jevily = y;

if (fade_time = 179){
pirouette_popup = pirouette_selected;
}

 effects[0] = "           ERROR           "
 effects[1] = "           On fire!        "
 effects[2] = "     It was just foley!    "
 effects[3] = "          Slippery!        "
 effects[4] = "         Awkward!          "
 effects[5] = "          Tranquil!        "
 effects[6] = "Nothing but a useless bird!"
 effects[7] = "       Attack Boost!       "
 effects[8] = "          Kaboom!!         "
 effects[9] = "          Ghastly!         "
effects[10] = "         Wormhole!         "
effects[11] = "       A perfect 10!       " 
effects[12] = "            Tiring!        "
effects[13] = "         Swift legs!       "
effects[14] = "       Twisted ankle!      "
effects[15] = "         Full House!       "


if (fade_time >= 1)
{
    textDraw(
                jevilx - 90, 
                (jevily - 120 + (fade_time * 0.1)),
                "fName",
                c_white,
                0,
                1000,
                fa_left,
                1,
                true,
                (fade_time > 60 || fade_time%4 >= 2),
                string(effects[pirouette_popup]),
                false
            )
		}
	
//Flash Effect
if (flash_time > 0){
    gpu_set_fog(1, _col, 0, 1); //sets fog to draw a depth of 0 distance from the camera
    draw_sprite_ext(sprite_index, image_index, x + draw_x, y + draw_y, image_xscale, image_yscale, spr_angle, _col, flash_time); //draw the foggy sprite on top of the sprite
gpu_set_fog(0, c_white, 0, 0); //reset the fog stuff
}
gpu_set_fog(0, c_white, 0, 0);

if attack = 49 && window = 5 && window_timer >= 200{
giant_knife_descent_timer += 1.0
draw_sprite_ext((sprite_get("giant_knife")), 1, x+230, y-550 + giant_knife_descent_timer * 1.25, 12, 12, -20, c_white, 1)
draw_sprite_ext((sprite_get("evil_ass_white_pixel")), 1, 0, 0, 99999, 99999, 0, c_white, giant_knife_descent_timer * 0.005)
shake_camera( 4, 10 )
if window_timer = 200
sound_play(sound_get("snd_rumble"), false, false, 1.0, 1.0)};

if attack = 49 && window = 6 && window_timer >= 0 && giant_knife_descent_timer > 0{
giant_knife_descent_timer -= 5.0
draw_sprite_ext((sprite_get("evil_ass_white_pixel")), 1, 0, 0, 99999, 99999, 0, c_white, giant_knife_descent_timer * 0.005)
}

//functions by muno
#define rectDraw(x1, y1, width, height, color)
{
    draw_rectangle_color(x1, y1, x1 + width, y1 + height, color, color, color, color, false);
}
#define textDraw(x1, y1, font, color, lineb, linew, align, scale, outline, alpha, text, array_bool)
{
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
}