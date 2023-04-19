//post_draw
if !instance_exists(client_id) exit;

if !get_match_setting(SET_HITBOX_VIS) exit;
//some debug information

if (state == 1) with (client_id)
{
    //hurtbox
    draw_sprite_ext(hurtboxID.sprite_index, hurtboxID.image_index, other.x, other.y, spr_dir, 1, 0, c_white, 0.5);
}


//offset visualizer
draw_cross(x, y, c_red);
var target_x = client_id.x+client_offset_x;
var target_y = client_id.y+client_offset_y;
draw_cross(client_id.x, client_id.y, c_blue);
draw_line_color(client_id.x, client_id.y, target_x, target_y, c_blue, c_blue);
draw_cross(target_x, target_y, c_blue);

draw_line_color(x, y, x-collision_checks.x_displacement, y-collision_checks.y_displacement, c_green, c_green);

//groundedness status
var text = ""
if (collision_checks.on_plat) text += "p"
if (collision_checks.on_solid) text += "s"
if (collision_checks.hit_wall) text += "w"
if (collision_checks.hit_ceiling) text += "c"
draw_debug_text(x + 30, y, text);

#define draw_cross(cross_x, cross_y, cross_color)
{
    draw_line_color(cross_x - 5, cross_y, cross_x+5, cross_y, cross_color, cross_color);
    draw_line_color(cross_x, cross_y - 5, cross_x, cross_y+5, cross_color, cross_color);
}