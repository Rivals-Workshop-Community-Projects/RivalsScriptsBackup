//user event 1 - theikos alt visual changes

if (theikos_active || godpower || od_already_active || get_player_color(player) == 31)
{
    //HAIR COLOR CHANGER (it only happens on the theikos alt lol)
    if (theikos_color_increase)
    {
        theikos_color_alpha += theikos_color_rate;
        theikos_red += theikos_redrate;
        theikos_green += theikos_greenrate;
        theikos_blue += theikos_bluerate;

        if (theikos_color_alpha >= theikos_color_maxTime) theikos_color_increase = false;
    }
    else
    {
        theikos_color_alpha -= theikos_color_rate; //this only controls the "if" statements
        theikos_red -= theikos_redrate;
        theikos_green -= theikos_greenrate;
        theikos_blue -= theikos_bluerate;

        if (theikos_color_alpha <= 0) theikos_color_increase = true;
    }
    color_rgb = make_color_rgb(theikos_red, theikos_green, theikos_blue);
    set_color_profile_slot(31, 1, color_get_red(color_rgb), color_get_green(color_rgb), color_get_blue(color_rgb));
    init_shader();

    if (!is_8bit)
    {
        fx_introlight = sprite_get("theikos_fx_introlight_back");

        if (burningfury_active)
        {
            fx_ustrong_lightaxe_sprite = sprite_get("theikos_fx_ustrong_b_lightaxeburn");
            fx_lightdagger = sprite_get("theikos_fx_lightdaggerburn");
            fx_lightdagger_air = sprite_get("theikos_fx_lightdaggerburn_air");
            fx_lighthookshot = sprite_get("theikos_fx_lighthookshotburn");
        }
        else
        {
            fx_ustrong_lightaxe_sprite = sprite_get("theikos_fx_ustrong_b_lightaxe");
            fx_lightdagger = sprite_get("theikos_fx_lightdagger");
            fx_lightdagger_air = sprite_get("theikos_fx_lightdagger_air");
            fx_lighthookshot = sprite_get("theikos_fx_lighthookshot");
        }

        //CUSTOM VFX
        fx_lightblow1 = hit_fx_create(sprite_get("theikos_fx_lightblow1"), 15);
        fx_lightslash = hit_fx_create(sprite_get("theikos_fx_lightslash"), 15);
        fx_lightblow2 = hit_fx_create(sprite_get("theikos_fx_lightblow2"), 25);
        fx_lightblow3 = hit_fx_create(sprite_get("theikos_fx_lightblow3"), 30);
        fx_fireblow1 = hit_fx_create(sprite_get("theikos_fx_fireblow1"), 20);
        fx_fireblow2 = hit_fx_create(sprite_get("theikos_fx_fireblow2"), 30);
        fx_fireblow3 = hit_fx_create(sprite_get("theikos_fx_fireblow3"), 40);

        // d-strong
        set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("‏‏theikos_dstrong_b"));
        fx_dstrong_fireblast = hit_fx_create(sprite_get("‏‏theikos_fx_dstrong_b_fireblast"), 40);
        fx_rockblow = hit_fx_create(sprite_get("theikos_fx_rockblow"), 27);
        // some changed variables are in attack_update

        // u-strong
        set_hitbox_value(AT_USTRONG, 4, HG_PROJECTILE_SPRITE, sprite_get("theikos_fx_ustrong_b_lightspear_proj"));
        set_hitbox_value(AT_USTRONG, 4, HG_VISUAL_EFFECT, fx_lightslash);
        set_hitbox_value(AT_USTRONG, 4, HG_PROJECTILE_DESTROY_EFFECT, fx_lightblow1);
        set_hitbox_value(AT_USTRONG, 5, HG_PROJECTILE_SPRITE, sprite_get("theikos_fx_ustrong_b_lightspearburn_proj"));
        set_hitbox_value(AT_USTRONG, 5, HG_VISUAL_EFFECT, fx_fireblow2);
        set_hitbox_value(AT_USTRONG, 5, HG_PROJECTILE_DESTROY_EFFECT, fx_fireblow2);

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
        set_hitbox_value(AT_SKILL1, 1, HG_VISUAL_EFFECT, fx_fireblow1);
        set_hitbox_value(AT_SKILL1, 1, HG_HIT_PARTICLE_NUM, 6);
        set_hitbox_value(AT_SKILL1, 2, HG_VISUAL_EFFECT, fx_fireblow1);
        set_hitbox_value(AT_SKILL1, 2, HG_HIT_PARTICLE_NUM, 6);
        set_hitbox_value(AT_SKILL1, 3, HG_VISUAL_EFFECT, fx_fireblow3);
        set_hitbox_value(AT_SKILL1, 3, HG_HIT_PARTICLE_NUM, 6);
        //air
        set_attack_value(AT_SKILL1_AIR, AG_SPRITE, sprite_get("theikos_burningfury_air"));
        set_hitbox_value(AT_SKILL1_AIR, 1, HG_VISUAL_EFFECT, fx_fireblow1);
        set_hitbox_value(AT_SKILL1_AIR, 1, HG_HIT_PARTICLE_NUM, 6);
        set_hitbox_value(AT_SKILL1_AIR, 2, HG_VISUAL_EFFECT, fx_fireblow1);
        set_hitbox_value(AT_SKILL1_AIR, 2, HG_HIT_PARTICLE_NUM, 6);
        set_hitbox_value(AT_SKILL1_AIR, 3, HG_VISUAL_EFFECT, fx_fireblow3);
        set_hitbox_value(AT_SKILL1_AIR, 3, HG_HIT_PARTICLE_NUM, 6);
        // the buffed attack variables change on attack_update

        // [2] force leap
        set_hitbox_value(AT_SKILL2, 2, HG_VISUAL_EFFECT, fx_fireblow2);
        set_hitbox_value(AT_SKILL2, 2, HG_HIT_PARTICLE_NUM, 6);
        set_hitbox_value(AT_SKILL2, 3, HG_VISUAL_EFFECT, fx_fireblow3);
        set_hitbox_value(AT_SKILL2, 3, HG_HIT_PARTICLE_NUM, 6);

        // [3] photon blast
        fx_photonblast = hit_fx_create(sprite_get("theikos_fx_photonblast"), 21);
        set_attack_value(AT_SKILL3, AG_SPRITE, sprite_get("theikos_photonblast"));
        set_hitbox_value(AT_SKILL3, 1, HG_VISUAL_EFFECT, fx_lightblow1);
        set_hitbox_value(AT_SKILL3, 1, HG_HIT_PARTICLE_NUM, 5);

        // [4] accelblitz
        fx_accelblitz = hit_fx_create(sprite_get("theikos_fx_accelblitz"), 18);
        fx_accel_indicator = sprite_get("theikos_accelblitz_indicator");
        set_hitbox_value(AT_SKILL4, 1, HG_VISUAL_EFFECT, fx_lightblow1);
        set_hitbox_value(AT_SKILL4, 1, HG_HIT_PARTICLE_NUM, 5);

        // [5] chasm burster
        set_attack_value(AT_SKILL5, AG_SPRITE, sprite_get("theikos_chasmburster"));
        set_attack_value(AT_SKILL5, AG_AIR_SPRITE, sprite_get("theikos_chasmburster_air"))

        fx_earthshatter = hit_fx_create(sprite_get("theikos_fx_chasmshatter"), 180);
        set_hitbox_value(AT_SKILL5, 2, HG_PROJECTILE_SPRITE, sprite_get("theikos_fx_chasmburster"));
        set_hitbox_value(AT_SKILL5, 2, HG_VISUAL_EFFECT, fx_fireblow1);
        set_hitbox_value(AT_SKILL5, 2, HG_HIT_PARTICLE_NUM, 6);

        set_hitbox_value(AT_SKILL5, 3, HG_VISUAL_EFFECT, fx_fireblow1);
        set_hitbox_value(AT_SKILL5, 3, HG_HIT_PARTICLE_NUM, 6);

        set_hitbox_value(AT_SKILL5, 4, HG_PROJECTILE_SPRITE, sprite_get("theikos_fx_chasmburster"));
        set_hitbox_value(AT_SKILL5, 4, HG_VISUAL_EFFECT, fx_fireblow1);
        set_hitbox_value(AT_SKILL5, 4, HG_HIT_PARTICLE_NUM, 6);

        // [6] power smash
        set_attack_value(AT_SKILL6, AG_SPRITE, sprite_get("theikos_powersmash"));
        set_hitbox_value(AT_SKILL6, 2, HG_HIT_PARTICLE_NUM, 6);
        set_hitbox_value(AT_SKILL6, 3, HG_HIT_PARTICLE_NUM, 6);

        // [7] guard aura
        fx_guardaura = hit_fx_create(sprite_get("theikos_fx_guardaura"), 15);
        set_hitbox_value(AT_SKILL7, 1, HG_VISUAL_EFFECT, fx_lightblow1);    //fx_lightblow2
        set_hitbox_value(AT_SKILL7, 1, HG_HIT_PARTICLE_NUM, 5);

        // [8] ember fist (the rest of the variables are in attack_update.gml)
        fx_emberfist = hit_fx_create(sprite_get("theikos_fx_emberfist"), 30);
        set_hitbox_value(AT_SKILL8, 1, HG_HIT_PARTICLE_NUM, 6);

        // [9] light hookshot
        set_hitbox_value(AT_SKILL9, 1, HG_PROJECTILE_SPRITE, sprite_get("theikos_fx_lighthookshot_proj"));
        set_hitbox_value(AT_SKILL9, 1, HG_VISUAL_EFFECT, fx_lightslash);
        set_hitbox_value(AT_SKILL9, 1, HG_PROJECTILE_DESTROY_EFFECT, fx_lightblow2);

        set_hitbox_value(AT_SKILL9, 2, HG_PROJECTILE_SPRITE, sprite_get("theikos_fx_lighthookshotburn_proj"));
        set_hitbox_value(AT_SKILL9, 2, HG_VISUAL_EFFECT, fx_fireblow2);
        set_hitbox_value(AT_SKILL9, 2, HG_PROJECTILE_DESTROY_EFFECT, fx_fireblow2);

        // theikos Ustrong
        set_hitbox_value(AT_USTRONG_2, 1, HG_VISUAL_EFFECT, fx_lightblow1);
        set_hitbox_value(AT_USTRONG_2, 1, HG_HIT_PARTICLE_NUM, 5);

        // theikos Dstrong
        set_attack_value(AT_DSTRONG_2, AG_SPRITE, sprite_get("theikos_dstrong"));
        fx_firesmear = hit_fx_create(sprite_get("theikos_fx_dstrong_firesmear"), 20);
        fx_fireground = hit_fx_create(sprite_get("theikos_fx_dstrong_fireground"), 90);
        set_hitbox_value(AT_DSTRONG_2, 1, HG_PROJECTILE_SPRITE, sprite_get("theikos_fx_dstrong_fireball"));
        set_hitbox_value(AT_DSTRONG_2, 1, HG_VISUAL_EFFECT, fx_fireblow1);
        set_hitbox_value(AT_DSTRONG_2, 1, HG_HIT_PARTICLE_NUM, 5);
        set_hitbox_value(AT_DSTRONG_2, 2, HG_VISUAL_EFFECT, fx_fireblow1);
        set_hitbox_value(AT_DSTRONG_2, 2, HG_HIT_PARTICLE_NUM, 5);
        set_hitbox_value(AT_DSTRONG_2, 3, HG_VISUAL_EFFECT, fx_fireblow1);
        set_hitbox_value(AT_DSTRONG_2, 3, HG_HIT_PARTICLE_NUM, 5);
    }    
}
else
{
    fx_introlight = sprite_get("fx_introlight_back");

    if (burningfury_active)
    {
        fx_ustrong_lightaxe_sprite = sprite_get("fx_ustrong_lightaxeburn");
        fx_lightdagger = sprite_get("fx_lightdaggerburn");
        fx_lightdagger_air = sprite_get("fx_lightdaggerburn_air");
        fx_lighthookshot = sprite_get("fx_lighthookshotburn");
    }
    else
    {
        fx_ustrong_lightaxe_sprite = sprite_get("empty");
        fx_lightdagger = sprite_get("empty");
        fx_lightdagger_air = sprite_get("empty");
        fx_lighthookshot = sprite_get("empty");
    }
        
    //CUSTOM VFX
    fx_lightblow1 = hit_fx_create(sprite_get("fx_lightblow1"), 15);
    fx_lightslash = hit_fx_create(sprite_get("fx_lightslash"), 15);
    fx_lightblow2 = hit_fx_create(sprite_get("fx_lightblow2"), 25);
    fx_lightblow3 = hit_fx_create(sprite_get("fx_lightblow3"), 30);
    fx_fireblow1 = hit_fx_create(sprite_get("fx_fireblow1"), 20);
    fx_fireblow2 = hit_fx_create(sprite_get("fx_fireblow2"), 30);
    fx_fireblow3 = hit_fx_create(sprite_get("fx_fireblow3"), 40);

    // d-strong
    reset_attack_value(AT_DSTRONG, AG_SPRITE);
    fx_dstrong_fireblast = hit_fx_create(sprite_get("fx_dstrong_fireblast"), 40);
    fx_rockblow = hit_fx_create(sprite_get("fx_rockblow"), 27);
    // some changed variables are in attack_update

    // u-strong
    reset_hitbox_value(AT_USTRONG, 4, HG_PROJECTILE_SPRITE);
    reset_hitbox_value(AT_USTRONG, 4, HG_VISUAL_EFFECT);
    reset_hitbox_value(AT_USTRONG, 4, HG_PROJECTILE_DESTROY_EFFECT);
    reset_hitbox_value(AT_USTRONG, 5, HG_PROJECTILE_SPRITE);
    reset_hitbox_value(AT_USTRONG, 5, HG_VISUAL_EFFECT);
    reset_hitbox_value(AT_USTRONG, 5, HG_PROJECTILE_DESTROY_EFFECT);

    // [0] light dagger
    reset_hitbox_value(AT_SKILL0, 1, HG_PROJECTILE_SPRITE);
    reset_hitbox_value(AT_SKILL0, 1, HG_VISUAL_EFFECT);
    reset_hitbox_value(AT_SKILL0, 1, HG_PROJECTILE_DESTROY_EFFECT);
    reset_hitbox_value(AT_SKILL0, 1, HG_HIT_PARTICLE_NUM);
    reset_hitbox_value(AT_SKILL0, 2, HG_PROJECTILE_SPRITE);
    reset_hitbox_value(AT_SKILL0, 2, HG_VISUAL_EFFECT);
    reset_hitbox_value(AT_SKILL0, 2, HG_PROJECTILE_DESTROY_EFFECT);
    reset_hitbox_value(AT_SKILL0, 2, HG_HIT_PARTICLE_NUM);
    //air
    reset_hitbox_value(AT_SKILL0_AIR, 1, HG_PROJECTILE_SPRITE);
    reset_hitbox_value(AT_SKILL0_AIR, 1, HG_VISUAL_EFFECT);
    reset_hitbox_value(AT_SKILL0_AIR, 1, HG_PROJECTILE_DESTROY_EFFECT);
    reset_hitbox_value(AT_SKILL0_AIR, 1, HG_HIT_PARTICLE_NUM);
    reset_hitbox_value(AT_SKILL0_AIR, 2, HG_PROJECTILE_SPRITE);
    reset_hitbox_value(AT_SKILL0_AIR, 2, HG_VISUAL_EFFECT);
    reset_hitbox_value(AT_SKILL0_AIR, 2, HG_PROJECTILE_DESTROY_EFFECT);
    reset_hitbox_value(AT_SKILL0_AIR, 2, HG_HIT_PARTICLE_NUM);
    // [0] (burning) light dagger
    reset_hitbox_value(AT_SKILL0, 3, HG_PROJECTILE_SPRITE);
    reset_hitbox_value(AT_SKILL0, 3, HG_VISUAL_EFFECT);
    reset_hitbox_value(AT_SKILL0, 3, HG_PROJECTILE_DESTROY_EFFECT);
    reset_hitbox_value(AT_SKILL0, 3, HG_HIT_PARTICLE_NUM);
    //air
    reset_hitbox_value(AT_SKILL0_AIR, 3, HG_PROJECTILE_SPRITE);
    reset_hitbox_value(AT_SKILL0_AIR, 3, HG_VISUAL_EFFECT);
    reset_hitbox_value(AT_SKILL0_AIR, 3, HG_PROJECTILE_DESTROY_EFFECT);
    reset_hitbox_value(AT_SKILL0_AIR, 3, HG_HIT_PARTICLE_NUM);

    // [1] burning fury
    reset_attack_value(AT_SKILL1, AG_SPRITE);
    reset_hitbox_value(AT_SKILL1, 1, HG_VISUAL_EFFECT);
    reset_hitbox_value(AT_SKILL1, 1, HG_HIT_PARTICLE_NUM);
    reset_hitbox_value(AT_SKILL1, 2, HG_VISUAL_EFFECT);
    reset_hitbox_value(AT_SKILL1, 2, HG_HIT_PARTICLE_NUM);
    reset_hitbox_value(AT_SKILL1, 3, HG_VISUAL_EFFECT);
    reset_hitbox_value(AT_SKILL1, 3, HG_HIT_PARTICLE_NUM);
    //air
    reset_attack_value(AT_SKILL1_AIR, AG_SPRITE);
    reset_hitbox_value(AT_SKILL1_AIR, 1, HG_VISUAL_EFFECT);
    reset_hitbox_value(AT_SKILL1_AIR, 1, HG_HIT_PARTICLE_NUM);
    reset_hitbox_value(AT_SKILL1_AIR, 2, HG_VISUAL_EFFECT);
    reset_hitbox_value(AT_SKILL1_AIR, 2, HG_HIT_PARTICLE_NUM);
    reset_hitbox_value(AT_SKILL1_AIR, 3, HG_VISUAL_EFFECT);
    reset_hitbox_value(AT_SKILL1_AIR, 3, HG_HIT_PARTICLE_NUM);
    // the buffed attack variables change on attack_update

    // [2] force leap
    reset_hitbox_value(AT_SKILL2, 2, HG_VISUAL_EFFECT);
    reset_hitbox_value(AT_SKILL2, 2, HG_HIT_PARTICLE_NUM);
    reset_hitbox_value(AT_SKILL2, 3, HG_VISUAL_EFFECT);
    reset_hitbox_value(AT_SKILL2, 3, HG_HIT_PARTICLE_NUM);

    // [3] photon blast
    fx_photonblast = hit_fx_create(sprite_get("fx_photonblast"), 21);
    reset_attack_value(AT_SKILL3, AG_SPRITE);
    reset_hitbox_value(AT_SKILL3, 1, HG_VISUAL_EFFECT);
    reset_hitbox_value(AT_SKILL3, 1, HG_HIT_PARTICLE_NUM);

    // [4] accelblitz
    fx_accelblitz = hit_fx_create(sprite_get("fx_accelblitz"), 18);
    fx_accel_indicator = sprite_get("accelblitz_indicator");
    reset_hitbox_value(AT_SKILL4, 1, HG_VISUAL_EFFECT);
    reset_hitbox_value(AT_SKILL4, 1, HG_HIT_PARTICLE_NUM);

    // [5] chasm burster
    reset_attack_value(AT_SKILL5, AG_SPRITE);
    reset_attack_value(AT_SKILL5, AG_AIR_SPRITE)

    fx_earthshatter = hit_fx_create(sprite_get("fx_chasmshatter"), 180);
    reset_hitbox_value(AT_SKILL5, 2, HG_PROJECTILE_SPRITE);
    reset_hitbox_value(AT_SKILL5, 2, HG_VISUAL_EFFECT);
    reset_hitbox_value(AT_SKILL5, 2, HG_HIT_PARTICLE_NUM);

    reset_hitbox_value(AT_SKILL5, 3, HG_VISUAL_EFFECT);
    reset_hitbox_value(AT_SKILL5, 3, HG_HIT_PARTICLE_NUM);

    reset_hitbox_value(AT_SKILL5, 4, HG_PROJECTILE_SPRITE);
    reset_hitbox_value(AT_SKILL5, 4, HG_VISUAL_EFFECT);
    reset_hitbox_value(AT_SKILL5, 4, HG_HIT_PARTICLE_NUM);

    // [6] power smash
    reset_attack_value(AT_SKILL6, AG_SPRITE);
    reset_hitbox_value(AT_SKILL6, 2, HG_HIT_PARTICLE_NUM);
    reset_hitbox_value(AT_SKILL6, 3, HG_HIT_PARTICLE_NUM);

    // [7] guard aura
    fx_guardaura = hit_fx_create(sprite_get("fx_guardaura"), 15);
    reset_hitbox_value(AT_SKILL7, 1, HG_VISUAL_EFFECT); //fx_lightblow2
    reset_hitbox_value(AT_SKILL7, 1, HG_HIT_PARTICLE_NUM);

    // [8] ember fist (the rest of the variables are in attack_update.gml)
    fx_emberfist = hit_fx_create(sprite_get("fx_emberfist"), 30);
    reset_hitbox_value(AT_SKILL8, 1, HG_HIT_PARTICLE_NUM);

    // [9] light hookshot
    reset_hitbox_value(AT_SKILL9, 1, HG_PROJECTILE_SPRITE);
    reset_hitbox_value(AT_SKILL9, 1, HG_VISUAL_EFFECT);
    reset_hitbox_value(AT_SKILL9, 1, HG_PROJECTILE_DESTROY_EFFECT);

    reset_hitbox_value(AT_SKILL9, 2, HG_PROJECTILE_SPRITE);
    reset_hitbox_value(AT_SKILL9, 2, HG_VISUAL_EFFECT);
    reset_hitbox_value(AT_SKILL9, 2, HG_PROJECTILE_DESTROY_EFFECT);

    // theikos Ustrong
    reset_hitbox_value(AT_USTRONG_2, 1, HG_VISUAL_EFFECT);
    reset_hitbox_value(AT_USTRONG_2, 1, HG_HIT_PARTICLE_NUM);

    // theikos Dstrong
    reset_attack_value(AT_DSTRONG_2, AG_SPRITE);
    fx_firesmear = hit_fx_create(sprite_get("fx_dstrong_t_firesmear"), 20);
    fx_fireground = hit_fx_create(sprite_get("fx_dstrong_t_fireground"), 90);
    reset_hitbox_value(AT_DSTRONG_2, 1, HG_PROJECTILE_SPRITE);
    reset_hitbox_value(AT_DSTRONG_2, 1, HG_VISUAL_EFFECT);
    reset_hitbox_value(AT_DSTRONG_2, 1, HG_HIT_PARTICLE_NUM);
    reset_hitbox_value(AT_DSTRONG_2, 2, HG_VISUAL_EFFECT);
    reset_hitbox_value(AT_DSTRONG_2, 2, HG_HIT_PARTICLE_NUM);
    reset_hitbox_value(AT_DSTRONG_2, 3, HG_VISUAL_EFFECT);
    reset_hitbox_value(AT_DSTRONG_2, 3, HG_HIT_PARTICLE_NUM);
}