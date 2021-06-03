if phone_cheats[cheat_funny_snail]{
	draw_debug_text(x, y, "woag");
}

if (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND)
&& (attack == AT_USPECIAL && window == 2)
{
	draw_sprite_ext(sprite_get("uspecialarrow"), 0, x, y - (char_height/2), 1, 1, (ztc_uspecial_angle - 90), c_white, 1);
}

user_event(12);