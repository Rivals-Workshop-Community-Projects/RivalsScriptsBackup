if (results_timer < 5) exit;

if (results_timer == 5) 
{
    msg_orig_portrait = get_char_info(player, INFO_PORTRAIT);
    msg_results_random = current_time;
    msg_results_portrait_timer = 0;
    msg_results_background_timer = 0;
}
//XORSHIFT RANDOM (AGAIN)
var UINT_MAX = 0xFFFFFFFF;
msg_results_random = (msg_results_random ^(msg_results_random << 13)) % UINT_MAX;
msg_results_random = (msg_results_random ^(msg_results_random >> 17)) % UINT_MAX;
msg_results_random = (msg_results_random ^(msg_results_random << 5 )) % UINT_MAX;
// BITWISE RANDOM UINT32 MAP = 0x00000000 00000000 00000000 00000000
//                BACKGROUND                  KIND             TIMER
//                  PORTRAIT           PL            TIMERS

//reroll portrait and background sporadically
if (msg_results_portrait_timer < 0) && (results_timer < 360)
{
    var tmult = ease_backIn( 60, 50, results_timer, 360, 40 ) / 20.0;
    msg_results_portrait_timer = tmult * (3 + ((msg_results_random >> 8) & 0x1F));
    var p = 1 + ((msg_results_random >> 24) & 0x03);

    if (player == p) set_victory_portrait(msg_orig_portrait);
    else if is_player_on(p) set_victory_portrait(get_char_info(p, INFO_PORTRAIT));
    else if is_player_on(clamp(p-1, 1, 4)) set_victory_portrait(get_char_info(clamp(p-1, 1, 4), INFO_PORTRAIT));
}
if (msg_results_background_timer < 0) && (results_timer < 320)
{
    var tmult = ease_quadIn( 20, 50, results_timer, 320) / 10.0;
    msg_results_background_timer =  tmult * (3 + (msg_results_random & 0x07));

    set_victory_bg(1 + ((msg_results_random >> 16) & 0x0F));
}

if (results_timer == 360)
{
    set_victory_bg(1 + ((msg_results_random >> 16) & 0x0F));
}
if (results_timer == 510)
{
    set_victory_portrait(msg_orig_portrait);
}

msg_results_portrait_timer--;
msg_results_background_timer--;