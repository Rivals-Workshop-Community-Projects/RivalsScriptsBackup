//hitbox_init

fx = noone;
artc = noone;

if (destroy_fx == 0) destroy_fx = hit_effect;

if (attack == AT_USPECIAL_2)
{
    proj_speed = 20;
    hit_sound_played = false;

    shoot_projectile = false;
    saved_size_x = image_xscale;
    saved_size_y = image_yscale;
    image_xscale = 0;
    image_yscale = 0;
}

if (attack == AT_EXTRA_2)
{
    if (hbox_num == 1)
    {
        explosive_spear = player_id.burnbuff_active;
        if (explosive_spear)
        {
            sprite_index = sprite_get("fx_skill9_proj_burn");
            projectile_parry_stun = 0;
            does_not_reflect = 0;
            transcendent = 1;
            enemies = 0;
            fx_particles = 2;
            sound_effect = asset_get("sfx_forsburn_combust");
            hit_effect = player_id.fx_fireblow[0];
            destroy_fx = 1;
            hsp /= 1.5;
            length += 1.75;
        }
    }
    else
    {
        fx_particles = 2;
        with (player_id) set_hitbox_value(other.attack, 2, HG_HITBOX_COLOR, hb_color[3]);
    }
}