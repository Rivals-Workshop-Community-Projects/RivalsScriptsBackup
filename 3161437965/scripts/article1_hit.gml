//article1_hit.gml

var hit_var_name = `article${id}_has_hit`;
if (hit_var_name not in enemy_hitboxID)
{
    variable_instance_set(enemy_hitboxID, hit_var_name, true);

    
    if (enemy_hitboxID.player != player) artc_hp --; //enemy interraction

    //hitbox interraction
    with (enemy_hitboxID)
    {
        //applies hitstop (hitpause) to article
        other.hitstop = get_hitstop_formula(
            30, //usually the current damage of the article
            damage * lerp(1, 1.6, player_id.strong_charge/60), //hitbox damage, the math is used to add in the strong charge damage increase
            hitpause, //base hitpause
            hitpause_growth, //hitpause scaling
            extra_hitpause //extra hitpause
        );

        sound_play(sound_effect); //plays the hitbox's hit sound... on hit
        var fx = spawn_hit_fx( //puts up the hit fx of the hitbox
            hit_effect_x + lerp(other.x, x, 0.5),
            hit_effect_y + lerp(other.y, y, 0.5) - 32,
            hit_effect
        );
        fx.hit_angle = spr_dir == 1 ? get_hitbox_angle(self) : get_hitbox_angle(self) - 180; //some hit effects use this variable for angling hit fx

        if (type == 2 && enemies == 0) instance_destroy(self);
    }
    
}