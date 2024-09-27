//article1_update.gml
//this script mirrors the player's update.gml, and where the bulk of the code for the article goes to

state_timer ++; //always count up state_timer (in this case since there's no states it can be used as a "lifetime timer")

if (artc_hp > 0) image_index = lerp(image_number, 0, artc_hp/artc_hp_max); //spreads frames accross the different health values, article becomes more damage
else if (artc_hp <= 0 && hitstop <= 0) //article has no health so it spontaniously conbusts lmao
{
    with (player_id) move_cooldown[AT_DSPECIAL] = 180;
    spawn_hit_fx(x, y-article_height/2, fx_dspec_despawn); //spawns explosion hit fx
    sound_play(asset_get("sfx_ell_strong_attack_explosion")); //plays exolosion sound

    if (has_rune("D")) create_hitbox(AT_DSPECIAL, 1, x, y-article_height/2);
    instance_destroy(); //destroys the article
}