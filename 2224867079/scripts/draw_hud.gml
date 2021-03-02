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

user_event(11);