draw_sprite_ext(sprite_get("arrow_indi"),image_index,x,y,1,1,0,get_player_hud_color(player),1)

shader_end()
if (state == 1 and state_timer > 250)
{
    gpu_set_fog(true, c_black, 1,0)
    draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,c_white,.35*(glow_timer/glow_int))
    gpu_set_fog(false, c_white,1,0)
}