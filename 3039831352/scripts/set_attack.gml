///#args attack
//  ^ this line up here makes gmedit not freak out

//set_attack.gml

draw_x = 0;
draw_y = 0;
spr_angle = 0;
window_loops = 0;

switch (attack)
{
    case AT_FSPECIAL:
        //insta full charge fspec from jump cancel
        if (fspec_supercharge > 0) window_loops = 3;
        break;
    case AT_DSPECIAL:
        //lightspeed charge rune redirect
        if (!free && !boost_mode && has_rune("D")) attack = AT_DSPECIAL_2;
        break;
    case AT_TAUNT:
        //super transformation
        if (has_superform && rings_cur >= 50 && !is_super) attack = 48;
        break;
}
//beam clash compatibility
if (attack != AT_FSPECIAL) clash = false;

//final smash
if (can_teamblast && special_pressed && joy_pad_idle && !free)
{
    attack = 49;
    if (!instance_exists(fs_bg_effect))
    {
        fs_bg_effect = instance_create(x , y - 48, "obj_article2");
    }

    if ("fs_char_initialized" in self) fs_force_fs = true;
}

//outta here input ver, aka ragequit button
if (taunt_pressed && special_down && shield_down && !get_match_setting(SET_PRACTICE) && !playtest_active && !free)
{
    attack = 3;
    if (uses_super_sprites) window = 10;
}
airdash_stats = [1, 0, 0, -1];