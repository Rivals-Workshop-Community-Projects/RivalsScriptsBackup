//article1_update.gml
//this script mirrors the player's update.gml, and where the bulk of the code for the article goes to

state_timer ++; //always count up state_timer (in this case since there's no states it can be used as a "lifetime timer")

//prevent article from being hit by the owner's teammates (unless tester is using fspecial or can hit the article with rune H)
with (oPlayer)
{
    if (get_player_team(player) == get_player_team(other.player) && player != other.player ||
        player == other.player && !has_rune("H") && (!is_attacking || attack != AT_FSPECIAL))
    {
        //can_be_hit works similarly to a move_cooldown, where it's a timer that counts down to 0
        other.can_be_hit[player] = 2;
    }
}

//gravity field rune
if (has_rune("H"))
{
    if (gravity_field_time > 0)
    {
        gravity_field_time --;

        with (oPlayer) if (player != other.player && !invincible && state != PS_DEAD && state != PS_RESPAWN && !hurtboxID.dodging)
        {
            var drag_dist = point_distance(other.x, other.y - other.article_height/2, x, y);
            var drag_angle = point_direction(other.x, other.y, x, y);
            var drag_speed = (drag_dist - other.gravity_field_range) / 50 - 1;
            
            if (drag_dist <= other.gravity_field_range)
            {
                if (y < other.y && position_meeting(x, y + 1, asset_get("par_jumpthrough")) && !free) y += 4;
                go_through = true;
                free = true;

                hsp += lengthdir_x(drag_speed, drag_angle);
                vsp += lengthdir_y(drag_speed, drag_angle);
            }
        }
    }
}


if (artc_hp > 0) image_index = lerp(image_number, 0, artc_hp/artc_hp_max); //spreads frames accross the different health values, article becomes more damage
else if (artc_hp <= 0 && hitstop <= 0) //article has no health so it spontaniously conbusts lmao
{
    with (player_id) move_cooldown[AT_DSPECIAL] = 180;
    spawn_hit_fx(x, y-article_height/2, fx_dspec_despawn); //spawns explosion hit fx
    sound_play(asset_get("sfx_ell_strong_attack_explosion")); //plays exolosion sound

    if (has_rune("D")) create_hitbox(AT_DSPECIAL, 1, x, y-article_height/2);
    instance_destroy(); //destroys the article, make sure there is nothing below this point
    exit; //but if there is, add exit; to make it ignore the rest of the script for that frame
}