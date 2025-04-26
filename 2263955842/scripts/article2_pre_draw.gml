//article2_pre_draw
// drawing yinyang effect


draw_sprite_ext(sprite_get("small_arrow"), 0, x, y - 30, 1, 1, 0, player_id.arrow_col, 1)

if (player_id.move_cooldown[AT_NSPECIAL_2] > 0){
    draw_sprite_ext(sprite_get("small_arrow"), 0, x, y - 30, 1, 1, 0, c_black, 0.5)
}

// border
/*
var h_bar_off =  (h_bar / 2 - h_bar_draw / 2);

var w_bar_off = (w_bar / 2 - w_bar_draw / 2)
var w_bar_off2 = (w_bar / 2 + w_bar_draw / 2)

var im = step / 5;

//
for (var i = 0; i < h_bar_draw ; i += 32)
{
    draw_sprite_ext(sprite_get("border_h"),im,x_bar + w_bar_off ,y_bar + i + h_bar_off,1,1,0,col,draw_alpha)
    draw_sprite_ext(sprite_get("border_h"),im,x_bar + w_bar_off2,y_bar +  i + 32 + h_bar_off,1,1,180,col,draw_alpha)
}


for (var i = 0; i < w_bar_draw ; i += 16 )
{
    draw_sprite_ext(sprite_get("border_w"),im - 1,x_bar + i + w_bar_off ,y_bar + h_bar_off,1,1,0,col,draw_alpha)
    draw_sprite_ext(sprite_get("border_w"),im - 1,x_bar + i + 16 + w_bar_off ,y_bar + h_bar - h_bar_off ,1,1,180,col,draw_alpha)
}

