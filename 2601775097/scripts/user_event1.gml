//user event 1 - theikos alt visual changes

//if (!theikos_active && !godpower && !od_already_active && !theikos_alt) exit;

//effect work
if ((theikos_active || godpower || od_already_active || theikos_alt) && !is_8bit)
{
    user_event_1_active = true;
    
    fx_introlight = sprite_get("theikos_fx_introlight_back");
    plat_post_sprite = sprite_get("theikos_plat_post");

    //CUSTOM VFX
    fx_lightblow1 = hit_fx_create(sprite_get("theikos_fx_lightblow1"), 15);
    fx_lightslash = hit_fx_create(sprite_get("theikos_fx_lightslash"), 15);
    fx_lightblow2 = hit_fx_create(sprite_get("theikos_fx_lightblow2"), 25);
    fx_lightblow3 = hit_fx_create(sprite_get("theikos_fx_lightblow3"), 30);
    fx_fireblow1 = hit_fx_create(sprite_get("theikos_fx_fireblow1"), 20);
    fx_fireblow2 = hit_fx_create(sprite_get("theikos_fx_fireblow2"), 30);
    fx_fireblow3 = hit_fx_create(sprite_get("theikos_fx_fireblow3"), 40);

    // d-strong
    set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("theikos_dstrong_b"));
    fx_dstrong_fireblast = hit_fx_create(sprite_get("theikos_fx_dstrong_b_fireblast"), 40);
    fx_rockblow = hit_fx_create(sprite_get("theikos_fx_rockblow"), 27);
    set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT, fx_fireblow1);
    set_hitbox_value(AT_DSTRONG, 1, HG_HIT_PARTICLE_NUM, 6);
    set_hitbox_value(AT_DSTRONG, 3, HG_HIT_PARTICLE_NUM, 6);
    // some changed variables are in attack_update

    // u-strong
    set_hitbox_value(AT_USTRONG, 4, HG_PROJECTILE_SPRITE, sprite_get("theikos_fx_ustrong_b_lightspear_proj"));
    set_hitbox_value(AT_USTRONG, 4, HG_VISUAL_EFFECT, fx_lightslash);
    set_hitbox_value(AT_USTRONG, 4, HG_PROJECTILE_DESTROY_EFFECT, fx_lightblow1);
    set_hitbox_value(AT_USTRONG, 5, HG_PROJECTILE_SPRITE, sprite_get("theikos_fx_ustrong_b_lightspearburn_proj"));
    set_hitbox_value(AT_USTRONG, 5, HG_VISUAL_EFFECT, fx_fireblow2);
    set_hitbox_value(AT_USTRONG, 5, HG_PROJECTILE_DESTROY_EFFECT, fx_fireblow2);
    for (var i = 0; i < 4; i++) set_hitbox_value(AT_USTRONG, i, HG_HIT_PARTICLE_NUM, 5);
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
    fx_homing_afterimage = hit_fx_create(sprite_get("theikos_fx_homing_afterimage"), 16);
    set_hitbox_value(AT_SKILL7, 1, HG_VISUAL_EFFECT, fx_lightblow1);
    set_hitbox_value(AT_SKILL7, 1, HG_PROJECTILE_SPRITE, sprite_get("theikos_fx_homing_proj"));
    set_hitbox_value(AT_SKILL7, 1, HG_HIT_PARTICLE_NUM, 5);

    // [8] ember fist (the rest of the variables are in attack_update.gml)
    set_attack_value(AT_SKILL8, AG_SPRITE, sprite_get("theikos_emberfist"));
    set_attack_value(AT_SKILL8, AG_AIR_SPRITE, sprite_get("theikos_emberfist_air"));
    fx_emberfist = hit_fx_create(sprite_get("theikos_fx_emberfist"), 30);
    set_hitbox_value(AT_SKILL8, 1, HG_HIT_PARTICLE_NUM, 6);

    // [9] light hookshot
    set_hitbox_value(AT_SKILL9, 1, HG_PROJECTILE_SPRITE, sprite_get("theikos_fx_lighthookshot_proj"));
    set_hitbox_value(AT_SKILL9, 1, HG_VISUAL_EFFECT, fx_lightslash);
    set_hitbox_value(AT_SKILL9, 1, HG_PROJECTILE_DESTROY_EFFECT, fx_lightblow2);

    set_hitbox_value(AT_SKILL9, 2, HG_PROJECTILE_SPRITE, sprite_get("theikos_fx_lighthookshotburn_proj"));
    set_hitbox_value(AT_SKILL9, 2, HG_VISUAL_EFFECT, fx_fireblow2);
    set_hitbox_value(AT_SKILL9, 2, HG_PROJECTILE_DESTROY_EFFECT, fx_fireblow2);

    // [10] searing descent
    set_attack_value(AT_SKILL10, AG_SPRITE, sprite_get("theikos_searingdescent"));
    set_hitbox_value(AT_SKILL10, 1, HG_VISUAL_EFFECT, fx_fireblow1);
    set_hitbox_value(AT_SKILL10, 2, HG_VISUAL_EFFECT, fx_fireblow1);
    set_hitbox_value(AT_SKILL10, 3, HG_VISUAL_EFFECT, fx_fireblow1);
    set_hitbox_value(AT_SKILL10, 4, HG_VISUAL_EFFECT, fx_fireblow3);
    set_hitbox_value(AT_SKILL10, 5, HG_VISUAL_EFFECT, fx_fireblow2);
    set_hitbox_value(AT_SKILL10, 6, HG_VISUAL_EFFECT, fx_fireblow2);
    for (var i = 0; i < 7; i++) set_hitbox_value(AT_SKILL10, i, HG_HIT_PARTICLE_NUM, 6);

    // [11] flashbang
    fx_flashbang_lightsmear = hit_fx_create(sprite_get("theikos_fx_flashbang_lightsmear"), 9);
    fx_flashbang_firesmear = hit_fx_create(sprite_get("theikos_fx_flashbang_firesmear"), 15);

    // theikos Ustrong
    fx_lightpillar = sprite_get("theikos_fx_ustrong_lightpillar");
    set_hitbox_value(AT_USTRONG_2, 1, HG_VISUAL_EFFECT, fx_lightblow1);
    set_hitbox_value(AT_USTRONG_2, 1, HG_HIT_PARTICLE_NUM, 5);

    // theikos Dstrong
    set_attack_value(AT_DSTRONG_2, AG_SPRITE, sprite_get("theikos_dstrong"));
    fx_firesmear = hit_fx_create(sprite_get("theikos_fx_dstrong_firesmear"), 20);
    fx_fireground = hit_fx_create(sprite_get("theikos_fx_dstrong_fireground"), 90);
    set_hitbox_value(AT_DSTRONG_2, 1, HG_PROJECTILE_SPRITE, sprite_get("theikos_fx_dstrong_fireball"));
    set_hitbox_value(AT_DSTRONG_2, 1, HG_VISUAL_EFFECT, fx_fireblow1);
    set_hitbox_value(AT_DSTRONG_2, 1, HG_HIT_PARTICLE_NUM, 6);
    set_hitbox_value(AT_DSTRONG_2, 2, HG_VISUAL_EFFECT, fx_fireblow1);
    set_hitbox_value(AT_DSTRONG_2, 2, HG_HIT_PARTICLE_NUM, 6);
    set_hitbox_value(AT_DSTRONG_2, 3, HG_VISUAL_EFFECT, fx_fireblow1);
    set_hitbox_value(AT_DSTRONG_2, 3, HG_HIT_PARTICLE_NUM, 6);  
}
else
{
    user_event_1_active = false;

    fx_introlight = sprite_get("fx_introlight_back");
    plat_post_sprite = sprite_get("plat_post");
        
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
    for (var i = 0; i < 4; i++) reset_hitbox_value(AT_USTRONG, i, HG_HIT_PARTICLE_NUM);
    reset_hitbox_value(AT_USTRONG, i, HG_HIT_PARTICLE_NUM);

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
    fx_homing_afterimage = hit_fx_create(sprite_get("fx_homing_afterimage"), 16);
    reset_hitbox_value(AT_SKILL7, 1, HG_VISUAL_EFFECT);
    reset_hitbox_value(AT_SKILL7, 1, HG_HIT_PARTICLE_NUM);

    // [8] ember fist (the rest of the variables are in attack_update.gml)
    reset_attack_value(AT_SKILL8, AG_SPRITE);
    reset_attack_value(AT_SKILL8, AG_AIR_SPRITE);
    fx_emberfist = hit_fx_create(sprite_get("fx_emberfist"), 30);
    reset_hitbox_value(AT_SKILL8, 1, HG_HIT_PARTICLE_NUM);

    // [9] light hookshot
    reset_hitbox_value(AT_SKILL9, 1, HG_PROJECTILE_SPRITE);
    reset_hitbox_value(AT_SKILL9, 1, HG_VISUAL_EFFECT);
    reset_hitbox_value(AT_SKILL9, 1, HG_PROJECTILE_DESTROY_EFFECT);

    reset_hitbox_value(AT_SKILL9, 2, HG_PROJECTILE_SPRITE);
    reset_hitbox_value(AT_SKILL9, 2, HG_VISUAL_EFFECT);
    reset_hitbox_value(AT_SKILL9, 2, HG_PROJECTILE_DESTROY_EFFECT);

    // [10] searing descent
    set_attack_value(AT_SKILL10, AG_SPRITE, sprite_get("searingdescent"));
    set_hitbox_value(AT_SKILL10, 1, HG_VISUAL_EFFECT, fx_fireblow1);
    set_hitbox_value(AT_SKILL10, 2, HG_VISUAL_EFFECT, fx_fireblow1);
    set_hitbox_value(AT_SKILL10, 3, HG_VISUAL_EFFECT, fx_fireblow1);
    set_hitbox_value(AT_SKILL10, 4, HG_VISUAL_EFFECT, fx_fireblow3);
    set_hitbox_value(AT_SKILL10, 5, HG_VISUAL_EFFECT, fx_fireblow2);
    set_hitbox_value(AT_SKILL10, 6, HG_VISUAL_EFFECT, fx_fireblow2);
    for (var i = 0; i < 7; i++) reset_hitbox_value(AT_SKILL10, i, HG_HIT_PARTICLE_NUM);
    
    // [11] flashbang
    fx_flashbang_lightsmear = hit_fx_create(sprite_get("fx_flashbang_lightsmear"), 9);
    fx_flashbang_firesmear = hit_fx_create(sprite_get("fx_flashbang_firesmear"), 15);

    // theikos Ustrong
    fx_lightpillar = sprite_get("fx_ustrong_t_lightpillar");
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