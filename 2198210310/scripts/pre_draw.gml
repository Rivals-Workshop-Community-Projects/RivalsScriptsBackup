// pre-draw

//fspec trail
for (var i = 0; i < array_length_1d(fspec_id_array); i++) {
    var fspec_array = fspec_trail_arrays[i];
    if fspec_trail_arrays[i][0] != undefined {
        for (var j = 0; j < array_length_1d(fspec_array); j++) {
            var pos = fspec_array[j];
            if is_array(pos) {
                var _x = round(pos[0])
                var _y = round(pos[1])
                var _speed = pos[2]
                var _angle = pos[3]
                var _spr_dir = pos[4]
                var _alpha = j < 16 ? j/16 : 1;
                //draw_circle_color(_x, _y, 10, c_white, c_white, false)
                
                //arrow
                draw_sprite_general(sprite_get("fspecial_proj_strong_trail_2"), floor((timer mod 16)/2), j*15, 0, 15, 62, _x, _y, _spr_dir * _speed/15, 1, _angle, c_white, c_white, c_white, c_white, _alpha - 0.2);
                //draw_sprite_ext(sprite_get("fspecial_proj_strong_trail"), 3-floor(j/5), _x, _y, _spr_dir*_speed/18, 1, _angle, c_white, _alpha);
            }
        }
    }
}
