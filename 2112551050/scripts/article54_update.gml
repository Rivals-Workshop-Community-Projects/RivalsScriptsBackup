//
timer++;

if (timer >= 1) {
	sprite_index = sprite_get("blaster_beam");
	switch image_index {
		case 0:
		mask_index = sprite_get("blaster_beam_mask1");
		break;
		
		case 1:
		mask_index = sprite_get("blaster_beam_mask2");
		break;
		
		case 2:
		mask_index = sprite_get("blaster_beam_mask3");
		break;
		
		case 3:
		mask_index = sprite_get("blaster_beam_mask4");
		break;
		
		case 4:
		mask_index = sprite_get("blaster_beam_mask5");
		break;
		
		case 5:
		mask_index = sprite_get("blaster_beam_mask6");
		break;
		
		case 6:
		mask_index = sprite_get("blaster_beam_mask7");
		break;
		
		case 7:
		mask_index = sprite_get("blaster_beam_mask8");
		break;
		
		case 8:
		//mask_index = sprite_get("blaster_beam_mask9");
		mask_index = asset_get("empty_sprite");
		break;
	}
	
}

image_xscale = scaleX;
image_yscale = scaleX;
image_angle = rotAngle;

x = blasterID.x;
y = blasterID.y;


if (timer >= 2) && (timer mod 3 == 0) {
    image_index++;
}

if (image_index >= 7) {
	image_alpha -= 0.1;
}

if (image_index == 9) {
	image_index = 8;
}

//damage players
var playerHit = false;
var hitPlayerID = undefined;

if (timer mod 2 == 0) {
	
	with oPlayer {
    	if (cpuId == undefined) && (!dead) {
			var article = instance_place(x, y, obj_stage_article);
			if (get_article_script(article) == 54) {
				playerHit = true;
				hitPlayerID = id;
			}
    	}
    	
    	if (playerHit) {
    		with hitPlayerID {
	        	if (!blaster_hit) && (!dead) {
	        		var levelKR = 3;
	        		if (stageExpertMode) {
	        			levelKR = 5;
	        		}
	        		take_damage(player, -1, 1);
	        		blaster_hit = true;
	        		KR += levelKR;
					damageTaken++;
					if (KR < playerHP) {
						karmaTaken += levelKR;
					}
	        	}
    		}
	    }
	}
	
	if (playerHit) {
		var stageExpertMode = player_id.expertMode;
		sound_play(sound_get("bone_hit"), false, 0);
	}
    
} else if (timer mod 2 == 1) {
	with oPlayer {
		blaster_hit = false;
	}
}

if (image_alpha <= 0) {
	instance_destroy();
}