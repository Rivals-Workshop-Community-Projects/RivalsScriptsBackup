//debug_draw.gml
//this special draw script will draw on top of the sprites and post_draw.gml anything you put here, it's usually used for debugging
//the commented line below is used to draw debug text right under the player character

//draw_debug_text(x, y, "text = " + string(variable));
if(debug_display){
	draw_debug_text(gs[0], gs[1], string(gs[4]))
	draw_debug_text(gs[0], gs[1]+15, string(gs[5]))
}
// with obj_article1{
// 	draw_circle_color(x,y, 5, c_green, c_green, false)
// }
#define selection_sort_priority(arr)
{
    //basic selection sort alg
    var arr_len = array_length(arr), jmin, store;
    for (var i = 0; i < arr_len-1; i++) {
        jmin = i;
        for (var j = i+1; j < arr_len; j++) {
            if (arr[@j].hit_priority < arr[@jmin].hit_priority) jmin = j;
        }
        if (jmin != i) {
            store = arr[@i];
            arr[@i] = arr[@jmin];
            arr[@jmin] = store;
        }
    }
}


#define textDraw(x, y, font, color, lineb, linew, scale, outline, alpha, string)

draw_set_font(asset_get(argument[2]));

if argument[7]{ //outline. doesn't work lol
    for (i = -1; i < 2; i++){
        for (j = -1; j < 2; j++){
            draw_text_ext_transformed_color(argument[0] + i * 2, argument[1] + j * 2, argument[9], argument[4], argument[5], argument[6], argument[6], 0, c_black, c_black, c_black, c_black, 1);
        }
    }
}

draw_text_ext_transformed_color(argument[0], argument[1], argument[9], argument[4], argument[5], argument[6], argument[6], 0, argument[3], argument[3], argument[3], argument[3], argument[8]);

return string_width_ext(argument[9], argument[4], argument[5]);

