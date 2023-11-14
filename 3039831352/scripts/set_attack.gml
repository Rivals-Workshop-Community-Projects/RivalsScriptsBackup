///#args attack
//  ^ this line up here makes gmedit not freak out

//set_attack.gml

draw_x = 0;
draw_y = 0;
spr_angle = 0;

//insta full charge fspec from jump cancel
if (attack == AT_FSPECIAL && fspec_supercharge > 0) window_loops = 3;

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

//lightspeed charge rune
if (attack == AT_DSPECIAL && !free && !boost_mode && has_rune("D")) attack = AT_DSPECIAL_2;

if (attack == AT_TAUNT && has_superform && rings_cur >= 50 && !is_super) attack = 48;