//detect if theres another desirae in play
if(player_id.other_desirae && state != 4)
    draw_sprite_ext(sprite_get("arrow_indi"),image_index,x,y,1,1,0,get_player_hud_color(player),1)