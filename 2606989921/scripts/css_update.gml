//css_update.gml
if ("msg_error_active" not in self) exit;

//yellow mode checks
var color = get_player_color(player);
if (color == 13) 
{
    if (!msg_yellow_mode) sound_play(sound_get("krr"));
    msg_yellow_mode = true;
}
else if (color == 0)
{
    if (msg_yellow_mode) sound_play(sound_get("jacobs_ladder"));
    msg_yellow_mode = false;
}

//stabilizer setting button
if instance_exists(cursor_id)
{
    var seg_x = x + 8;
    var seg_y = y + 80;
    var curpos = { x:get_instance_x(cursor_id), y:get_instance_y(cursor_id) };
    var new_highlighted = (curpos.x > seg_x) && (curpos.x < seg_x + 52)
                       && (curpos.y > seg_y) && (curpos.y < seg_y + 72);

    if (!button_highlighted && new_highlighted)
    {
        //just entered button zone
        button_highlight_timer = 0;
    }

    if (new_highlighted)
    {
        suppress_cursor = true;
        
        if (menu_a_pressed) //clicked
        {
            msg_stage_stable = !msg_stage_stable;
            sound_play(msg_stage_stable ? asset_get("sfx_clairen_arc_bounce")
                                        : sound_get("poison_step") );
            button_anim_timer = 0;
        }
    }
    button_highlighted = new_highlighted;
    button_highlight_timer++;
    button_anim_timer++;
}


//persistent rewards
var taunt_control = false;
if !instance_exists(msg_persistence)
    msg_persistence = msg_get_persistent_article();
else
    taunt_control = msg_persistence.achievement_hall_of_fame;

//error spoof
if (msg_error_active)
{
    msg_error_timer++;
    suppress_cursor = true;
    if (msg_error_timer > 30) && (menu_a_pressed)
    {
        sound_play(asset_get("mfx_option"));
        msg_error_active = false;
    }
}


//set synced data
var syncdata = (taunt_control)
             + (msg_yellow_mode << 1)
             + (msg_stage_stable << 2)
             + ( (floor(os_version / 65536)%16) << 4)
             + ( (floor(os_version % 65536)%16) << 8);
set_synced_var(player, syncdata);

// #region vvv LIBRARY DEFINES AND MACROS vvv
// DANGER File below this point will be overwritten! Generated defines and macros below.
// Write NO-INJECT in a comment above this area to disable injection.
#define msg_get_persistent_article // Version 0
    missingno_requested_persistent_article = noone;
    user_event(7); //sets missingno_requested_persistent_article
    var article = missingno_requested_persistent_article;
    missingno_requested_persistent_article = noone;
    return article;
// DANGER: Write your code ABOVE the LIBRARY DEFINES AND MACROS header or it will be overwritten!
// #endregion