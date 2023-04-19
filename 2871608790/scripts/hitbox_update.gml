//hitbox_update.gml
//like update.gml, this script updates every frame whenever a hitbox that the player owns is around

//flips projectile sprite on parry
if (was_parried) draw_xscale = spr_dir;

//if (hitbox_timer == length) spawn_hit_fx(x, y, destroy_fx); //disappear effect when the projectile's lifetime is over

//item projectiles
if (attack == AT_NSPECIAL)
{
    //all nspec projectiles can hit azi unless she's using a special (besides uspec)
    if (no_azi_backfire == 0)
    {
        can_hit_self = !(was_parried || no_azi_backfire == 1 ||
            (player_id.is_attacking && (player_id.attack == AT_NSPECIAL || player_id.attack == AT_FSPECIAL
            || player_id.attack == AT_DSPECIAL || player_id.attack == AT_DSPECIAL_AIR || player_id.attack == AT_UAIR)));
    }
}

if (attack == AT_FSPECIAL && hbox_num == 2) proj_angle += 5 * spr_dir;