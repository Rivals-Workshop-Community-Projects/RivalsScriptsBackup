// 2B's ANIMATION.GML
switch (state) {
    case PS_DASH_START:
        // This code makes dash start look more intent if running
        if ((right_down || left_down) && image_index > 5) {
            image_index = 5;
        }
        break;
    case PS_ATTACK_AIR:
    case PS_ATTACK_GROUND:
        switch (attack) {
            case AT_EXTRA_1:
                //proper glide animation.
                //windows are used for functionality in this one, not animation.
                //last 3 frames loop.
                var inc_frames = 5; //how many frames before an increment. (so basically the animation speed)
                var inc_frames2 = 8; //how many frames before an increment. (so basically the animation speed)
                if state_timer <= 8*inc_frames {
                    image_index = floor( ease_linear(0, 6, state_timer, 7*inc_frames) );
                } else {
                    image_index = floor( 7 + ( ( ( state_timer-(8*inc_frames) )/inc_frames2 )%3 ) );
                }
                pod._image = image_index;
                hurtboxID.sprite_index = sprite_get("podfloat_hurt");
                break;
            case AT_USPECIAL:
                if (window == 4 && image_index == 12 && !uspecial_looping) {
                    uspecial_looping = true;
                } else if (window == 4 && uspecial_looping) {
                    image_index = 12;
                }
			    if (window == 3 && image_index == 7) {
				    // Make the greatsword disappear during the downward swipe
				    greatsword.vis = 0;
			    }  
			    break;
			case AT_TAUNT:
				if (window == 3) {
					sprite_index = sprite_get("taunt");
				}
				break;
			case AT_TAUNT_2:
				hurtboxID.sprite_index = sprite_get("tauntalt_hurt");
				break;
			case AT_FSPECIAL_2:
				hurtboxID.sprite_index = sprite_get("rocket_hurt");
				break;
			case AT_JAB:
				hurtboxID.sprite_index = sprite_get("jab_hurt");
				break;
        }
        break;
}