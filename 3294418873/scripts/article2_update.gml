//Shadow update
if(shadow_grow == true){
	//When the shadow should appear
	if(image_xscale < 2){
		image_xscale += scale_rate;
		image_yscale += scale_rate;
		image_alpha += scale_rate;
		//print("growing")
	}
	desty += max((get_marker_y(3)-y)*0.08, -1);

} else {
	if(image_xscale > 0){
		image_xscale -= scale_rate;
		image_yscale -= scale_rate;
		image_alpha -= scale_rate;
		//print("shrinking")
	} else {
		desty += min((get_marker_y(5)-y)*0.06, 1);
	}
}
//print(y)
vsp = floor(desty-y);