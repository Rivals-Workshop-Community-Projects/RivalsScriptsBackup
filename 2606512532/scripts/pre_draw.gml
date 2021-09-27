// pre-draw
shader_start()

//fspec trail
for (var i = 0; i < array_length_1d(fspec_id_array); i++) {
    var fspec_array = fspec_trail_arrays[i];
    if fspec_array[0] != undefined {
        for (var j = 0; j < array_length_1d(fspec_array); j++) {
            var pos = fspec_array[j];
            if is_array(pos) {
                var _x = round(pos[0])
                var _y = round(pos[1])
                var _speed = pos[2]
                var _angle = pos[3]
                var _spr_dir = pos[4]
                //var _alpha = j < 16 ? j/16 : 1;
                //draw_circle_color(_x, _y, 10, c_white, c_white, false)
                if onscreen(_x,_y) {
                    var _index = (trail_length-1+j-trail_index) mod 20;
                    if (j < (array_length_1d(fspec_array)-1) || !echo) draw_sprite_general(sprite_get("fspecial_proj_strong_trail_2"), floor((timer mod 16)/2), _index*15*(20/trail_length), 0, 15*(20/trail_length), 62, _x, _y, _spr_dir * _speed/15, 1, _angle, c_white, c_white, c_white, c_white, 1);
                    //draw_text_transformed(_x, _y - 30, _index, 1, 1, 0)
                }
            }
        }
    }
}

shader_end()

#define onscreen(x, y)
var offset = 50;
if (x > view_get_xview() - offset) && (x < view_get_xview() + view_get_wview() + offset) && (y < view_get_yview() + view_get_hview() + offset) && (y > view_get_yview() - offset) {
	return true;
} else {
	return false;
}