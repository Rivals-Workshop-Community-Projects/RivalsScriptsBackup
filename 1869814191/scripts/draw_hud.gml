//draw_hud - the x position of your HUD element is 48*(i-1)

var temp_color_bone = c_white;
if (blue_bone == true) temp_color_bone = c_aqua;
draw_sprite_ext(sprite_get("bone_icon"), 0, temp_x+188, temp_y-26, 2, 2, 0, temp_color_bone, 1);

var temp_color_blaster = c_white;
if (move_cooldown[AT_NSPECIAL] > 0) temp_color_blaster = c_gray;
draw_sprite_ext(sprite_get("gaster_blaster_icon"), 0, temp_x+150, temp_y-30, 2, 2, 0, temp_color_blaster, 1);

if (no && get_gameplay_time() <= 300) {
    draw_debug_text(temp_x+0,temp_y-72,"* nah.");
    //draw_debug_text(temp_x+0,temp_y-52," ");
}

if (anti_op && !hard_mode) { // Literally God Ronald
    if (get_gameplay_time() >= 120 and get_gameplay_time() <= 300) {
        draw_debug_text(temp_x+0,temp_y-72,"* hey there.");
        draw_debug_text(temp_x+0,temp_y-52,"  ");
    }
    if (get_gameplay_time() >= 301 and get_gameplay_time() <= 480) {
        draw_debug_text(temp_x+0,temp_y-72,"* i noticed that you're");
        draw_debug_text(temp_x+0,temp_y-52,"  playing an op character.");
    }
    if (get_gameplay_time() >= 481 and get_gameplay_time() <= 660) {
        draw_debug_text(temp_x+0,temp_y-72,"* i'm not insta-kill you");
        draw_debug_text(temp_x+0,temp_y-52,"  this time, but...");
    }
    if (get_gameplay_time() >= 661 and get_gameplay_time() <= 840) {
        draw_debug_text(temp_x+0,temp_y-72,"* if you decide to come");
        draw_debug_text(temp_x+0,temp_y-52,"  back for more, then...");
    }
    if (get_gameplay_time() >= 841 and get_gameplay_time() <= 1020) {
        draw_debug_text(temp_x+0,temp_y-72,"* do it with someone fair,");
        draw_debug_text(temp_x+0,temp_y-52,"  like mollo or kris.");
    }
    if (get_gameplay_time() >= 1021 and get_gameplay_time() <= 1200) {
        draw_debug_text(temp_x+0,temp_y-72,"* especially if you're");
        draw_debug_text(temp_x+0,temp_y-52,"  a youtuber.");
    }
    if (get_gameplay_time() >= 1201 and get_gameplay_time() <= 1380) {
        draw_debug_text(temp_x+0,temp_y-72,"* that side of the workshop");
        draw_debug_text(temp_x+0,temp_y-52,"  needs more attention.");
    }
    if (get_gameplay_time() >= 1381 and get_gameplay_time() <= 1560) {
        draw_debug_text(temp_x+0,temp_y-72,"* that's all i have");
        draw_debug_text(temp_x+0,temp_y-52,"  to say.");
    }
    if (get_gameplay_time() >= 1561 and get_gameplay_time() <= 1740) {
        draw_debug_text(temp_x+0,temp_y-72,"* back to your regularly");
        draw_debug_text(temp_x+0,temp_y-52,"  scheduled programming.");
    }
}

var temp_color_banana = c_white;
if (move_cooldown[AT_DTILT] > 0) temp_color_banana = c_gray;
draw_sprite_ext(sprite_get("banana_icon"), 0, temp_x+110, temp_y-20, 2, 2, 0, temp_color_banana, 1);