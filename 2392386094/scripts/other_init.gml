//other_init
attack_down_prev = attack_down;
is_turn = false;
chess_state = PS_SPAWN;
chess_state_timer_max = 15;
chess_state_timer = 0;
select_state = 0;
submenu_select = [];
submenu_select_old = 0;
sel_cooldown_max = 6;
sel_cooldown = 0;
rage = 0;
char_height = 600;
spawn_index = 0;
name = get_char_info(player,INFO_STR_NAME);
portrait = get_char_info(player,INFO_PORTRAIT);
portrait_index = 0;
player_color = get_player_hud_color(player);
chess_timer = get_match_setting(SET_TIMER)*60*60;
if player == 1 {
    portrait_pos = [-100-500,-16];
} else {
    portrait_pos = [1060+500,210];
}
