// called when the character get hit
cool = 0;
follow = 0;
bubble_effect = 0;
bubble_frame = 0;

if (instance_exists(bubbleg))
{
    bubbleg.depth = 0;
    if (instance_exists(bubbleg.bubbled_playerid))
    {
        bubbleg.hit = 1;
        bubbleg.bubbled_playerid.should_make_shockwave = false;
    }
    bubbleg.drag = 0;
    bubbleg.drag_x = 0;
    bubbleg.drag_y = 0;
}

if (enemy_hitboxID.type = 1 and hit_player_obj.wet > 0)
{
    hit_player_obj.wet -= 1;
}

if (pikmin != self and enemy_hitboxID.type = 1)
{
    create_hitbox(AT_FSPECIAL, 2, pikmin.x - (20 * pikmin.spr_dir), pikmin.y - floor(y_offset * 2))
    pikmin = noone;
}
