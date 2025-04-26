//set_state.gml

#macro PS_GLIDE         50 // glide state


if (!free)
{
    glide_stamina = glide_stamina_max;
    
    accel_used = false;

    //gliding
    glide_ui = false;
    can_glide = true;

    //double jump height
    djump_speed = normal_djump_speed;

    //skill stuff
    start_skill_cancel = false;

    leap_used = false;
    blast_used = false;
    power_uses = 0;
    chasm_uses = 0;
}

mask_index = asset_get("ex_guy_collision_mask");

if (was_free != free) was_free = free;