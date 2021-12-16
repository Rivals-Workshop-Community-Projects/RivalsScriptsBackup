//user event 1 - theikos alt visual changes

//if (!theikos_active && !godpower && !od_already_active && !theikos_alt) exit;

//effect work
if ((theikos_active || godpower || od_already_active || theikos_alt) && !is_8bit)
{
    user_event_1_active = true;
    
    fx_introlight = sprite_get("theikos_fx_introlight_back");
    plat_post_sprite = sprite_get("theikos_plat_post");

    //CUSTOM VFX
    fx_lightblow1 = fx_t_lightblow1;
    fx_lightslash = fx_t_lightslash;
    fx_lightblow2 = fx_t_lightblow2;
    fx_lightblow3 = fx_t_lightblow3;
    fx_fireblow1 = 	fx_t_fireblow1;
    fx_fireblow2 = 	fx_t_fireblow2;
    fx_fireblow3 = 	fx_t_fireblow3;

    fx_dstrong_fireblast = 		fx_t_dstrong_fireblast;
    fx_rockblow = 				fx_t_rockblow;
    fx_photonblast = 			fx_t_photonblast;
    fx_accelblitz = 			fx_t_accelblitz;
    fx_chasmburster = 			fx_t_chasmburster;
    fx_earthshatter = 			fx_t_earthshatter;
    fx_homing_afterimage = 		fx_t_homing_afterimage;
    fx_emberfist = 				fx_t_emberfist;
    fx_flashbang_lightsmear = 	fx_t_flashbang_lightsmear;
    fx_flashbang_firesmear = 	fx_t_flashbang_firesmear;
    fx_firesmear = 				fx_t_firesmear;
    fx_fireground = 			fx_t_fireground;

    // d-strong
    set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("theikos_dstrong_b"));
    set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT, fx_fireblow1);
    set_hitbox_value(AT_DSTRONG, 1, HG_HIT_PARTICLE_NUM, 6);
    set_hitbox_value(AT_DSTRONG, 3, HG_VISUAL_EFFECT, fx_fireblow1);
    set_hitbox_value(AT_DSTRONG, 3, HG_HIT_PARTICLE_NUM, 6);
    // some changed variables are in attack_update

    // u-strong
    set_hitbox_value(AT_USTRONG, 4, HG_PROJECTILE_SPRITE, sprite_get("theikos_fx_ustrong_b_lightspear_proj"));
    set_hitbox_value(AT_USTRONG, 4, HG_VISUAL_EFFECT, fx_lightslash);
    set_hitbox_value(AT_USTRONG, 4, HG_PROJECTILE_DESTROY_EFFECT, fx_lightblow1);
    for (var i = 0; i < 4; i++) set_hitbox_value(AT_USTRONG, i, HG_HIT_PARTICLE_NUM, 5);
    set_hitbox_value(AT_USTRONG, 5, HG_PROJECTILE_SPRITE, sprite_get("theikos_fx_ustrong_b_lightspearburn_proj"));
    set_hitbox_value(AT_USTRONG, 5, HG_VISUAL_EFFECT, fx_fireblow2);
    set_hitbox_value(AT_USTRONG, 5, HG_PROJECTILE_DESTROY_EFFECT, fx_fireblow2);
    set_hitbox_value(AT_USTRONG, 5, HG_HIT_PARTICLE_NUM, 6);

    // [0] light dagger
    set_hitbox_value(AT_SKILL0, 1, HG_PROJECTILE_SPRITE, sprite_get("theikos_fx_lightdagger_proj"));
    set_hitbox_value(AT_SKILL0, 1, HG_VISUAL_EFFECT, fx_lightslash);
    set_hitbox_value(AT_SKILL0, 1, HG_PROJECTILE_DESTROY_EFFECT, fx_lightblow1);
    set_hitbox_value(AT_SKILL0, 1, HG_HIT_PARTICLE_NUM, 5);
    set_hitbox_value(AT_SKILL0, 2, HG_PROJECTILE_SPRITE, sprite_get("theikos_fx_lightdagger_proj"));
    set_hitbox_value(AT_SKILL0, 2, HG_VISUAL_EFFECT, fx_lightslash);
    set_hitbox_value(AT_SKILL0, 2, HG_PROJECTILE_DESTROY_EFFECT, fx_lightblow1);
    set_hitbox_value(AT_SKILL0, 2, HG_HIT_PARTICLE_NUM, 5);
    //air
    set_hitbox_value(AT_SKILL0_AIR, 1, HG_PROJECTILE_SPRITE, sprite_get("theikos_fx_lightdagger_proj"));
    set_hitbox_value(AT_SKILL0_AIR, 1, HG_VISUAL_EFFECT, fx_lightslash);
    set_hitbox_value(AT_SKILL0_AIR, 1, HG_PROJECTILE_DESTROY_EFFECT, fx_lightblow1);
    set_hitbox_value(AT_SKILL0_AIR, 1, HG_HIT_PARTICLE_NUM, 5);
    set_hitbox_value(AT_SKILL0_AIR, 2, HG_PROJECTILE_SPRITE, sprite_get("theikos_fx_lightdagger_proj"));
    set_hitbox_value(AT_SKILL0_AIR, 2, HG_VISUAL_EFFECT, fx_lightslash);
    set_hitbox_value(AT_SKILL0_AIR, 2, HG_PROJECTILE_DESTROY_EFFECT, fx_lightblow1);
    set_hitbox_value(AT_SKILL0_AIR, 2, HG_HIT_PARTICLE_NUM, 5);
    // [0] (burning) light dagger
    set_hitbox_value(AT_SKILL0, 3, HG_PROJECTILE_SPRITE, sprite_get("theikos_fx_lightdaggerburn_proj"));
    set_hitbox_value(AT_SKILL0, 3, HG_VISUAL_EFFECT, fx_fireblow1);
    set_hitbox_value(AT_SKILL0, 3, HG_PROJECTILE_DESTROY_EFFECT, fx_fireblow1);
    set_hitbox_value(AT_SKILL0, 3, HG_HIT_PARTICLE_NUM, 6);
    //air
    set_hitbox_value(AT_SKILL0_AIR, 3, HG_PROJECTILE_SPRITE, sprite_get("theikos_fx_lightdaggerburn_proj"));
    set_hitbox_value(AT_SKILL0_AIR, 3, HG_VISUAL_EFFECT, fx_fireblow1);
    set_hitbox_value(AT_SKILL0_AIR, 3, HG_PROJECTILE_DESTROY_EFFECT, fx_fireblow1);
    set_hitbox_value(AT_SKILL0_AIR, 3, HG_HIT_PARTICLE_NUM, 6);

    // [1] burning fury
    set_attack_value(AT_SKILL1, AG_SPRITE, sprite_get("theikos_burningfury"));
    set_attack_value(AT_SKILL1_AIR, AG_SPRITE, sprite_get("theikos_burningfury_air"));
    for (var i = 0; i <= 2; i++)
    {
        set_hitbox_value(AT_SKILL1, i, HG_VISUAL_EFFECT, fx_fireblow1);
        set_hitbox_value(AT_SKILL1, i, HG_HIT_PARTICLE_NUM, 6);
        set_hitbox_value(AT_SKILL1_AIR, i, HG_VISUAL_EFFECT, fx_fireblow1);
        set_hitbox_value(AT_SKILL1_AIR, i, HG_HIT_PARTICLE_NUM, 6);
    }
    set_hitbox_value(AT_SKILL1, 3, HG_VISUAL_EFFECT, fx_fireblow3);
    set_hitbox_value(AT_SKILL1, 3, HG_HIT_PARTICLE_NUM, 6);
    set_hitbox_value(AT_SKILL1_AIR, 3, HG_VISUAL_EFFECT, fx_fireblow3);
    set_hitbox_value(AT_SKILL1_AIR, 3, HG_HIT_PARTICLE_NUM, 6);
    // the buffed attack variables change on attack_update

    // [2] force leap
    set_hitbox_value(AT_SKILL2, 2, HG_VISUAL_EFFECT, fx_fireblow2);
    set_hitbox_value(AT_SKILL2, 2, HG_HIT_PARTICLE_NUM, 6);
    set_hitbox_value(AT_SKILL2, 3, HG_VISUAL_EFFECT, fx_fireblow3);
    set_hitbox_value(AT_SKILL2, 3, HG_HIT_PARTICLE_NUM, 6);

    // [3] photon blast
    set_attack_value(AT_SKILL3, AG_SPRITE, sprite_get("theikos_photonblast"));
    set_hitbox_value(AT_SKILL3, 1, HG_VISUAL_EFFECT, fx_lightblow1);
    set_hitbox_value(AT_SKILL3, 1, HG_HIT_PARTICLE_NUM, 5);

    // [4] accelblitz
    set_hitbox_value(AT_SKILL4, 1, HG_VISUAL_EFFECT, fx_lightblow1);
    set_hitbox_value(AT_SKILL4, 1, HG_HIT_PARTICLE_NUM, 5);

    // [5] chasm burster
    set_attack_value(AT_SKILL5, AG_SPRITE, sprite_get("theikos_chasmburster"));
    set_attack_value(AT_SKILL5, AG_AIR_SPRITE, sprite_get("theikos_chasmburster_air"))
    for (var i = 2; i <= 4; i++)
    {
        set_hitbox_value(AT_SKILL5, i, HG_VISUAL_EFFECT, fx_fireblow1);
        set_hitbox_value(AT_SKILL5, i, HG_HIT_PARTICLE_NUM, 6);
    }

    // [6] power smash
    set_attack_value(AT_SKILL6, AG_SPRITE, sprite_get("theikos_powersmash"));
    set_hitbox_value(AT_SKILL6, 2, HG_VISUAL_EFFECT, fx_fireblow2);
    set_hitbox_value(AT_SKILL6, 2, HG_HIT_PARTICLE_NUM, 6);
    set_hitbox_value(AT_SKILL6, 2, HG_VISUAL_EFFECT, fx_fireblow1);
    set_hitbox_value(AT_SKILL6, 3, HG_HIT_PARTICLE_NUM, 6);

    // [7] polaris
    set_hitbox_value(AT_SKILL7, 1, HG_PROJECTILE_SPRITE, sprite_get("theikos_fx_homing_proj"));
    set_hitbox_value(AT_SKILL7, 1, HG_VISUAL_EFFECT, fx_lightblow1)
    set_hitbox_value(AT_SKILL7, 1, HG_HIT_PARTICLE_NUM, 5);

    // [8] ember fist (the rest of the variables are in attack_update.gml)
    set_attack_value(AT_SKILL8, AG_SPRITE, sprite_get("theikos_emberfist"));
    set_attack_value(AT_SKILL8, AG_AIR_SPRITE, sprite_get("theikos_emberfist_air"));
    set_hitbox_value(AT_SKILL8, 1, HG_HIT_PARTICLE_NUM, 6);

    // [9] light hookshot
    set_hitbox_value(AT_SKILL9, 1, HG_PROJECTILE_SPRITE, sprite_get("theikos_fx_lighthookshot_proj"));
    set_hitbox_value(AT_SKILL9, 1, HG_VISUAL_EFFECT, fx_lightslash);
    set_hitbox_value(AT_SKILL9, 1, HG_PROJECTILE_DESTROY_EFFECT, fx_lightblow2);
    //set_hitbox_value(AT_SKILL9, 2, HG_PROJECTILE_SPRITE, sprite_get("theikos_fx_lighthookshotburn_proj"));

    // [10] searing descent
    set_attack_value(AT_SKILL10, AG_SPRITE, sprite_get("theikos_searingdescent"));
    for (var i = 0; i < 7; i++)
    {
        set_hitbox_value(AT_SKILL10, i, HG_HIT_PARTICLE_NUM, 6);
        if (i <= 3) set_hitbox_value(AT_SKILL10, i, HG_VISUAL_EFFECT, fx_fireblow1);
        else if (i == 4) set_hitbox_value(AT_SKILL10, i, HG_VISUAL_EFFECT, fx_fireblow3);
        else set_hitbox_value(AT_SKILL10, i, HG_VISUAL_EFFECT, fx_fireblow2);
    }

    // theikos Ustrong
    fx_lightpillar = sprite_get("theikos_fx_ustrong_lightpillar");
    set_hitbox_value(AT_USTRONG_2, 1, HG_VISUAL_EFFECT, fx_fireblow1);
    set_hitbox_value(AT_USTRONG_2, 1, HG_HIT_PARTICLE_NUM, 5);

    // theikos Dstrong
    set_attack_value(AT_DSTRONG_2, AG_SPRITE, sprite_get("theikos_dstrong"));
    set_hitbox_value(AT_DSTRONG_2, 1, HG_PROJECTILE_SPRITE, sprite_get("theikos_fx_dstrong_fireball"));
    for (var i = 0; i <= 3; i++)
    {
        set_hitbox_value(AT_DSTRONG_2, i, HG_VISUAL_EFFECT, fx_fireblow1);
        set_hitbox_value(AT_DSTRONG_2, i, HG_HIT_PARTICLE_NUM, 5);
    }
}
else
{
    user_event_1_active = false;

    fx_introlight = sprite_get("fx_introlight_back");
    plat_post_sprite = sprite_get("plat_post");
        
    //CUSTOM VFX
    fx_lightblow1 = fx_b_lightblow1;
    fx_lightslash = fx_b_lightslash;
    fx_lightblow2 = fx_b_lightblow2;
    fx_lightblow3 = fx_b_lightblow3;
    fx_fireblow1 = 	fx_b_fireblow1;
    fx_fireblow2 = 	fx_b_fireblow2;
    fx_fireblow3 = 	fx_b_fireblow3;

    fx_dstrong_fireblast = 		fx_b_dstrong_fireblast;
    fx_rockblow = 				fx_b_rockblow;
    fx_photonblast = 			fx_b_photonblast;
    fx_accelblitz = 			fx_b_accelblitz;
    fx_chasmburster = 			fx_b_chasmburster;
    fx_earthshatter = 			fx_b_earthshatter;
    fx_homing_afterimage = 		fx_b_homing_afterimage;
    fx_emberfist = 				fx_b_emberfist;
    fx_flashbang_lightsmear = 	fx_b_flashbang_lightsmear;
    fx_flashbang_firesmear = 	fx_b_flashbang_firesmear;
    fx_firesmear = 				fx_b_firesmear;
    fx_fireground = 			fx_b_fireground;

    // d-strong
    set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("dstrong"));
    set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT, fx_fireblow1);
    set_hitbox_value(AT_DSTRONG, 1, HG_HIT_PARTICLE_NUM, 2);
    set_hitbox_value(AT_DSTRONG, 3, HG_VISUAL_EFFECT, fx_fireblow1);
    set_hitbox_value(AT_DSTRONG, 3, HG_HIT_PARTICLE_NUM, 2);
    // some changed variables are in attack_update

    // u-strong
    set_hitbox_value(AT_USTRONG, 4, HG_PROJECTILE_SPRITE, sprite_get("fx_ustrong_lightspear_proj"));
    set_hitbox_value(AT_USTRONG, 4, HG_VISUAL_EFFECT, fx_lightslash);
    set_hitbox_value(AT_USTRONG, 4, HG_PROJECTILE_DESTROY_EFFECT, fx_lightblow1);
    for (var i = 0; i < 4; i++) set_hitbox_value(AT_USTRONG, i, HG_HIT_PARTICLE_NUM, 1);
    set_hitbox_value(AT_USTRONG, 5, HG_PROJECTILE_SPRITE, sprite_get("fx_ustrong_lightspearburn_proj"));
    set_hitbox_value(AT_USTRONG, 5, HG_VISUAL_EFFECT, fx_fireblow2);
    set_hitbox_value(AT_USTRONG, 5, HG_PROJECTILE_DESTROY_EFFECT, fx_fireblow2);
    set_hitbox_value(AT_USTRONG, 5, HG_HIT_PARTICLE_NUM, 2);

    // [0] light dagger
    set_hitbox_value(AT_SKILL0, 1, HG_PROJECTILE_SPRITE, sprite_get("fx_lightdagger_proj"));
    set_hitbox_value(AT_SKILL0, 1, HG_VISUAL_EFFECT, fx_lightslash);
    set_hitbox_value(AT_SKILL0, 1, HG_PROJECTILE_DESTROY_EFFECT, fx_lightblow1);
    set_hitbox_value(AT_SKILL0, 1, HG_HIT_PARTICLE_NUM, 1);
    set_hitbox_value(AT_SKILL0, 2, HG_PROJECTILE_SPRITE, sprite_get("fx_lightdagger_proj"));
    set_hitbox_value(AT_SKILL0, 2, HG_VISUAL_EFFECT, fx_lightslash);
    set_hitbox_value(AT_SKILL0, 2, HG_PROJECTILE_DESTROY_EFFECT, fx_lightblow1);
    set_hitbox_value(AT_SKILL0, 2, HG_HIT_PARTICLE_NUM, 1);
    //air
    set_hitbox_value(AT_SKILL0_AIR, 1, HG_PROJECTILE_SPRITE, sprite_get("fx_lightdagger_proj"));
    set_hitbox_value(AT_SKILL0_AIR, 1, HG_VISUAL_EFFECT, fx_lightslash);
    set_hitbox_value(AT_SKILL0_AIR, 1, HG_PROJECTILE_DESTROY_EFFECT, fx_lightblow1);
    set_hitbox_value(AT_SKILL0_AIR, 1, HG_HIT_PARTICLE_NUM, 1);
    set_hitbox_value(AT_SKILL0_AIR, 2, HG_PROJECTILE_SPRITE, sprite_get("fx_lightdagger_proj"));
    set_hitbox_value(AT_SKILL0_AIR, 2, HG_VISUAL_EFFECT, fx_lightslash);
    set_hitbox_value(AT_SKILL0_AIR, 2, HG_PROJECTILE_DESTROY_EFFECT, fx_lightblow1);
    set_hitbox_value(AT_SKILL0_AIR, 2, HG_HIT_PARTICLE_NUM, 1);
    // [0] (burning) light dagger
    set_hitbox_value(AT_SKILL0, 3, HG_PROJECTILE_SPRITE, sprite_get("fx_lightdaggerburn_proj"));
    set_hitbox_value(AT_SKILL0, 3, HG_VISUAL_EFFECT, fx_fireblow1);
    set_hitbox_value(AT_SKILL0, 3, HG_PROJECTILE_DESTROY_EFFECT, fx_fireblow1);
    set_hitbox_value(AT_SKILL0, 3, HG_HIT_PARTICLE_NUM, 2);
    //air
    set_hitbox_value(AT_SKILL0_AIR, 3, HG_PROJECTILE_SPRITE, sprite_get("fx_lightdaggerburn_proj"));
    set_hitbox_value(AT_SKILL0_AIR, 3, HG_VISUAL_EFFECT, fx_fireblow1);
    set_hitbox_value(AT_SKILL0_AIR, 3, HG_PROJECTILE_DESTROY_EFFECT, fx_fireblow1);
    set_hitbox_value(AT_SKILL0_AIR, 3, HG_HIT_PARTICLE_NUM, 2);

    // [1] burning fury
    set_attack_value(AT_SKILL1, AG_SPRITE, sprite_get("burningfury"));
    set_attack_value(AT_SKILL1_AIR, AG_SPRITE, sprite_get("burningfury_air"));
    for (var i = 0; i <= 2; i++)
    {
        set_hitbox_value(AT_SKILL1, i, HG_VISUAL_EFFECT, fx_fireblow1);
        set_hitbox_value(AT_SKILL1, i, HG_HIT_PARTICLE_NUM, 2);
        set_hitbox_value(AT_SKILL1_AIR, i, HG_VISUAL_EFFECT, fx_fireblow1);
        set_hitbox_value(AT_SKILL1_AIR, i, HG_HIT_PARTICLE_NUM, 2);
    }
    set_hitbox_value(AT_SKILL1, 3, HG_VISUAL_EFFECT, fx_fireblow3);
    set_hitbox_value(AT_SKILL1, 3, HG_HIT_PARTICLE_NUM, 2);
    set_hitbox_value(AT_SKILL1_AIR, 3, HG_VISUAL_EFFECT, fx_fireblow3);
    set_hitbox_value(AT_SKILL1_AIR, 3, HG_HIT_PARTICLE_NUM, 2);
    // the buffed attack variables change on attack_update

    // [2] force leap
    set_hitbox_value(AT_SKILL2, 2, HG_VISUAL_EFFECT, fx_fireblow2);
    set_hitbox_value(AT_SKILL2, 2, HG_HIT_PARTICLE_NUM, 2);
    set_hitbox_value(AT_SKILL2, 3, HG_VISUAL_EFFECT, fx_fireblow3);
    set_hitbox_value(AT_SKILL2, 3, HG_HIT_PARTICLE_NUM, 2);

    // [3] photon blast
    set_attack_value(AT_SKILL3, AG_SPRITE, sprite_get("photonblast"));
    set_hitbox_value(AT_SKILL3, 1, HG_VISUAL_EFFECT, fx_lightblow1);
    set_hitbox_value(AT_SKILL3, 1, HG_HIT_PARTICLE_NUM, 1);

    // [4] accelblitz
    set_hitbox_value(AT_SKILL4, 1, HG_VISUAL_EFFECT, fx_lightblow1);
    set_hitbox_value(AT_SKILL4, 1, HG_HIT_PARTICLE_NUM, 1);

    // [5] chasm burster
    set_attack_value(AT_SKILL5, AG_SPRITE, sprite_get("chasmburster"));
    set_attack_value(AT_SKILL5, AG_AIR_SPRITE, sprite_get("chasmburster_air"))
    for (var i = 2; i <= 4; i++)
    {
        set_hitbox_value(AT_SKILL5, i, HG_VISUAL_EFFECT, fx_fireblow1);
        set_hitbox_value(AT_SKILL5, i, HG_HIT_PARTICLE_NUM, 2);
    }

    // [6] power smash
    set_attack_value(AT_SKILL6, AG_SPRITE, sprite_get("powersmash"));
    set_hitbox_value(AT_SKILL6, 2, HG_VISUAL_EFFECT, fx_fireblow2);
    set_hitbox_value(AT_SKILL6, 2, HG_HIT_PARTICLE_NUM, 2);
    set_hitbox_value(AT_SKILL6, 2, HG_VISUAL_EFFECT, fx_fireblow1);
    set_hitbox_value(AT_SKILL6, 3, HG_HIT_PARTICLE_NUM, 2);

    // [7] polaris
    set_hitbox_value(AT_SKILL7, 1, HG_PROJECTILE_SPRITE, sprite_get("fx_homing_proj"));
    set_hitbox_value(AT_SKILL7, 1, HG_VISUAL_EFFECT, fx_lightblow1)
    set_hitbox_value(AT_SKILL7, 1, HG_HIT_PARTICLE_NUM, 1);

    // [8] ember fist (the rest of the variables are in attack_update.gml)
    set_attack_value(AT_SKILL8, AG_SPRITE, sprite_get("emberfist"));
    set_attack_value(AT_SKILL8, AG_AIR_SPRITE, sprite_get("emberfist_air"));
    set_hitbox_value(AT_SKILL8, 1, HG_HIT_PARTICLE_NUM, 2);

    // [9] light hookshot
    set_hitbox_value(AT_SKILL9, 1, HG_PROJECTILE_SPRITE, sprite_get("fx_lighthookshot_proj"));
    set_hitbox_value(AT_SKILL9, 1, HG_VISUAL_EFFECT, fx_lightslash);
    set_hitbox_value(AT_SKILL9, 1, HG_PROJECTILE_DESTROY_EFFECT, fx_lightblow2);
    //set_hitbox_value(AT_SKILL9, 2, HG_PROJECTILE_SPRITE, sprite_get("fx_lighthookshotburn_proj"));

    // [10] searing descent
    set_attack_value(AT_SKILL10, AG_SPRITE, sprite_get("searingdescent"));
    for (var i = 0; i < 7; i++)
    {
        set_hitbox_value(AT_SKILL10, i, HG_HIT_PARTICLE_NUM, 2);
        if (i <= 3) set_hitbox_value(AT_SKILL10, i, HG_VISUAL_EFFECT, fx_fireblow1);
        else if (i == 4) set_hitbox_value(AT_SKILL10, i, HG_VISUAL_EFFECT, fx_fireblow3);
        else set_hitbox_value(AT_SKILL10, i, HG_VISUAL_EFFECT, fx_fireblow2);
    }

    // theikos Ustrong
    fx_lightpillar = sprite_get("fx_ustrong_t_lightpillar");
    set_hitbox_value(AT_USTRONG_2, 1, HG_VISUAL_EFFECT, fx_fireblow1);
    set_hitbox_value(AT_USTRONG_2, 1, HG_HIT_PARTICLE_NUM, 1);

    // theikos Dstrong
    set_attack_value(AT_DSTRONG_2, AG_SPRITE, sprite_get("dstrong_t"));
    set_hitbox_value(AT_DSTRONG_2, 1, HG_PROJECTILE_SPRITE, sprite_get("fx_dstrong_t_fireball"));
    for (var i = 0; i <= 3; i++)
    {
        set_hitbox_value(AT_DSTRONG_2, i, HG_VISUAL_EFFECT, fx_fireblow1);
        set_hitbox_value(AT_DSTRONG_2, i, HG_HIT_PARTICLE_NUM, 1);
    }
}