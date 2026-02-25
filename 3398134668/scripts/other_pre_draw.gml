// pre_draw is a script that draws things behind other players.

var azulaID = other_player_id;

if self = azulaID.hit_player_obj && azulaID.ultimateDarkness > 0 && azulaID.attack == 49{
    draw_sprite_ext(azulaID.blacksprite, 0, x-1500, y-1500, 3000, 3000, 0, c_white, azulaID.ultimateDarkness);
}