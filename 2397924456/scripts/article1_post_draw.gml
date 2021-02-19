if player_id.hurtboxID.visible && !sync draw_sprite_ext(mask_index, 0, x, y, 1, 1, 0, c_white, 0.5);



with player_id shader_start();

if walk_opac > 0.05{
    draw_sprite_ext(player_id.spr_legion_halo, exist_timer / 5, x, y, 1, 1, 0, c_white, walk_opac);
}

// var draw_alpha = (legion_health > max_health - health_ratio) ? lerp(1, 0.25, (legion_health - (max_health - health_ratio)) / health_ratio) : 1;
var draw_alpha = image_alpha + (image_alpha == noone) * 5;
var draw_x = x - 41;
var draw_y = y - 56;
var num_frames = 60;
var draw_frame = lerp(num_frames, 0, legion_health / max_health);
draw_frame = min(((max_health - legion_health) / health_ratio) * 2, num_frames - 1);

if player_id.phone_attacking && player_id.attack == AT_DSTRONG switch(floor(player_id.image_index)){
    case 2:
    case 10:
        draw_y -= 56;
        break;
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
        draw_y -= 64;
        break;
}

else if state == PS_ATTACK_AIR && attack == AT_DSTRONG && state_timer > 2 switch(floor(image_index)){
    case 2:
    case 10:
        draw_y -= 56;
        break;
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
        draw_y -= 64;
        break;
}

draw_sprite_ext(player_id.spr_hud_legion_hp, draw_frame, draw_x, draw_y, 1, 1, 0, c_white, draw_alpha);

draw_set_valign(fa_top);

textDraw(draw_x + 50, draw_y - 17, "fName", c_white, 100, 1000, fa_right, 1, 0, draw_alpha, string(ceil(legion_health / health_ratio)));
textDraw(draw_x + 50, draw_y - 17, "fName", player_id.blue_color, 100, 1000, fa_left, 1, 0, draw_alpha, " / " + string(max_health / health_ratio));

with player_id shader_end();



#define textDraw(x1, y1, font, color, lineb, linew, align, scale, outline, alpha, text)

draw_set_font(asset_get(font));
draw_set_halign(align);

if outline {
    for (i = -1; i < 2; i++) {
        for (j = -1; j < 2; j++) {
            draw_text_ext_transformed_color(x1 + i * 2, y1 + j * 2, text, lineb, linew, scale, scale, 0, c_black, c_black, c_black, c_black, alpha);
        }
    }
}

if alpha > 0 draw_text_ext_transformed_color(x1, y1, text, lineb, linew, scale, scale, 0, color, color, color, color, alpha);

return [string_width_ext(text, lineb, linew), string_height_ext(text, lineb, linew)];