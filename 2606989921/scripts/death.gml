//death.gml

//reset explosion damage
msg_exploded_damage = 0;
msg_exploded_respawn = false;

if (msg_exploded_stock_cost > 0)
{
    //this death costs extra
    set_player_stocks(player, get_player_stocks(player) - msg_exploded_stock_cost);
}
msg_exploded_stock_cost = 0;

if (msg_rune_flags.dstrong_persisting)
{
    msg_dstrong_yoyo.active = false;
    msg_dstrong_yoyo.visible = false;
}

//clears saved attack index
msg_bspecial_last_move.target = noone;
msg_bspecial_last_move.move = at_prev_attack;
msg_bspecial_last_move.small_sprites = small_sprites;
set_ui_element( UI_HUD_ICON, get_char_info( player, INFO_HUD));
set_ui_element( UI_HUDHURT_ICON, get_char_info(  player, INFO_HUDHURT));

msg_bspec_sketch_locked = false;
msg_stored_dstrong = false;
msg_stored_bspec_dstrong = false;
msg_rune_whiff_storage = -1;

msg_persistence.stage_request_breaking = 0;
msg_persistence.music_request_breaking = 0;
msg_persistence.sound_request_breaking = 0;

//banishment
if (msg_banish_cheater_to_purgatory)
{
    set_player_stocks(player, -7);

    msg_persistence.request_results_banishment = msg_is_local;
    msg_persistence.request_banish_local_player = !msg_is_local;

    end_match();  exit;
}

//cannot execute this glitch on deathboxes, teleporting back doesnt guarantee a death
var beyond_blastzone = (x > get_stage_data(SD_RIGHT_BLASTZONE_X))
                    || (x < get_stage_data(SD_LEFT_BLASTZONE_X))
                    || (y < get_stage_data(SD_TOP_BLASTZONE_Y))
                    || (y > get_stage_data(SD_BOTTOM_BLASTZONE_Y))

//======================================================
if (gfx_glitch_death_stack > 0)
{
    if (gfx_glitch_death_stack < gfx_glitch_death_stack_max)
        set_player_stocks(player, get_player_stocks(player) + 1);
    gfx_glitch_death_stack++;
}
else if (random_func(7, 8, true) == 0 || is_laststock())
     && (get_match_setting(SET_STOCKS) > 0)
     && !msg_stability_mode && beyond_blastzone
{
    var active = [0, 0,0,0,0];
    var alive = [0, 0,0,0,0];
    for (var p = 1; p <= 4; p++) if is_player_on(p)
    {
        active[get_player_team(p)] = true;
        alive[get_player_team(p)] |= get_player_stocks(p) > ((p == player) ? 1 : 0);
    }

    //do not activate if only one team is active (abyss/bosses)
    if (active[1] + active[2] + active[3] + active[4]) < 2 exit;

    gfx_glitch_death_ends_match = ( (active[1]*alive[1]) + (active[2]*alive[2])
                                + (active[3]*alive[3]) + (active[4]*alive[4]) ) < 2;

    set_player_stocks(player, get_player_stocks(player) + 1);
    gfx_glitch_death_stack = 1;
    gfx_glitch_death_position.x = x;
    gfx_glitch_death_position.y = y;
}

//bonus
msg_compat_data.stadium.reroll_sprites = true;