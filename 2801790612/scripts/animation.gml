// make the nametag go higher while ustrong's fist is raised
if phone_attacking && attack == AT_TAUNT{
	hud_offset = lerp(hud_offset, 90, 0.5);
}

switch (state){
    case PS_IDLE:
    case PS_RESPAWN:
    case PS_SPAWN:
        image_index = floor(image_number*state_timer/(image_number*6.5));
    break;
    case PS_ATTACK_GROUND:
    case PS_ATTACK_AIR:
        if (attack == AT_NSPECIAL && window == 2) {
            image_index = (floor(window_timer / 3) % 2) + 2;
        }
        if (attack == AT_NSPECIAL && window == 3) {
            image_index = (floor(window_timer / 3) % 2) + 4;
        }
        if (attack == AT_NSPECIAL && window == 4) {
            
        }
    break;
}

if (state == PS_SPAWN) {
    if (introTimer < 8 && introTimer >= 0) {
        sprite_index = sprite_get("intro");
        image_index = introTimer;
    } else if (introTimer < 0) {
        sprite_index = sprite_get("intro");
        image_index = 0;
    } else {
        sprite_index = sprite_get("idle");
    }
}

// Thrown Garbage logic
if (instance_exists(rand_garbage)) {
    rand_garbage.spr_angle = 90;
}



// fix weird jittering that can happen when it tries to return to 0
if abs(hud_offset) < 1{
	hud_offset = 0;
}