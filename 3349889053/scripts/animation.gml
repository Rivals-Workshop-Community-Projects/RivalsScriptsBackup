//animation
switch (state){
    case PS_DASH:
    case PS_DASH_START:
    case PS_DASH_TURN:
        if hurtboxID.sprite_index != dashbox_spr hurtboxID.sprite_index = dashbox_spr;
        break;
    default: 
        if hurtboxID.sprite_index == dashbox_spr hurtboxID.sprite_index = hurtbox_spr;
        break;
    case PS_JUMPSQUAT:
    	if (state_timer == 3){
    	var vfx = spawn_hit_fx( x, y, jump_vfx );
        		vfx.depth -= 2;	
    	}
    break;
    case PS_PARRY:
		//parry sfx
		if (state_timer == 0){
			sound_play(sound_get("sfx_deracine_ground_rustle"), false, noone, 0.7, 1)
			//sound_stop(asset_get("sfx_parry_use"));
		}
		break;
}

if (state == PS_SPAWN)
{
    draw_indicator = false
    if (introTimer < sprite_get_number(sprite_get("intro")) && introTimer >= 0) {
        sprite_index = sprite_get("intro");
        image_index = introTimer;
    } else if (introTimer < 0) {
        sprite_index = sprite_get("intro");
        image_index = 0;
    } else {
        sprite_index = sprite_get("idle");
        draw_indicator = true;
    }
}
else
{
    draw_indicator = true;
}