if (phone_attacking){
	if (attack == AT_DTILT)
		hud_offset = lerp(hud_offset, -100, 0.4);
	else if (attack == AT_UTILT && window > 1) && !(window == 3)
		hud_offset = lerp(hud_offset, 80, 0.5);
	else if (attack == AT_UAIR && window > 1) && !(window == 6 && window_timer > 4)
		hud_offset = lerp(hud_offset, 170, 0.5);
	else if (attack == AT_DSTRONG && window > 2) && !(window == 5 && window_timer > 7)
	    hud_offset = lerp(hud_offset, 90, 0.5);
	else if (smash_charging && attack == AT_DSTRONG)
		image_index = 4 + (strong_charge/2 % 2);
}
else if (state_cat == SC_HITSTUN){
	image_index = state_timer/2;
}
else if state == PS_PRATLAND
	sprite_index = sprite_get("pratland");
else if (state == PS_CROUCH && !(image_index == 0 || image_index >= 5 ))
	hud_offset = lerp(hud_offset, -100, 0.4);

// fix weird jittering that can happen when it tries to return to 0
if abs(hud_offset) < 1
	hud_offset = 0;


if state == PS_PARRY {
hurtboxID.sprite_index = sprite_get("parry_hurtbox");
}
   
if (state == PS_SPAWN) {
    if (introTimer < 15 && introTimer >= 0) {
        sprite_index = sprite_get("intro");
        image_index = introTimer;
    } else if (introTimer < 0) {
        sprite_index = sprite_get("intro");
        image_index = 0;
    } else {
        sprite_index = sprite_get("idle");
    }
}

if state == PS_IDLE && prev_state == PS_ATTACK_GROUND && attack == AT_DTILT && state_timer < 3 {
    sprite_index = sprite_get("crouch");
    image_index = 0;
}

if state == PS_WALK && prev_state == PS_IDLE && state_timer < 6{
    sprite_index = sprite_get("walkstart");
}
if state == PS_IDLE && prev_state == PS_WALK && state_timer < 4{
    sprite_index = sprite_get("walkstop");
}
