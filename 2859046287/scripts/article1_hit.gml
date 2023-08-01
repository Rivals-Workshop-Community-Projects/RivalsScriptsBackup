//article1_hit.gml
//similarly to hit_player.gml, this script runs when the article is hit

//NOTE: articles can't spawn hitboxes, so all hitboxes are reffered to as [enemy_hitboxID], including the owning player
//      we can rule the player as exceptions using player_id, which is always the owner of the article

//this [hit_var_name] places a special var on hitboxes that hit it so they won't hit the article twice
//projectiles usually don't have the same limitation on hits as melee hitboxes, and will hit articles every frame
var hit_var_name = `article${id}_has_hit`;
if (hit_var_name not in enemy_hitboxID)
{
    variable_instance_set(enemy_hitboxID, hit_var_name, true);

    //check is the hitbox' owner is not the owner of the article or a teammate of the owner of the article
    //alternatively, check if it is owner of the article and if they are using fspecial on it
    if (get_player_team(enemy_hitboxID.player) != get_player_team(player) || //check enemies
        enemy_hitboxID.player == player && (enemy_hitboxID.attack == AT_FSPECIAL || //check owner used fspecial
        (has_rune("H") && can_be_hit[player] == 0 && (enemy_hitboxID.attack != AT_FTILT || enemy_hitboxID.hbox_num != 2))) //rune H shenanigans
    )
    {
        if (enemy_hitboxID.player != player) //enemy interraction
        {
            artc_hp --;
            //reduces HP by one if you want to simular % like on players you need to do it like so:
            //artc_hp += enemy_hitboxID.damage * lerp(1, 1.6, hit_player_obj.strong_charge/60);
        }
        else //player interraction (fspec / rune H)
        {
            if (player_id.attack == AT_FSPECIAL) //fspecial tether
            {
                if (enemy_hitboxID.hbox_num == 1) player_id.has_hit = true;
                if (enemy_hitboxID.hbox_num == 2) player_id.fspec_found_target = true;
            }
            
            if (has_rune("H")) //gravity field
            {
                gravity_field_time = gravity_field_lifetime; //starts field pull
                can_be_hit[player] = 1 + gravity_field_cd_set; //sets the cooldown untill tester can hit the article again
                var fx = spawn_hit_fx(x, y - article_height/2, fx_gravfield); //spawns vfx
                fx.depth = 5; //set vfx to appear behind players

                if (player_id.attack == AT_USTRONG)
                {
                    sound_play(asset_get("sfx_ori_seinhit_heavy")); //play both these sounds when it hits someone
                    sound_play(asset_get("sfx_blow_heavy2"));
                }
            }
        }

        //hitbox interraction
        with (enemy_hitboxID)
        {
            //applies hitstop (hitpause) to article
            other.hitstop = get_hitstop_formula(
                (other.damage_inc * other.artc_hp_max) - other.artc_hp * other.damage_inc, //usually the current damage of the article
                damage * lerp(1, 1.6, player_id.strong_charge/60), //hitbox damage, the math is used to add in the strong charge damage increase
                hitpause, //base hitpause
                hitpause_growth, //hitpause scaling
                extra_hitpause //extra hitpause
            );

            //  - [ get_kb_formula ] allows us to set knockback on articles
            //      usage: get_kb_formula(current percent, knockback_adj, match setting's kb scaling, hitbox damage, hitbox's base kb, hitbox's kb scaling);

            //  - [ get_hitstun_formula ] allows us to set the hitstun for the article
            //  - hitstun is the time when the player can't act while being knocked away
            //      usage: get_hitstun_formula(current percent, knockback_adj, match setting's kb scaling, hitbox damage, hitbox's base kb, hitbox's kb scaling);

            sound_play(sound_effect); //plays the hitbox's hit sound... on hit
            var fx = spawn_hit_fx(hit_effect_x + other.x, hit_effect_y + other.y - other.article_height/2, hit_effect); //puts up the hit fx of the hitbox
            fx.hit_angle = spr_dir == 1 ? get_hitbox_angle(self) : get_hitbox_angle(self) - 180; //some hit effects use this variable for angling hit fx

            with (other) spawn_hit_fx(x, y-32, fx_dspec_hit); //spawns shards

            if (type == 2 && enemies == 0) instance_destroy(self);
        }
    }
}