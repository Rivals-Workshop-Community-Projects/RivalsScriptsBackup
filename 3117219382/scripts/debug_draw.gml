//debug_draw.gml
//this special draw script will draw on top of the sprites and post_draw.gml anything you put here, it's usually used for debugging
//the commented line below is used to draw debug text right under the player character

//draw_debug_text(x, y, "text = " + string(variable));
if(hbox_view){
	
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