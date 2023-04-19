// aaa

switch(attack){
	case AT_NSPECIAL:
		if (hbox_num == 1){
			trailfx_1 = hit_fx_create(sprite_get("wwisp_fx1"), 4*4);
			trailfx_2 = hit_fx_create(sprite_get("wwisp_fx2"), 3*4);
			fx_particles = 2;
		}
	break;
	case AT_USPECIAL:
	    proj_angle += -player_id.hsp * 8;
		fx_particles = 2;
	break;
}