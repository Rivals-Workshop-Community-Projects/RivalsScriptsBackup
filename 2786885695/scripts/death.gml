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

//stop nspec aim sound
sound_stop(sfx_nspec_aim);

//fspec can be used again
fspec_used = false;

//respawn halloween hat when she dies
if (alt_cur == 16 && get_match_setting(SET_SEASON) == 3) qiqi_hat = true;

if ("fs_char_initialized" not in self && has_burst) burst_charge = 0;
else if ("fs_char_initialized" in self) fs_charge = 0;

if (vhd_effect) vhd_effect = false;

if (has_rune("D")) cur_stamina = max_stamina;