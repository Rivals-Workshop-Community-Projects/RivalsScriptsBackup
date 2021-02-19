//article2.gml

if (vsp < 0) {vsp = min(vsp+0.2, 0); }

if (vsp > -2.8) {
	image_xscale = 200;
	image_yscale = 1.2;
	if (place_meeting(x, y, asset_get("par_jumpthrough"))) { vsp = -3 };
	image_xscale = plat_xscale;
	image_yscale = 1;

	if (vsp == 0) {
		var plat = instance_create(x, y, "obj_article_platform");//"obj_article_platform"); "obj_article1"); 
		plat.player_id = player_id;
		plat.player = player;
		plat.spr_dir = spr_dir;
		plat.image_xscale = plat_xscale;
		instance_destroy();
	}
}

