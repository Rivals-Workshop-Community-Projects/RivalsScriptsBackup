// hitbox_update.gml

// template for setting up
/*
if (attack == AT_NSPECIAL){
	if (hbox_num == 1){
		// do stuff here
	}
}
*/


if (attack == AT_USPECIAL){
	if (hbox_num == 4 || hbox_num == 5){
		// do stuff here
		if (hbox_num == 4){
			proj_angle += (12 * spr_dir);
			
			var myWingSprite = sprite_get("uspecial_wingfront");
		} else {
			proj_angle -= (12 * spr_dir);
			
			var myWingSprite = sprite_get("uspecial_wingback");
		}
		
		if (hitbox_timer >= 10){
			if (hitbox_timer mod 2 == 1){
				sprite_index = sprite_get("empty");
			} else {
				sprite_index = myWingSprite;
			}
			
			if (hitbox_timer == 20){
				instance_destroy();
				exit;
			}
		} else {
			sprite_index = myWingSprite;
		}
	}
}