//TODO: remove if it's still empty
if ("msg_grab_rotation" not in self) exit;

//HUD cryptic info data
draw_hud_address();

for (var p = 1; p <=4; p++)
{
    var temp_temp_x = msg_player_to_hud_positions[p];
    var temp_dmg = get_player_damage(p);
    if (temp_temp_x == noone) || !(temp_dmg < 0) continue;
    
    var rect_pos_x = temp_temp_x + 112 - 10 * string_length(string(abs(temp_dmg)));
    var rect_pos_y = temp_y + 24;
    if get_match_setting(SET_RUNES) rect_pos_x -= 6;

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

#define draw_hud_address()
{
    var EZHEX = "0123456789ABCDEF?";
    var data = "0x";

    //BSpec index
    var bspec_index = (msg_bspec_sketch_locked * 128) + msg_bspecial_last_move.move;
    data += string_char_at(EZHEX, 1+ floor(bspec_index/16)) + string_char_at(EZHEX, 1+ bspec_index%16);

    //DSpec breakage
    data += msg_last_performed_grab;

    //FSpec level
    var FSPECs = ["0","1",msg_rune_flags.fspecial_hydro_cannon ? "C" : "2","D"]
    if (msg_rune_flags.fspecial_elemental) { FSPECs[0] = "A"; FSPECs[1] = "B" };
    data += msg_fspecial_ghost_arrow_active ? "F" : FSPECs[msg_fspecial_charge];

    //UAIR level
    data += string_char_at(EZHEX, clamp(get_hitbox_value(AT_UAIR, 1, HG_DAMAGE) - 8, 1, 17));

    //Strong Charge
    var effective_timer = ceil(msg_fstrong_interrupted_timer);
    if (effective_timer > 60) effective_timer = clamp(60 + (effective_timer - 60)/2, 0, 255);
    effective_timer = floor(max(effective_timer, strong_charge));
    data += string_char_at(EZHEX, 1+ floor(effective_timer/16)) + string_char_at(EZHEX, 1+ effective_timer%16);

    //RUNE BONUS DATA
    if get_match_setting(SET_RUNES)
    {
        data += " ";

        //Current Alt
        data += string_char_at(EZHEX, 1+ clamp(get_player_color(player), 0, 16) )

        //Passives
        var speedtest = msg_slowstart_ended
                      + msg_rune_flags.flame_body << 1
                      + msg_rune_flags.wonder_guard << 2
                      + msg_rune_flags.turbo_weekday << 3
        data += string_char_at(EZHEX, 1+ clamp(speedtest, 0, 15) )

        //Pocket Contents
        if instance_exists(msg_pocket_slot_content) 
            switch (msg_pocket_slot_content.object_index)
            {
                case pHitBox: data += "2"; break;
                case obj_article1:         data += "A"; break;
                case obj_article2:         data += "B"; break;
                case obj_article3:         data += "C"; break;
                case obj_article_solid:    data += "D"; break;
                case obj_article_platform: data += "E"; break;
            }
        else data += "0";

        //Whiffstorage
        data += string_char_at(EZHEX, 1+ clamp(msg_rune_whiff_storage, 0, 16) )

        //Activated runes (precalculated)
        data += msg_hud_rune_info;
    }

    draw_debug_text(temp_x-4, temp_y-12, data);
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