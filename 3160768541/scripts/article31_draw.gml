

if (init){

var yeah = 1;
if (sequencer.state==1){
	if (sequencer.state_timer < ceil(sequencer.state_end/1.5)){
		image_alpha = 1
	}else{
		image_alpha = 0.8
		//yeah = 0;
	}
		yeah = 0;
}
if (sequencer.state==2){
	var a_tmp = ease_quadOut( 100, 95, sequencer.state_timer, sequencer.state_end )/100
	var b_tmp = ease_quadOut( 0, 100, sequencer.state_timer, sequencer.state_end )/100
	image_alpha = a_tmp
	yeah = b_tmp;
}

	var rw = round(room_width/2)
	var rh = round(room_height/2)
	var cw = view_get_xview()+round(view_get_wview()/2)
	var ch = view_get_yview()+round(view_get_hview()/2)
	var y_off = (sin( get_gameplay_time()*0.02 )*5);
	var grad_off_B = (sin( get_gameplay_time()*1.2 )/50);
	var grad_off = (sin( (get_gameplay_time()+534)*0.01 )/2.5) - grad_off_B;
	
//music_transition_timer
var a_master_tmp = ease_quartOut( 0, 100, sequencer.music_transition_timer, sequencer.music_transition_timer_max )/100

draw_sprite_ext( sprite_get("final_gradient"), 0, rw, (ch*2)+100, 800, 2+grad_off, 0, -1, 1*yeah*a_master_tmp );


var timer_max = 70
var the_timer = get_gameplay_time() % timer_max

var the_x = rw
var the_y = (rh*3)+200

//going up... fading...
var x_tmp = ease_linear( 0, 1536, the_timer, timer_max )
draw_sprite_ext( sprite_get("cloud_aura_b"), 0, the_x-x_tmp, the_y, 3, 6, 0, -1, 0.5*a_master_tmp );

//coming from below...
var x_tmp = ease_linear( -1536, 0, the_timer, timer_max )
draw_sprite_ext( sprite_get("cloud_aura_b"), 0, the_x-x_tmp, the_y, 3, 6, 0, -1, 0.5*a_master_tmp );


var a_waver_tmp = (sin( (get_gameplay_time()*0.04 )*0.5)/2.7)+0.7
//print(string(a_waver_tmp))

draw_sprite_ext( sprite_get("final_uibg_glow"), 0, cw, ch+y_off, 2, 2, 0, -1, (1*yeah)*a_waver_tmp*a_master_tmp );
draw_sprite_ext( sprite_get("final_uibg"), 0, cw+((round(get_gameplay_time())%3==0)?1:0), ch+y_off, 2, 2, 0, -1, (0.95*yeah)/1.5 );
draw_sprite_ext( sprite_get("final_uibg"), 0, cw+((round(get_gameplay_time())%37==0)?-1:0), ch+y_off, 2, 2, 0, -1, ((0.95*yeah)-((round(get_gameplay_time())%5==0)?0:0.2))/1.5 );

if (sequencer.music_timer < sequencer.music_timing){
	var a_fill_tmp = ease_quadIn( 0, 20, sequencer.music_transition_b_timer, sequencer.music_transition_b_timer_max )/100
}else{
	var a_fill_tmp = ease_quadOut( 90, 0, sequencer.music_transition_timer, sequencer.music_transition_timer_max )/100
}

if (sequencer.music_transition_timer>0||sequencer.music_transition_b_timer>0){
draw_sprite_ext( sprite_get("final_fill"), 1, 0, 0, 600, 600, 0, -1, a_fill_tmp );
}

draw_sprite_ext( sprite_get("final_uigrnd_glow"), 0, rw, (rh*2)-56, 2, 2, 0, -1, (1*yeah)*a_waver_tmp*a_master_tmp );
draw_sprite_ext( sprite_get("final_uigrnd"), 0, rw+((round(get_gameplay_time())%3==0)?1:0), (rh*2)-56, 2, 2, 0, -1, (1*yeah)/1.5 );
draw_sprite_ext( sprite_get("final_uigrnd"), 0, rw+((round(get_gameplay_time())%37==0)?1:0), (rh*2)-56, 2, 2, 0, -1, ((1*yeah)-((round(get_gameplay_time())%5==0)?0:0.2))/1.5 );

if (sequencer.special_killeffect>0){
	var tmp_a_kill = ease_cubeOut( 0, 100, sequencer.special_killeffect, sequencer.special_killeffect_max )/100
	draw_sprite_ext( sprite_get("zzz_c"), 0, cw, ch, 50, 50, 0, -1, tmp_a_kill );
}





















}