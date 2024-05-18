//SAVE point update

exist_timer ++;
hitbox_view = get_match_setting(SET_HITBOX_VIS);

//if enemy players fly into it with hitstun they get recorded
var check_col = collision_circle(x - 1, y - 33, collision_radius, oPlayer, true, true);
var runeI = has_rune("I");
if (check_col != noone && check_col != player_id) with (oPlayer)
{
    if (get_player_team(player) != get_player_team(other.player) && (state == PS_HITSTUN || runeI) && !hitpause && other.saved_player == other.player_id)
    {
        //they only get recorded if the recorded player is the owner chara
        other.saved_player = self;
        other.saved_hsp = hsp;
        other.saved_vsp = vsp;
        sound_play(asset_get("sfx_diamond_collect"));
        with (other) spawn_hit_fx(x, y-32, player_id.fx_load);
    }
}

//prevent article from being hit by the owner's teammates
with (oPlayer) if (get_player_team(player) == get_player_team(other.player) && player != other.player || player == other.player) other.can_be_hit[player] = 2;

//warping enemy player after set amount of time
if (saved_player != player_id)
{
    player_id.move_cooldown[AT_DSPECIAL] = 2;

    enemy_warp_timer --;
    if (enemy_warp_timer <= 0)
    {
        saved_player.x = x;
        saved_player.y = y;
        if has_rune("J") with(saved_player){
            free = true;
            set_state(PS_PRATFALL);
            hsp = 0;
            vsp = -3;
			was_parried = true;
			parry_lag = 60;
        }
    }
}

//star visual stuff
real_image_index += anim_speed;
image_angle += spin_speed;
if (artc_hp == 1 && exist_timer % 2 == 0) image_alpha = (random_func(1, 10, true) <= 3); //about to be destroyed


//destroy article if either the stored player is dead, chara is dead, the enemy warped or the hp is 0
if (saved_player.state == PS_RESPAWN || saved_player.state == PS_DEAD ||
    player_id.state == PS_RESPAWN || player_id.state == PS_DEAD ||
    enemy_warp_timer <= 0 || chara_warped ||
    artc_hp <= 0)
{
    spawn_hit_fx(x, y-32, player_id.fx_load);
    sound_play(asset_get("mfx_star"))
    instance_destroy();
    exit;
}