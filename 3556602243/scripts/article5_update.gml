//
//print([orig_x, camera_origin_x, view_get_xview()])
if get_gameplay_time() <= 60 {
	camera_origin_x = view_get_xview();
	camera_origin_y = view_get_yview();
}
//print([x, orig_x, camera_origin_x, view_get_xview()])

x = orig_x - (camera_origin_x - view_get_xview()) * para_x;
y = orig_y - (camera_origin_y - view_get_yview()) * para_y;
