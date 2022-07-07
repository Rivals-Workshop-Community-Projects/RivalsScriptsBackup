// ==================== GRAFFITI CSS_UPDATE  ======================
// change the value of this variable to reflect which alt has the graffiti taunt
var graffiti_alt = 27;

/* set sync'd variable if the player is currently using the graffiti alt
- some assembly may be required if you need to use the sync'd variable for other things, as well
- i suggest looking into bitwise operators if that's the case
- the sync'd variable is also called from:
    - set_attack.gml
    - css_draw.gml (not necessary, only used in this character to display which alt has the graffiti taunt)
*/
if get_player_color(player) == graffiti_alt {
    set_synced_var(player, true);
}
else {
    set_synced_var(player, false);
}
// ================================================================
