//depth =1000
if (Delete == true){
instance_destroy()
}else{

	vsp += 0.1;

	if (x < view_get_xview()) {
	Delete = true
	}
	if (x > view_get_xview() + view_get_wview()) {
	Delete = true
	}
	if (y > view_get_yview() + view_get_hview()) {
	Delete = true
	}
	if (y < view_get_yview()) {
	Delete = true
	}
}
