// Pre-Draw literally just for orb
var animspeed = get_gameplay_time() / 6;
if spr_dir == 1{
    draw_sprite_ext(sprite_get("funnyorb"), animspeed, x - 40, y + orb_y, 1.25, 1.25, 0, c_white, orbvis);
} else {
    draw_sprite_ext(sprite_get("funnyorb"), animspeed, x + 30, y + orb_y, 1.25, 1.25, 0, c_white, orbvis);
}