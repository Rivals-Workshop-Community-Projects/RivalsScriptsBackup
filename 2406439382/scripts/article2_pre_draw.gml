//article2_pre_draw
// bomb draw



var size = 1 + has_rune("L") * 1

draw_sprite_ext(sprite_get("article_indicator"),step / 12,x,y,size,size,0,col,1)


draw_sprite_ext(sprite_get("bomb"),image_index,x  + x_shake,y,size,size * sided,0,c_white,1)
