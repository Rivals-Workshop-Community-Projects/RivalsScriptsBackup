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


//clears saved attack index
msg_bspecial_last_move.target = noone;
msg_bspecial_last_move.move = AT_TAUNT;

msg_persistence.stage_request_breaking = GET_RNG(16, 0x01) * noone;
msg_persistence.music_request_breaking = GET_RNG(17, 0x01) * noone;
msg_persistence.sound_request_breaking = GET_RNG(18, 0x01) * noone;

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

// #region vvv LIBRARY DEFINES AND MACROS vvv
// DANGER File below this point will be overwritten! Generated defines and macros below.
// Write NO-INJECT in a comment above this area to disable injection.
#define GET_RNG(offset, mask) // Version 0
    // ===========================================================
    // returns a random number from the seed by using the mask.
    // uses "msg_unsafe_random" implicitly.
    return (mask <= 0) ? 0
           :((msg_unsafe_random >> offset) & mask);
// DANGER: Write your code ABOVE the LIBRARY DEFINES AND MACROS header or it will be overwritten!
// #endregion