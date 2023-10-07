// NOTE:
// Missingno article come in pairs.
// master handles update logic
// clone only exists at a different depth to let master do two draw passes
if (master != self) exit;

if (room != prev_room)
{
    change_state();
    prev_room = room;
}


master.depth = 50;
clone.depth = -18;

if (state == PERS_MATCH)
{
    if (stage_stability_mode)
    {
        sound_request_breaking = false;
        stage_request_breaking = false;
        music_request_breaking = false;
    }

    if (stage_request_breaking != noone)
    {
        stage_is_broken = (stage_request_breaking > 0);
        stage_request_breaking = noone;
    }

    //dust fx surface draws at depth 7, needs to be suppressed else entire screen is black
    //(does not work well with online mode)
    if (stage_is_broken) 
    {
        if (is_online || true) clone.depth = 7;
        else commit_asset_murder(dust_object_asset);
    }
}
else if (state == PERS_SSS)
{
    clone.depth = 7;
}
else if (state == PERS_RESULTS)
{
    with asset_get("draw_result_screen")
    if (results_timer == 8) && ("uhc_victory_quote" in self)
    && (uhc_victory_quote == "An unspecified error occurred while recording.")
    {
        trophy_enabled = true;
        results_loop_active = true;
    }
}

//=============================================================================
//achievement unlocking
if (achievement_request_unlock_id >= 0)
&& (achievement_request_unlock_id < array_length(achievement_status))
{
    //animation parameters
    if !(achievement_status[achievement_request_unlock_id])
    {
        achievement_status[achievement_request_unlock_id] = true;
        achievement.id = achievement_request_unlock_id;
        achievement.start_time = current_time +   750;
        achievement.rise_time  = current_time +  1000;
        achievement.fall_time  = current_time +  6000;
        achievement.end_time   = current_time +  6250;
    }
    achievement_request_unlock_id = noone;
}
//achievement statii
achievement_fatal_error = achievement_status[0];
achievement_saw_matrix = achievement_status[1];
achievement_hall_of_fame = achievement_status[2];

//contingency
#macro IMPOSSIBLY_LONG_TIME 999999999999999999999999999999999999999999999
if instance_exists(msg_contingency_hitfx)
{
    for (var i = 0; i < array_length(achievement_status); i++)
        msg_contingency_hitfx.achievement_status[i] = achievement_status[i];
    //making data last "forever"
    msg_contingency_hitfx.pause = IMPOSSIBLY_LONG_TIME;
    msg_contingency_hitfx.hit_length = IMPOSSIBLY_LONG_TIME;
    msg_contingency_hitfx.pause_timer = 0;
    msg_contingency_hitfx.step_timer = 0;
    msg_contingency_hitfx.visible = false;
}
else with (oPlayer) //attempt creation
{
    other.msg_contingency_hitfx = spawn_hit_fx(-999, -999, 0);
    with (other.msg_contingency_hitfx)
    {
        missingno_persistence_contingency = true;
        persistent = true;
        visible = false;
        player = 0;
        achievement_status = [];
    }
}

//=============================================================================

//=============================================================================
//State machine
#define change_state()
{
    var P = instance_number(asset_get("oPlayer"));
    var NP = instance_number(asset_get("oTestPlayer"));
    var S = instance_number(asset_get("obj_stage_main"));
    var CSS = instance_number(asset_get("cs_playercursor_obj"));
    var SSS = instance_number(asset_get("ss_cursor_obj"));
    var R = instance_number(asset_get("draw_result_screen"));

    var new_state = PERS_UNKNOWN;
    if (room == asset_get("mainMenu_room"))        new_state = PERS_MENUS;
    else if (room == asset_get("milestones_room")) new_state = PERS_MILESTONES;
    else if (CSS > 0)                              new_state = PERS_CSS;
    else if (SSS > 0)                              new_state = PERS_SSS;
    else if (R > 0)                                new_state = PERS_RESULTS;
    // Yes, this is all just an elaborate P != NP joke
    else if (P > 0) && (P != NP)                   new_state = PERS_MATCH;
    //DEFAULTS TO: Unknown

    //exit action
    switch (state)
    {
        default: break;
    }

    state = new_state;

    //enter action
    switch (new_state)
    {
        case PERS_MILESTONES:
            menu_is_broken = true;
            music_request_breaking = true;
            achievement_request_unlock_id = 2;
            if (!music_is_broken) sound_play(asset_get("mfx_tut_fail"), false, 0, 1, 0.6);
            break;
        case PERS_MENUS:
            is_real_match = false;
            break;
        case PERS_CSS:
            is_real_match = true;
            break;
        case PERS_MATCH:
            music_request_breaking = false;
            menu_is_broken = false;
            is_online = get_player_hud_color(0) != 0;
            is_practice = get_match_setting(SET_PRACTICE);
            msg_coinhits = 0;
            break;
        case PERS_RESULTS:
            music_request_breaking = false;
            with (asset_get("draw_result_screen"))
                coins_earned += 1000 * other.msg_coinhits;
            break;
        default: break;
    }
    sound_request_breaking = false;
    stage_request_breaking = false;
    stage_stability_mode = false;

}

// #region vvv LIBRARY DEFINES AND MACROS vvv
// DANGER File below this point will be overwritten! Generated defines and macros below.
// Write NO-INJECT in a comment above this area to disable injection.
#define commit_asset_murder(entity) // Version 0
    if instance_exists(entity) with (oPlayer)
    {
        var k = spawn_hit_fx(0, 0, 0);
        k.white = entity;
        break;
    }

#macro PERS_UNKNOWN 0

#macro PERS_MENUS 1

#macro PERS_MILESTONES 2

#macro PERS_CSS 3

#macro PERS_SSS 4

#macro PERS_MATCH 5

#macro PERS_RESULTS 6
// DANGER: Write your code ABOVE the LIBRARY DEFINES AND MACROS header or it will be overwritten!
// #endregion