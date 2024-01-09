//article1_post_draw.gml
//similarly to a player's post_draw.gml, this script draws under the article's graphics

image_index = img_ind;
if(expand_timer < expand_time){
	draw_sprite_ext(gold_expand_bg_spr, 5*expand_timer/expand_time, x,y, spr_dir*image_xscale*2, 2, image_angle, c_white, 1);
}
draw_sprite_ext(spr_ind, image_index, x, y, spr_dir*image_xscale*2, 2, image_angle, c_white, 1);