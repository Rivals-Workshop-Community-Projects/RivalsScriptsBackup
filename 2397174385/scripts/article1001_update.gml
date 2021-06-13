
if (Delete == true){//Delete
instance_destroy()
}else{//Delete
	if(DS = false){
		sprite_index = sprite_get("zan5");
		var tou = instance_place(x, y, obj_stage_article_solid);
		if tou != noone {
			if(a == 0){
			a = 1
			}else{
			a = 0
			}
		}
		if(a == 0){
		vsp = 1;
		}else{
		vsp = -1;
		}

		var touch = instance_place(x, y, oPlayer);
		if touch != noone {
		create_hitbox(AT_USTRONG, 6, x, y);
		}
	}else{
		sprite_index = sprite_get("hi_2");

		var tou = instance_place(x, y, obj_stage_article_solid);
		if tou != noone {
			if(a == 0){
			a = 1
			}else{
			a = 0
			}
		}
		if(a == 0){
		hsp = 1;
		}else{
		hsp = -1;
		}


	}
}//Delete