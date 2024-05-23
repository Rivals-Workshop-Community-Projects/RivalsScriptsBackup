///#args attack
//  ^ this line up here makes gmedit not freak out

//set_attack.gml
if (attack == AT_TAUNT) taunt_pose = 0;

if (attack == AT_DATTACK && has_rune("H")) //dattack misfire rune (commented out)
{
    has_misfired = false;
    if (random_func(5, 8, true) == 0) //misfire
    {
        has_misfired = true;
        window = 1;
        window_timer = 6;
        shake_camera(6, 10);
        sound_play(asset_get("mfx_result_expand"));
        sound_play(asset_get("sfx_swipe_heavy2"));
        sound_play(asset_get("sfx_absa_harderhit"));
        set_window_value(attack, 2, AG_WINDOW_HSPEED, 20);
        set_attack_value(attack, AG_OFF_LEDGE, 1);
        set_attack_value(attack, AG_CATEGORY, 2);
        set_hitbox_value(attack, 1, HG_HITBOX_COLOR, hb_color[2]);
    }
    else
    {
        reset_window_value(attack, 2, AG_WINDOW_HSPEED);
        reset_attack_value(attack, AG_OFF_LEDGE);
        reset_attack_value(attack, AG_CATEGORY);
        reset_hitbox_value(attack, 1, HG_HITBOX_COLOR);
    }
}

//do the darkness transition to rumia
if (attack == AT_DSPECIAL && dark_target != self && dark_target != noone) attack = AT_DSPECIAL_2;


if (can_superspell && attack == AT_NSPECIAL)
{
    attack = 49;
    if ("fs_char_initialized" in self) fs_force_fs = true;
}