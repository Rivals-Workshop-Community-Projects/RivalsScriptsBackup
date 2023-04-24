//hitbox_update.gml

//flips projectile sprite on parry
if (was_parried) draw_xscale = spr_dir;

if (attack == AT_FSPECIAL) //fspec disappear effect
{
    /*
    if (hitbox_timer % 2 == 0)
    {
        var fx = spawn_hit_fx(
            x + (random_func(5, 5, true)-3) * 8 - 32 * spr_dir,
            y + (random_func(6, 5, true)-3) * 4,
            hit_fx_create(sprite_get("fx_dark_part"), (random_func(6, 10, true) + 2) * 2)
        );
        fx.draw_angle = 180;
        fx.hsp = -spr_dir;
    }
    */

    if (hitbox_timer == length-1) //vanish vfx
    {
        var fx = spawn_hit_fx(x, y, player_id.fx_fspec_proj_end);
        fx.hsp = hsp/4;
        fx.vsp = vsp/4;
        fx.spr_dir = spr_dir;
        fx.draw_angle = proj_angle;
    }
}