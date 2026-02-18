hud_x = temp_x;
hud_y = temp_y;
if state = PS_SPAWN && fspecial_vc = 0{
    textDraw(
temp_x + 6,
temp_y - 35,
"fName",
c_white,
0.2,
6000,
fa_left,
1,
true,
1,
"Press TAUNT to enable Fspec voice",
false
)
}
if attack = AT_BAIR{
draw_sprite_ext(sprite_get("clover_counter"), (nspecial_ammo), temp_x + 160, temp_y - 4, 1, 1, 0, c_white, 1);
    }else{
draw_sprite_ext(sprite_get("diamond_counter"), (nspecial_ammo), temp_x + 160, temp_y - 4, 1, 1, 0, c_white, 1);
    }
if pirouette_selected = 1{
textDraw(
temp_x + 6,
temp_y - 15,
"fName",
c_white,
0.2,
6000,
fa_left,
1,
true,
1,
"Useless Bird",
false
            )
}

if pirouette_selected = 2{
textDraw(
temp_x + 6,
temp_y - 15,
"fName",
c_white,
0.2,
6000,
fa_left,
1,
true,
1,
"Speed +",
false
            )
}

if pirouette_selected = 3{
textDraw(
temp_x + 6,
temp_y - 15,
"fName",
c_white,
0.2,
6000,
fa_left,
1,
true,
1,
"Weight -",
false
            )
}

if pirouette_selected = 4{
textDraw(
temp_x + 6,
temp_y - 15,
"fName",
c_white,
0.2,
6000,
fa_left,
1,
true,
1,
"Extra Jump",
false
            )
}

if pirouette_selected = 5{
textDraw(
temp_x + 6,
temp_y - 15,
"fName",
c_white,
0.2,
6000,
fa_left,
1,
true,
1,
"Jump Height -",
false
            )
}

if pirouette_selected = 6{
textDraw(
temp_x + 6,
temp_y - 15,
"fName",
c_white,
0.2,
6000,
fa_left,
1,
true,
1,
"Defense -",
false
            )
}

if pirouette_selected = 7{
textDraw(
temp_x + 6,
temp_y - 15,
"fName",
c_white,
0.2,
6000,
fa_left,
1,
true,
1,
"Projectile Hitstun +",
false
            )
}


if pirouette_selected = 8{
textDraw(
temp_x + 6,
temp_y - 15,
"fName",
c_white,
0.2,
6000,
fa_left,
1,
true,
1,
"No Effect",
false
            )
}

if pirouette_selected = 9{
textDraw(
temp_x + 6,
temp_y - 15,
"fName",
c_white,
0.2,
6000,
fa_left,
1,
true,
1,
"Normals Speed +",
false
            )
}

if pirouette_selected = 10{
textDraw(
temp_x + 6,
temp_y - 15,
"fName",
c_white,
0.2,
6000,
fa_left,
1,
true,
1,
"Ground Speed -",
false
            )
}

if pirouette_selected = 11{
textDraw(
temp_x + 6,
temp_y - 15,
"fName",
c_white,
0.2,
6000,
fa_left,
1,
true,
1,
"Jump Height +",
false
            )
}

if pirouette_selected = 12{
textDraw(
temp_x + 6,
temp_y - 15,
"fName",
c_white,
0.2,
6000,
fa_left,
1,
true,
1,
"Take Damage",
false
            )
}



//if chaos = 500{
//    raw_sprite_ext(sprite_get("chaos_meter"), (22), temp_x - 25, temp_y - 48, 1, 1, 0, c_white, 1);d
//}else{
//    draw_sprite_ext(sprite_get("chaos_meter"), (floor(chaos/23)), temp_x - 25, temp_y - 48, 1, 1, 0, c_white, 1);
//}
//if chaos >= 299{
//    textDraw(
//                temp_x + 6,
//                temp_y - 15,
//                "fName",
//                c_white,
//                0.2,
//                6000,
//                fa_left,
//                1,
//                true,
//                1,
//                "TAUNT + SPECIAL",
//                false
//            )
//}

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
