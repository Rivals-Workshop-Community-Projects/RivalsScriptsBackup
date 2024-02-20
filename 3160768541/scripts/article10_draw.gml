//i think this is rocks

var amplify = 30
var off_y_a = (sin( (get_gameplay_time()+10)*0.009 )*amplify)
var off_y_b = (sin( (get_gameplay_time()+50)*0.009 )*amplify)
var off_y_c = (sin( (get_gameplay_time()+70)*0.009 )*amplify)

//print(string(off_y_c))

draw_sprite_ext( sprite_get("rocks"), 0, temp_x, temp_y+off_y_a, 2, 2, 0, -1, 1 );
draw_sprite_ext( sprite_get("rocks"), 1, temp_x, temp_y+off_y_b, 2, 2, 0, -1, 1 );
draw_sprite_ext( sprite_get("rocks"), 2, temp_x, temp_y+off_y_c, 2, 2, 0, -1, 1 );