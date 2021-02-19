shader_end();
//

if get_color_profile_slot_r(99,0) == 0 || "twob_css_timer" not in self {
    set_color_profile_slot(99,0,1,0,0);
    twob_css_timer = 0;
}
twob_css_timer++;
// version indicator.
// i like this personally because it gives you information on
// what patch of the char you have downloaded and
// when it was last updated.
// ..then it fades away.
// remove this if you want a completely clean css but i think
// this is pretty healthy.

draw_set_alpha(16-twob_css_timer/8);
draw_debug_text(floor(x+10),floor(y-12),`ver ${get_char_info(player,INFO_VER_MAJOR)}.${get_char_info(player,INFO_VER_MINOR)}`);
draw_set_alpha(1);