//#region Local Variables
//fix weird jittering that can happen when hud_offset tries to return to 0 - from the munophone
if (abs(hud_offset) < 1) hud_offset = 0;

switch (state)
{
	case PS_PRATLAND:
		//this complicated math allows the player to animate properly when in pratland

		var timer_to_index_math = state_timer / clamp(parry_distance * 8.8, 60, 110);
		//how did i get to this math?
		//	  parry_distance returns the distance which the player was parried from
		//	  if the parry distance is 150 and under, the parried state will be 60 frames long
		//	  if the parry distance is 590 and over, the parried state will be 110 frames long
		//	  590 - 150 = 440 (gap between the min and max affected distances)
		//	  110 - 60 = 50 (gap between the min and max parry stun time)
		//	  440 : 50 = 8.8 (the mulitplier in which parry_distance knows how many frames to add to the parry stun)
		//	  clamp will limit the math to any number in between 60 and 110, the frame limits (otherwise the player may have loop the animation which we don't want)
		//	  state_timer is divided by the complex math above so it dynamically changes the image below

		if (extended_parry_lag) image_index = lerp(0, image_number, timer_to_index_math);
		break;
	case PS_TUMBLE: case PS_HITSTUN_LAND:
		hurt_img = 5;
		break;
	case PS_FLASHED: case PS_FROZEN: case PS_CRYSTALIZED:
		hurt_img = 1;
		break;
	case PS_BURIED:
		hurt_img = 2;
		break;
}

//sets image_index to hurt_img. this allows us to put all the hurt sprites in one strip
if (state_cat == SC_HITSTUN || state == PS_TUMBLE)
{
	//this will force the player into hurt_img 1, since PS_CRYSTALIZED only works on the initial activation
	//if the character doesn't use small sprites, uncomment the else line
	if (crystalized_damage_remaining > 0) hurt_img = 1;
	//else small_sprites = 0;

	//ranno bubble forces the player into hurt_img 1 too
	if (bubbled) hurt_img = 1;
}
//#endregion

switch (state) {
    case PS_DASH_STOP:
        dashstop_anim_timer++;
        image_index = floor(ease_linear(0, image_number, dashstop_anim_timer, dashstop_anim_frames))
    break;
    case PS_IDLE:
        if (dashstop_anim_timer > 0) {
            dashstop_anim_timer++;
            if (dashstop_anim_timer >= dashstop_anim_frames) {
                dashstop_anim_timer = 0;
                image_index = 0;
            }
            else {
                sprite_index = sprite_get("dashstop")
                image_index = floor(ease_linear(0, image_number, dashstop_anim_timer, dashstop_anim_frames))
            }
        }
    break;
    default:
        dashstop_anim_timer = 0;
    break;
}

tension_animation();

#define tension_animation()

//Empower hitboxes
if (tension_level > floor(TENSION_LEVEL_AMOUNT-2))  {
	with (pHitBox) {
		if (player_id == other.id) {
			if (hitbox_timer == 0) {
				damage_original = damage;
				damage *= 1 + (0.3 * other.tension_mult);
				damage = ceil(damage);
			}
		}
	}
}
