//print("phasetime: "+string(phasetime)+" | pausetime: "+string(pausetime));
if (pausetime==0){
	
	phasetime++;
	
	var ph_a_x = get_marker_x(1); var ph_a_y = get_marker_y(1);
	var ph_b_x = get_marker_x(2); var ph_b_y = get_marker_y(2);
	var ph_c_x = get_marker_x(3); var ph_c_y = get_marker_y(3);
	
	
	if (phase == 1){
		x = ease_linear( ph_a_x, ph_b_x, phasetime, phasedur );
		y = ease_linear( ph_a_y, ph_b_y, phasetime, phasedur );
	}
	if (phase == 2){
		x = ease_linear( ph_b_x, ph_c_x, phasetime, phasedur );
		y = ease_linear( ph_b_y, ph_c_y, phasetime, phasedur );
	}
	if (phase == 3){
		x = ease_linear( ph_c_x, ph_b_x, phasetime, phasedur );
		y = ease_linear( ph_c_y, ph_b_y, phasetime, phasedur );
	}
	if (phasetime>=phasedur){
		phasetime = 0;
		pausetime = pausedur;
		if (phase == 1){ phase = 2 } else
		if (phase == 2){ phase = 3 } else
		if (phase == 3){ phase = 2 }
	}else{phasetime++;}

}else{//if paused
	//do nothing? i guess?
	pausetime--;
}