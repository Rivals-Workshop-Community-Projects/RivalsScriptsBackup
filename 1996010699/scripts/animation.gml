switch (state){
    case PS_IDLE:
    case PS_RESPAWN:
    case PS_SPAWN:
        image_index = floor(image_number*state_timer/(image_number*6.5));
    break;
    
    case PS_WALK:
        image_index = floor(image_number*state_timer/(image_number*5));
    break;
}

if (state == PS_SPAWN) {
    if (introTimer < 13 && introTimer >= 0) {
		if(abyssIntro){
			sprite_index = sprite_get("intro1");
		/* }else if(pandoraIntro){
			sprite_index = sprite_get("intro2");
		*/
		} else if(goldenIntro){
			sprite_index = sprite_get("intro3");
		} else if(gameboyIntro){
			sprite_index = sprite_get("intro4");
		} else if(halloweenIntro){
			sprite_index = sprite_get("intro5");
		} else if(arizonaIntro){
			sprite_index = sprite_get("introAZ");
		} else if(beachIntro){
			sprite_index = sprite_get("introRT");
		} else if(geneIntro){
			sprite_index = sprite_get("introG");
		} else {
			sprite_index = sprite_get("intro");
		}
        image_index = introTimer;
    } else if (introTimer < 0) {
		if(abyssIntro){
			sprite_index = sprite_get("intro1");
		/* } else if(pandoraIntro){
			sprite_index = sprite_get("intro2");
		*/
		} else if(goldenIntro){
			sprite_index = sprite_get("intro3");
		} else if(gameboyIntro){
			sprite_index = sprite_get("intro4");
		} else if(halloweenIntro){
			sprite_index = sprite_get("intro5");
		} else if(arizonaIntro){
			sprite_index = sprite_get("introAZ");
		} else if(geneIntro){
			sprite_index = sprite_get("introG");
		} else {
			sprite_index = sprite_get("intro");
		}
        image_index = 0;
    } else {
        sprite_index = sprite_get("idle");
    }
}

if(item[10, 3] == 1 && sprite_index == sprite_get("nspecial")){
	sprite_index = sprite_get("nspecial1");
}

if(item[4, 3] == 1 && sprite_index == sprite_get("uspecial")){
	sprite_index = sprite_get("uspecial1");
}

if(item[9, 3] == 1){
	if (sprite_index == sprite_get("waveland")){
        sprite_index = sprite_get("waveland1");
	}
}

if(sprite_index == sprite_get("ustrong")){
	if(window > 6){
		sprite_index = sprite_get("ustrongKT");
	} else if(item[12, 3] == 1 && window <= 6){
		if(spr_dir > 0){
			sprite_index = sprite_get("ustrong1");
		} else {
			sprite_index = sprite_get("ustrong1L");
		}
	}
}

if(sprite_index == sprite_get("dstrong")){
	if(window > 4){
		sprite_index = sprite_get("dstrongKT");
	}
}

if(sprite_index == sprite_get("ftilt")){
	if(item[27, 3] == 1){
		sprite_index = sprite_get("ftilt1");
	}	
	if(window > 4){
		sprite_index = sprite_get("ftiltKT");
	}
}
	
if(item[14, 3] == 1){
	if (sprite_index == sprite_get("dspecial")){
		sprite_index = sprite_get("dspecial1");
	}
}

/*
if(item[15, 3] == 1){
	if (sprite_index == sprite_get("crouch")){
		sprite_index = sprite_get("crouchKT");
	}
}
*/

if (sprite_index == sprite_get("taunt")){
	if(get_player_color(player) == 9){
		sprite_index = sprite_get("taunt3");
	}
	if(get_player_color(player) == 11){
		sprite_index = sprite_get("taunt1");
	}
	if(get_player_color(player) == 3 && window = 2){
		sprite_index = sprite_get("taunt2");
	}
}

if(item[16,3] == 1 && !item[11,3]){
	if (sprite_index == sprite_get("utilt")){
		sprite_index = sprite_get("utilt2");
	} 
} else if(item[11,3] == 1){
	if (sprite_index == sprite_get("utilt")){
		sprite_index = sprite_get("utilt1");
	}
}

if(state == PS_FIRST_JUMP){
	if(vis_full_hop && hyperJump){
		sprite_index = sprite_get("hyperjump");
	} else {
		sprite_index = sprite_get("jump");
	}
}