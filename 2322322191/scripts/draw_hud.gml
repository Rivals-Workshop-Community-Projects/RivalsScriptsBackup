//draw hud

draw_sprite(sprite_get("hud_hero"),legend_used,temp_x,temp_y-15);
draw_sprite(sprite_get("hud_ribbon"),ribbon_used,temp_x+30,temp_y-15);
draw_sprite(sprite_get("hud_tea"),tea_used,temp_x+64,temp_y-9);
draw_sprite(sprite_get("hud_sandwich"),sandwich_used,temp_x+104,temp_y-13);
if move_cooldown[AT_FSPECIAL] < 1
{
    draw_sprite(sprite_get("SAVE_hud"),0,temp_x+154,temp_y-11);
}
else
{
    draw_sprite(sprite_get("SAVE_hud"),1,temp_x+154,temp_y-11);
}

if armor_active
{
    draw_sprite(sprite_get("def_buff"),hudspd,temp_x+199,temp_y-13);
}

if buff_active
{
    draw_sprite(sprite_get("atk_buff"),hudspd,temp_x+199,temp_y-13);
}

if speedbuff_active
{
    draw_sprite(sprite_get("spd_buff"),hudspd,temp_x+199,temp_y-13);
}