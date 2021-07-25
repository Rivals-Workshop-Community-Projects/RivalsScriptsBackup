//debug_draw.gml
if (debugon == 1){
	draw_debug_text(x,y,"spindashloop = " + string(spindash_loop) + "/" + string(10));
	draw_debug_text(x,y - 20,"soum = " + string(soumloop));
}
//debug window timer
if (debugwindow == 1){
	draw_debug_text(x,y,"Windowtimer = " + string(window_timer));
	draw_debug_text(x,y - 20,"State = " + string(state));
}	
//debug ichi
if (debugichi == 1){
	draw_debug_text(x,y - 20,"ichigauge = " + string(ichigauge));
}

//draw_debug_text(x,y - 20,"e = " + string(dairloop));

//draw_debug_text(x,y - 20,"y = " + string(y));
//draw_debug_text(x,y - 40,"y = " + string(springy));

//draw_debug_text(x,y - 40,"dairad = " + string(dairad));
//draw_debug_text(x,y - 80,"y = " + string(has_airdodge));

//draw_debug_text(x,y - 80,"y = " + string(has_airdodge));

//draw_debug_text(x,y - 80,"y = " + string(draw_reticle));