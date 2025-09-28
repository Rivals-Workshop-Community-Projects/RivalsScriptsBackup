if (state == PS_RESPAWN) draw_y = ease_backOut(-200, 0, min(state_timer-90, 30), 30, 2);
else if (state == PS_CROUCH && state_timer > 3 && right_down ^^ left_down)
{
	sprite_index = crawl_spr;
	image_index = crawlTimer * crawl_anim_speed;
}

small_sprites = !((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && attack == AT_TAUNT_2);