shader_start()
var percent = min(1,shown_concentration/100);
var offset = 60*percent
var color = gun ? orange_color : c_white;

if depleted color = c_red;

draw_sprite(sprite_get("hud_hotbar_small"), max_ammo-ammo, x - 30, y - 78 - hud_offset);

if (shown_concentration != 0) draw_rectangle_colour(x - 30, y - 78 - hud_offset, x - 30 + offset-1, y - 77 - hud_offset, color,  color, color,   color ,false)


if "reticule_lockedplayer" not in self exit;

if (reticule_state != -1)
{
    draw_sprite_ext(sprite_get( other.reticule_show_steady_aim ?  "preticule" :  "reticule"),other.reticule_frame, floor(other.reticule_position[0]),floor(reticule_position[1]),1,1,0,reticule_show_steady_aim ? c_white : get_player_hud_color(player),1);
}


shader_end()