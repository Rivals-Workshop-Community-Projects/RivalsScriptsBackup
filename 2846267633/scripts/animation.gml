//animation

if (state == PS_CROUCH) {
    crawl_dir = (right_down ? 1 : 0 + left_down ? -1 : 0) * spr_dir;
    if (crawl_dir < -0.5) {
        sprite_index = sprite_get("crawl_back");
        crouch_anim_speed = 0.07;
    }
    else if (crawl_dir > 0.5) {
        sprite_index = sprite_get("crawl_forward");
        crouch_anim_speed = 0.1;
    }
    else {
        crouch_anim_speed = 0.07;
    }
}