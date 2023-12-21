// For The String
#region // DEBUG
if player_id.wren_debug{
    draw_debug_text(x + 34, y + 0, "X: " + string(x) + "    Y: " + string(y));
    draw_debug_text(x + 34, y + 16, "HSP: " + string(hsp) + "    VSP: " + string(vsp));
    draw_debug_text(x + 34, y + 32, "State: " + string(state) + "    State Timer: " + string(state_timer));
}
#endregion

#region // String Sprite
var dir = point_direction(x,y+18,player_id.x,player_id.y - (player_id.char_height/2));
var dist = point_distance(x,y+18,player_id.x,player_id.y - (player_id.char_height/2));

draw_sprite_ext(sprite_get("string"),get_gameplay_time()*.2,x,y,dist/256,1,dir,get_player_hud_color(player_id.player),.5);

#endregion