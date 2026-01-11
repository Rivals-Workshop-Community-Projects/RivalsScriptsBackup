maskHeader();
maskMidder();
maskFooter();
draw_set_alpha(1 - (results_timer-110)/30);
draw_rectangle_color(0, 0, 1000, 600, 0, 0, 0, 0, 0);
draw_set_alpha(1);
if results_timer == clamp(results_timer, 20, 134){
	var img = (results_timer < 100? 0: (results_timer-100)/5);
	var al = (results_timer-20)/60;
	gpu_set_blendenable(bm_add);
	draw_sprite_ext(sprite_get("winrootbg"), img, 0, 0, 2, 2, 0, c_white, al);
	gpu_set_blendenable(bm_normal);
	var t = 0;
	repeat 5{
		maskHeader();
		draw_sprite_ext(sprite_get("winrootmask" + string(t)), img, 0, 0, 2, 2, 0, c_white, al);
		maskMidder();
		gpu_set_blendenable(bm_add);
		draw_sprite_tiled(sprite_get("winroottile"), 0, 0, [-1, .75, -.5, 1, .5][t]*results_timer*(results_timer > 105? 4: 1.5));
		gpu_set_blendenable(bm_normal);
		maskFooter();
		t++;
	}
}


#define maskHeader()

gpu_set_blendenable(false);
gpu_set_colorwriteenable(false,false,false,true);
draw_set_alpha(0);
draw_rectangle_color(0, 0, room_width, room_height, c_white, c_white, c_white, c_white, false);
draw_set_alpha(1);


#define maskMidder()

gpu_set_blendenable(true);
gpu_set_colorwriteenable(true,true,true,true);
gpu_set_blendmode_ext(bm_dest_alpha,bm_inv_dest_alpha);
gpu_set_alphatestenable(true);


#define maskFooter()
gpu_set_alphatestenable(false);
gpu_set_blendmode(bm_normal);
draw_set_alpha(1);
gpu_set_blendenable(1);
gpu_set_colorwriteenable(true,true,true,true);