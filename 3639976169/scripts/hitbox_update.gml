//hitbox_update
/*if (attack == AT_EXTRA_1)
{
    x = target.x;
    y = target.y;
}*/
/*if (attack == AT_USPECIAL && hbox_num == 1 && self == player_id.)
{
    player_id.meteor_x = x;
    player_id.meteor_y = y;
}*/
var will_destroy_timer = length == hitbox_timer;
if ((destroyed || will_destroy_timer) && hbox_num == 1 && attack == AT_USPECIAL)
{
    var hb = create_hitbox(AT_USPECIAL, 2, x, y + (will_destroy_timer ? 0 : 25));
    sound_play(asset_get("sfx_abyss_explosion"), false, noone, 1, 1);
    shake_camera( 12, 8 );
    array_copy(hb.can_hit, 0, can_hit, 0, array_length(can_hit));
    if (will_destroy_timer)
    {
        hb.image_xscale = 0.4;
        hb.image_yscale = 0.4;
        with (player_id) spawn_hit_fx(other.x, other.y, vfx_meteor_explode);
    }
    else
    {
        with (player_id) spawn_hit_fx(other.x, other.y, vfx_meteor_land);
    }
    with (hb)
    {
        reflected = other.reflected;
        last_player_id = other.last_player_id;
        player = other.player;
        was_parried = other.was_parried;
        bashed = other.bashed;
    }
}