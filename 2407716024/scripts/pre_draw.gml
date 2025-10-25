//Code that prevents the game from crashing. stupid gml dan fix your game

//draw_debug_text(x, y - 140, "has_hit_player: " + string(has_hit_player));
//draw_debug_text(x, y - 120, "has_hit_player_prev: " + string(peacock_has_hit_player_on_prev_frame));

//draw_debug_text(x, y - 100, "state: " + get_state_name(state));
//draw_debug_text(x, y - 80, "peacock_consecutive_cancelled_attacks: " + string(peacock_consecutive_cancelled_attacks));

//if (object_index!=oTestPlayer&&(get_char_info(player,INFO_STR_NAME)!="P"+/*lmao you thought*/"ea"+/*games*/"co"+/*koo*/"ck"||url!="2"+/*420*/"26"+/*69*/"191"+/*621*/"6872"))get_string("U"+/*thought*/"h oh!"+/*spaghettios*/"Yo"+/*yo*/"u f"+/*uck*/"ric"/*k and morty*/+"ci"/*ci's pizza*/+"n th"+/*why are you still here*/"ie"+/*pie*/"f! Yo"+/*meanie :(*/"ju"+/*st beat it*/"st g"+/*sgt frog*/"ot B"+/*eter*/"EA"+/*SPORTS*/"NED"+/*THE TED*/"!!!","")

if (instance_exists(peacock_article_doom_id))
{
    if peacock_article_doom_id.roller_freeze = true{
        draw_sprite_ext(sprite_get("white"), 0, view_get_xview(), view_get_yview(), view_get_hview() * 2, view_get_wview(), 0, c_black, 0.4);
    }
}
