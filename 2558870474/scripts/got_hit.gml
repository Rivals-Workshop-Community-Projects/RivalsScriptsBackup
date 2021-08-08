var hit_bkb = enemy_hitboxID.kb_value;
var hit_dmg = enemy_hitboxID.damage;

if instance_exists(illusion) and hit_bkb > 0 and hit_dmg > 0{
    if illusion.state != 5{
        if illusion.state == 1{
            illusion.state = 5;
            illusion.state_timer = 0;
            //spawn_hit_fx(illusion.x - (64 * spr_dir), illusion.y - 70, vfx_clonedashing_melt);
            illusion.hsp = 0;
        } else {
            illusion.state = 5;
            illusion.state_timer = 0;
            //spawn_hit_fx(illusion.x + illusion.clonevf_x, illusion.y+8, vfx_roll_clone);
            illusion.hsp = 0;
        }
    }
}

stop_fspecial = true;

if (charging and (hit_bkb > 0 and hit_dmg > 0)){
    charge = 0;
}

explosion_type = 0;
explosion_count = 0;

sound_stop(asset_get("sfx_holy_tablet_spawning"));