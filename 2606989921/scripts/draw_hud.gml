//TODO: remove if it's still empty
if ("msg_grab_rotation" not in self) exit;

var grabnames = "0x";
for (var i = 0; i < 4; i++)
{
    grabnames += (msg_grab_last_outcome == i) ? msg_grab_broken_outcome.name
                                              : msg_grab_rotation[i].name;
}

draw_debug_text(temp_x-4, temp_y-12, grabnames);

for (var p = 1; p <=4; p++)
{
    var temp_temp_x = msg_player_to_hud_positions[p];
    var temp_dmg = get_player_damage(p);
    if (temp_temp_x == noone) || !(temp_dmg < 0) continue;
    
    var rect_pos_x = temp_temp_x + 112 - 10 * string_length(string(abs(temp_dmg)));
    var rect_pos_y = temp_y + 24;

    draw_rectangle_color(rect_pos_x-8, rect_pos_y-4, rect_pos_x+8, rect_pos_y+4, c_black, c_black, c_black, c_black, false);
    draw_rectangle_color(rect_pos_x-6, rect_pos_y-2, rect_pos_x+6, rect_pos_y+2, c_white, c_white, c_white, c_white, false);
}

msg_draw_achievements(msg_persistence);

if !get_match_setting(SET_HITBOX_VIS) exit;

exit;
var h = 20;
var keys = variable_instance_get_names(msg_unsafe_effects);
for (var k = 0; k < array_length(keys); k++)
{
    if (keys[k] == "effects_list") continue;
    var fx = variable_instance_get(msg_unsafe_effects, keys[k]);
    var fx_str = keys[k] + ":{";
    fx_str += "g" + string(fx.gameplay_timer);
    fx_str +=",f" + string(fx.freq);
    fx_str +=",t" + string(fx.timer);
    fx_str +=",i" + string(fx.impulse);
    fx_str +=",z" + string(fx.frozen);
    fx_str += "}";
    draw_debug_text(temp_x-4, h, fx_str); h+=20;

    var fx_str = "";
    var fxkeys = variable_instance_get_names(fx);
    for (var fk = 0; fk < array_length(fxkeys); fk++)
    {
        var param = fxkeys[fk];
        if (param == "gameplay_timer") or (param == "gameplay_timer")or (param == "freq") 
        or (param == "timer") or (param == "impulse") or (param == "frozen") continue;

        fx_str += param + ":" + string(variable_instance_get(fx, param)) + ",";
    }
    draw_debug_text(temp_x-4, h, fx_str); h+=20;
}

// #region vvv LIBRARY DEFINES AND MACROS vvv
// DANGER File below this point will be overwritten! Generated defines and macros below.
// Write NO-INJECT in a comment above this area to disable injection.
#define msg_draw_achievements(persistence) // Version 0
    var spr = sprite_get("achievement");
    if instance_exists(persistence) with (persistence) msg_draw_achievement(spr);

#define msg_draw_achievement(spr) // Version 0
    if (achievement.end_time < current_time) return;
    //assumed called from the perspective of the master article holding the required information
    //bottom corner of screen: (960, 540)
    //size of achievement block: 240x94
    var popup_down = 540;
    var popup_up = popup_down - 94;
    var popup_x = 720;
    var popup_y = popup_up;

    //THX-UHC2
    if (current_time < achievement.rise_time)
    {
        popup_y = ease_linear(popup_down, popup_up,
                              current_time - achievement.start_time,
                              achievement.rise_time - achievement.start_time);
    }
    else if (current_time > achievement.fall_time)
    {
        popup_y = ease_linear(popup_up, popup_down,
                              achievement.fall_time - current_time,
                              achievement.fall_time - achievement.end_time);
    }

    draw_sprite(spr, achievement.id, popup_x, popup_y);
// DANGER: Write your code ABOVE the LIBRARY DEFINES AND MACROS header or it will be overwritten!
// #endregion