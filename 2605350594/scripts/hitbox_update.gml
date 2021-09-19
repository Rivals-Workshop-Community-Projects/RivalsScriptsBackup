if(attack == AT_NSPECIAL)
{
    if(hitbox_timer == length-1)
    {
        nspec_diss = hit_fx_create(sprite_get("nspecial_dissipate"), 10);
        nspecfx = spawn_hit_fx( x, y, nspec_diss);
    }
    if(was_parried)
        length = 60;
}