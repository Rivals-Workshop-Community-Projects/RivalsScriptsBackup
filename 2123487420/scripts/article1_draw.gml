//

var post_spr = 0;

post_spr = sprite_get(`failsafe_${drawing+1}`);

if instance_exists(post_target) {
	if "miiverse_post" in post_target {
		post_spr = post_target.miiverse_post;
	}else{
		switch(real(post_target.url)){
			case 2: //zetter
				post_spr = sprite_get("miiverse_post_zetter");
				break;
			case 3: //orcane
				post_spr = sprite_get("miiverse_post_orcane");
				break;
			case 4: //wrastor
				post_spr = sprite_get("miiverse_post_wrastor");
				break;
			case 5: //kragg
				post_spr = sprite_get("miiverse_post_kragg");
				break;
			case 6: //fors
				post_spr = sprite_get("miiverse_post_forsburn");
				break;
			case 7: //maypul
				post_spr = sprite_get("miiverse_post_maypul");
				break;
			case 8: //absa
				post_spr = sprite_get("miiverse_post_absa");
				break;
			case 9: //etalus
				post_spr = sprite_get("miiverse_post_etalus");
				break;
			case 10: //ori
				post_spr = sprite_get("miiverse_post_orisein");
				break;
			case 11: //ranno
				post_spr = sprite_get("miiverse_post_ranno");
				break;
			case 12: //clairen
				post_spr = sprite_get("miiverse_post_clairen");
				break;
			case 13: //sylvanos
				post_spr = sprite_get("miiverse_post_sylvanos");
				break;
			case 14: //elliana
				post_spr = sprite_get("miiverse_post_elliana");
				break;
			case 15: //shovel
				post_spr = sprite_get("miiverse_post_shovel");
				break;
			case 1865940669: //sandbert
				post_spr = sprite_get("miiverse_post_sandbert");
				break;
			case 1866016173: //guadua
				post_spr = sprite_get("miiverse_post_guadua");
				break;
		}
	}
}

	
	
			
if instance_exists(post_target) {	
	draw_sprite_ext(post_spr, post_num, x, y, 1, 1, 0, c_white, alphamale);
	if (post_target.player == 2)
	{
		draw_sprite_ext(sprite_get("p2_border"), 0, x, y, 1, 1, 0, c_white, 1);
	}
	if (post_target.player == 3)
	{
		draw_sprite_ext(sprite_get("p3_border"), 0, x, y, 1, 1, 0, c_white, 1);
	}
	if (post_target.player == 4)
	{
		draw_sprite_ext(sprite_get("p4_border"), 0, x, y, 1, 1, 0, c_white, 1);
	}
}

	
	





