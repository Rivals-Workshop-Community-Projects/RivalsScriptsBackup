//if (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) and (attack == AT_USPECIAL && window > 1)
//	draw_sprite_ext(sprite_get("uspecial_base"), image_index, x, y, 1, 1, 0, c_white, 1);

if state == PS_ATTACK_GROUND && attack = AT_USTRONG{
draw_sprite(sprite_get("ustrong_crystal"), image_index, x, y);
}

//Munophone
user_event(12); 