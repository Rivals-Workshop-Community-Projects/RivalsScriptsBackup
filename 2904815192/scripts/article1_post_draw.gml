//article1_post_draw.gml

if (state == 1){
	if (attackCooldown > 20
	|| attackCooldown == 16
	|| attackCooldown == 12
	|| attackCooldown == 8
	|| attackCooldown == 4){
		draw_sprite_ext( spr_idle, image_index, x - 0*spr_dir, y, 1, 1, 0, c_black, 0.6 );
	}
}

if (state == 0){
	draw_sprite_ext( sprite_get("property_deed_hudcolor"), 0, x - 0*spr_dir, y, 1, 1, 0, hud_color, 1 );
} else {
	draw_sprite_ext( spr_hudRecolor, 0, x - 0*spr_dir, y, 1, 1, 0, hud_color, 1 );
	
	if (state != 0){
		if (decayWhiteVisual != 0){
			gpu_set_fog(1, c_white, 0, 1);
			var opacityVar = (decayWhiteVisual/20);
			draw_sprite_ext( spr_idle, image_index, x - 0*spr_dir, y, 1, 1, 0, c_white, opacityVar );
			draw_sprite_ext( spr_hudRecolor, 0, x - 0*spr_dir, y, 1, 1, 0, hud_color, opacityVar );
			gpu_set_fog(0, c_white, 0, 0);
		}
	}
	
	//Drawing House Sprites
	if (numberOfHouses > 0 && numberOfHouses < 5){//>
		if (numberOfHouses > 0){
			drawHouseSprite(1);
			if (numberOfHouses > 1){
				drawHouseSprite(2);
				if (numberOfHouses > 2){
					drawHouseSprite(3);
					if (numberOfHouses > 3){
						drawHouseSprite(4);
					}
				}
			}
		}
	} else {
		if (numberOfHouses == 5){
			drawHotelSprite();
		}
	}
}

if (state == 1){
	if (attackCooldown > 20
	|| attackCooldown == 16
	|| attackCooldown == 12
	|| attackCooldown == 8
	|| attackCooldown == 4){
		draw_sprite_ext( spr_hudRecolor, 0, x - 0*spr_dir, y, 1, 1, 0, c_black, 0.6 );
	}
}


//--------------------------------------------

// Drawing House Sprite Function

#define drawHouseSprite(houseNumber)

if (state == 1){
	var currHouseSprite = sprite_get("property_house_idle");
} else {
	var currHouseSprite = sprite_get("property_house_attack")
}

if (houseNumber == 1){
	XDrawOffset = -30;
}

if (houseNumber == 2){
	XDrawOffset = -11;
}

if (houseNumber == 3){
	XDrawOffset = 11;
}

if (houseNumber == 4){
	XDrawOffset = 30;
}

draw_sprite_ext( currHouseSprite, image_index, x + XDrawOffset, y - 2, 1, 1, 0, c_white, 1 );

if (state == 1){
	if (attackCooldown > 20
	|| attackCooldown == 16
	|| attackCooldown == 12
	|| attackCooldown == 8
	|| attackCooldown == 4){
		draw_sprite_ext( currHouseSprite, 0, x + XDrawOffset, y - 2, 1, 1, 0, c_black, 0.6 );
	}
}

//--------------------------------------------

// Drawing Hotel Sprite Function

#define drawHotelSprite()

if (state == 1){
	var currHotelSprite = sprite_get("property_hotel_idle");
} else {
	var currHotelSprite = sprite_get("property_hotel_attack")
}

draw_sprite_ext( currHotelSprite, image_index, x, y - 2, 1, 1, 0, c_white, 1 );

if (state == 1){
	if (attackCooldown > 20
	|| attackCooldown == 16
	|| attackCooldown == 12
	|| attackCooldown == 8
	|| attackCooldown == 4){
		draw_sprite_ext( currHotelSprite, 0, x, y - 2, 1, 1, 0, c_black, 0.6 );
	}
}

//--------------------------------------------