if (state == PS_CROUCH && state_timer > 3 && right_down ^^ left_down)
{
	sprite_index = crawl_spr;
	image_index = crawlTimer * crawl_anim_speed;
}

small_sprites = !((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && attack == AT_TAUNT_2);