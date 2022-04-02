// called when the character gets KO'd

//strongs/charge attacks get reset
charge_attack = false;

//nspec cooldown reset
if (nspec_cd > 0)
{
    nspec_cd = -1;
    hud_anim_timer = 0;
    hud_anim_start = true;
}

//fspec can be used again
fspec_used = false;

//respawn halloween hat when she dies
if (alt_cur == 16 && get_match_setting(SET_SEASON) == 3) qiqi_hat = true;