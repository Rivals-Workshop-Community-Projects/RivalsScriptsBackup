// afterimage
init_shader();
set_character_color_slot( 7, color_get_red(get_player_hud_color(player)), color_get_green(get_player_hud_color(player)), color_get_blue(get_player_hud_color(player))); //Table
set_article_color_slot( 7, color_get_red(get_player_hud_color(player)), color_get_green(get_player_hud_color(player)), color_get_blue(get_player_hud_color(player))); //Table

var col_R = get_color_profile_slot_r( get_player_color(player), 2);
var col_G = get_color_profile_slot_g( get_player_color(player), 2);
var col_B = get_color_profile_slot_b( get_player_color(player), 2);

var col_final = make_color_rgb(floor(col_R*1.5), floor(col_G*1.5), floor(col_B*1.5));

shader_start();
if(attack == AT_FSPECIAL_AIR)
{
    if(window == 3 && window_timer < 9 && !free)
        draw_y = 14;
}
for (var i = 0; i < afterImageMax; ++i) if (afterImage[i] != -1 && afterImage[i].alpha > 0 && draw_indicator)
{
    gpu_set_blendmode(bm_add);
    draw_sprite_ext(afterImage[i].sprite_index, afterImage[i].image_index, afterImage[i].x, afterImage[i].y, afterImage[i].spr_dir, 1, 0, col_final, afterImage[i].alpha/20);
    gpu_set_blendmode(bm_normal);
}

if (state == PS_RESPAWN || state == PS_ATTACK_GROUND && attack == AT_TAUNT && initial_invince == 1)
    draw_sprite(sprite_get("plat_back"), 0, x,y);
shader_end();
