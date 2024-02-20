//print_debug("drawing");

//abyss fall thing stage : bg

//var b_tmp = gpu_get_blendmode(); //save blendmode temporarily..
//gpu_set_blendmode(bm_add); //blendmode..


//main part uhh
//main part uhh


//draw_sprite_ext( sprite_get("bg1_copy"), 0, temp_x, temp_y, 3, 3, rotato-round(rotato_max/2), -1, 1 );




//SUN

var timer_max = 120
var the_timer = get_gameplay_time() % (timer_max*0.95)

var rotato_max = -8
var rotato = ease_linear( 0, rotato_max, the_timer, timer_max )

var y_off = 120

//fading...
var a_tmp = ease_cubeIn( 100, 0, the_timer, timer_max )/100
draw_sprite_ext( sprite_get("sun"), 0, temp_x, temp_y+y_off, 2, 2, rotato, -1, a_tmp );

//appear...
var a_tmp = ease_linear( 0, 100, the_timer, timer_max )/100
draw_sprite_ext( sprite_get("sun"), 0, temp_x, temp_y+y_off, 2, 2, rotato-rotato_max, -1, a_tmp );







//gpu_set_blendmode(b_tmp); //recover blendmode..






