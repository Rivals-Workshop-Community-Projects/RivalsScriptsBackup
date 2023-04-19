if "ollie_bar_shown_amount" not in self exit;

shader_start();
draw_sprite(sprite_get("rail_hud"), move_cooldown[AT_NSPECIAL] == 0, temp_x+192, temp_y)
var amount = min(ollie_bar_shown_amount / ollie_levelclear_threshold, 1)


draw_sprite(sprite_get("bar"),0,temp_x+4,temp_y-16)
draw_debug_text(temp_x+12,temp_y-48,string(ollie_bar_current_level == ollie_bar_max_level ? "MAX" : ollie_bar_current_level));
if (amount != 0)
{
    draw_sprite_part(sprite_get("bar_overlay"),0,0,0,amount*sprite_get_width(sprite_get("bar_overlay")),sprite_get_height(sprite_get("bar_overlay")), temp_x+8,temp_y-20)
    
    //draw_rectangle_color(temp_x+32,temp_y-6,temp_x+32+(117*amount),temp_y-14,c_white,c_white,c_white,c_white,false)
}
// var string_to_show = "";
// if array_length(ollie_move_combo_array) == 0
// {
//     string_to_show = "NONE";
// }
// else
// {
//     for (var i = 0; i < array_length(ollie_move_combo_array); i++)
//     {
//         var appendstr = "";
//         switch (ollie_move_combo_array[i])
//         {
//             case AT_FSTRONG:
//                 appendstr = "FSTRONG"
//             break;
//             case AT_DSTRONG:
//                 appendstr = "DSTRONG"
//             break;
//             case AT_USTRONG:
//                 appendstr = "USTRONG"
//             break;
//             case AT_NAIR:
//                 appendstr = "NAIR"
//             break;
//             case AT_FAIR:
//                 appendstr = "FAIR"
//             break;
//             case AT_DAIR:
//                 appendstr = "DAIR"
//             break;
//             case AT_JAB:
//                 appendstr = "JAB"
//             break;
//             case AT_FSPECIAL:
//                 appendstr = "FSPECIAL"
//             break;
//             case AT_DATTACK:
//                 appendstr = "DATTACK"
//             break;
//             default:
//                 appendstr = string(ollie_move_combo_array[i]);
//             break;
//         }
//         string_to_show += appendstr;
//         if i != array_length(ollie_move_combo_array) - 1
//         {
//             string_to_show += ", "
//         }
//     }
// }
// draw_debug_text(temp_x-8,temp_y-40,"COMBO ::: " + string_to_show);
shader_end();

var x_off, y_off;
x_off = 100;
y_off = -46;

if ollie_display_end_combo_value != -1
{
    draw_sprite_ext(sprite_get("ollie_streak"), ollie_display_end_combo_value, temp_x+ x_off,temp_y + y_off + ollie_display_end_combo_ypos, 1, 1, 0, -1, (60-ollie_display_end_timer) / 60); 
    if (ollie_display_end_timer < 20)
    {
        gpu_push_state()
        gpu_set_fog(1,c_white,1,1)
        gpu_set_blendmode(bm_add)
        draw_sprite_ext(sprite_get("ollie_streak"), ollie_display_end_combo_value, temp_x+ x_off,temp_y + y_off + ollie_display_end_combo_ypos, 1, 1, 0, -1,  ((19-ollie_display_end_timer) / 19) - 0.2); 
        gpu_pop_state()
    }
    
}

if array_length(ollie_move_combo_array) > 0 
{
    var last_img = min(array_length(ollie_move_combo_array), sprite_get_number(sprite_get("ollie_streak")))-1;
    draw_sprite_ext(sprite_get("ollie_streak"), last_img, temp_x+ x_off + ollie_display_shake_pos[0],temp_y + y_off + ollie_display_shake_pos[1], 1, 1, 0, -1, 1); 
}