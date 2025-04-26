//hitbox_update.gml
//like update.gml, this script updates every frame whenever a hitbox that the player owns is around

//flips projectile sprite on parry
if (was_parried) draw_xscale = spr_dir;

//if (hitbox_timer == length) spawn_hit_fx(x, y, destroy_fx); //disappear effect when the projectile's lifetime is over

if (attack == AT_FSPECIAL && hbox_num <= 2 && hitbox_timer == length-1) {
    var vfx = spawn_hit_fx(x, y, player_id.poison_small_vfx);
    vfx.hsp = hsp;
    vfx.vsp = vsp;
    vfx.spr_dir = spr_dir;
    vfx.draw_angle = proj_angle;
    vfx.step_timer = 8;
}