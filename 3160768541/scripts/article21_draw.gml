//print_debug("drawing");

//abyss fall thing stage : bg

//var b_tmp = gpu_get_blendmode(); //save blendmode temporarily..
//gpu_set_blendmode(bm_add); //blendmode..


//main part uhh
//main part uhh


//draw_sprite_ext( sprite_get("bg1_copy"), 0, temp_x, temp_y, 3, 3, rotato-round(rotato_max/2), -1, 1 );

//higher

var timer_max = 70
var the_timer = get_gameplay_time() % timer_max

//going up... fading...
var a_tmp = ease_cubeIn( 80, 0, the_timer, timer_max )/100
var y_tmp = 280 + 40 + ease_quadOut( 0, 20, the_timer, timer_max )
var w_tmp = ease_linear( 2700, 3600, the_timer, timer_max )/100
var h_tmp = ease_linear( 130, 100, the_timer, timer_max )/100
draw_sprite_ext( sprite_get("cloud_aura_b"), 0, temp_x, temp_y-y_tmp, w_tmp, h_tmp, 0, c_black, a_tmp );

//coming from below...
var a_tmp = ease_linear( 0, 80, the_timer, timer_max )/100
var y_tmp = 280 + ease_linear( 0, 40, the_timer, timer_max )
var w_tmp = ease_linear( 1900, 2700, the_timer, timer_max )/100
var h_tmp = ease_linear( 140, 130, the_timer, timer_max )/100
draw_sprite_ext( sprite_get("cloud_aura_b"), 0, temp_x, temp_y-y_tmp, w_tmp, h_tmp, 0, c_black, a_tmp );




//high

var timer_max = 80
var the_timer = get_gameplay_time() % timer_max

//going up... fading...
var a_tmp = ease_cubeIn( 90, 0, the_timer, timer_max )/100
var y_tmp = 170 + 90 + ease_quadOut( 0, 40, the_timer, timer_max )
var w_tmp = ease_linear( 1200, 1900, the_timer, timer_max )/100
var h_tmp = ease_linear( 160, 140, the_timer, timer_max )/100
draw_sprite_ext( sprite_get("cloud_aura_b"), 0, temp_x, temp_y-y_tmp, w_tmp, h_tmp, 0, c_gray, a_tmp );

//coming from below...
var a_tmp = ease_linear( 0, 90, the_timer, timer_max )/100
var y_tmp = 170 + ease_linear( 0, 90, the_timer, timer_max )
var w_tmp = ease_linear( 500, 1200, the_timer, timer_max )/100
var h_tmp = ease_linear( 150, 160, the_timer, timer_max )/100
draw_sprite_ext( sprite_get("cloud_aura_b"), 0, temp_x, temp_y-y_tmp, w_tmp, h_tmp, 0, c_gray, a_tmp );




//low

var timer_max = 90
var the_timer = get_gameplay_time() % timer_max

//going up... fading...
var a_tmp = ease_cubeIn( 80, 0, the_timer, timer_max )/100
var y_tmp = 80 + ease_linear( 0, 100, the_timer, timer_max )
var w_tmp = ease_linear( 310, 500, the_timer, timer_max )/100
var h_tmp = ease_linear( 120, 150, the_timer, timer_max )/100
draw_sprite_ext( sprite_get("cloud_aura_b"), 0, temp_x, temp_y-y_tmp, w_tmp, h_tmp, 0, -1, a_tmp );

//coming from below...
var a_tmp = ease_linear( 0, 80, the_timer, timer_max )/100
var y_tmp = ease_linear( 0, 80, the_timer, timer_max )
var w_tmp = ease_linear( 200, 310, the_timer, timer_max )/100
var h_tmp = ease_linear( 80, 120, the_timer, timer_max )/100
draw_sprite_ext( sprite_get("cloud_aura_b"), 0, temp_x, temp_y-y_tmp, w_tmp, h_tmp, 0, -1, a_tmp );







//gpu_set_blendmode(b_tmp); //recover blendmode..






