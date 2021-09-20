if phone_attacking && attack == AT_DSPECIAL && state_cat == SC_HITSTUN{
	var found = 0;
	with obj_article1 if player_id == other found = 1;
	if !found{
		var a = instance_create(x, y - 80, "obj_article1");
		a.vsp = -5;
		a.fake_image_angle = -360;
	}
}