//article1_hit.gml
//similarly to hit_player.gml, this script runs when the article is hit

//NOTE: articles can't spawn hitboxes, so all hitboxes are reffered to as [enemy_hitboxID], including the owning player
//      we can rule the player as exceptions using player_id, which is always the owner of the article

if (is_hittable)
{
    //this [hit_var_name] places a special var on hitboxes that hit it so they won't hit the article twice
    //projectiles usually don't have the same limitation on hits as melee hitboxes, and will hit articles every frame
    var hit_var_name = `article${id}_has_hit`;
    if (hit_var_name not in enemy_hitboxID)
    {
        variable_instance_set(enemy_hitboxID, hit_var_name, true);

        //check is the hitbox' owner is not the owner of the article or a teammate of the owner of the article
        //alternatively, check if it is owner of the article and if they are using fspec on it
        if (hit_player_obj != player_id && get_player_team(hit_player_obj.player) != get_player_team(player) ||
            hit_player_obj == player_id && enemy_hitboxID.attack == AT_FSPECIAL)
        {
            artc_hp --;
            //reduces HP by one if you want to simular % like on players you need to do it like so:
            //artc_hp += enemy_hitboxID.damage;
            //the code will take the enemy's damage from the hitbox as the value to add to the article's %

            with (enemy_hitboxID)
            {
                //applies hitstop (hitpause) to article
                other.hitstop = get_hitstop_formula(
                    (other.damage_inc * other.artc_hp_max) - other.artc_hp * other.damage_inc,
                    damage,
                    hitpause,
                    hitpause_growth,
                    extra_hitpause
                );
                player_id.hitstop = other.hitstop;

                //other things we can apply:

                //  - [ get_kb_formula ] allows us to set knockback on articles
                //      usage: get_kb_formula(current percent, knockback_adj, match setting's kb scaling, hitbox damage, hitbox's base kb, hitbox's kb scaling);

                //  - [ get_hitstun_formula ] allows us to set the hitstun for the article
                //  - hitstun is the time when the player can't act while being knocked away
                //      usage: get_hitstun_formula(current percent, knockback_adj, match setting's kb scaling, hitbox damage, hitbox's base kb, hitbox's kb scaling);



                sound_play(sound_effect); //plays the hitbox's hit sound... on hit
                spawn_hit_fx(hit_effect_x + other.x, hit_effect_y + other.y - other.article_height/2, hit_effect); //puts up the hit fx of the hitbox

                with (other) spawn_hit_fx(x, y-32, fx_dspec_hit); //spawns shards

                if (type == 2 && enemies == 0) instance_destroy(self);
            }

            //player interraction
            if (player_id.attack == AT_FSPECIAL)
            {
                if (enemy_hitboxID.hbox_num == 1) player_id.has_hit = true;
                if (enemy_hitboxID.hbox_num == 2) player_id.fspec_found_target = true;
                artc_hp ++; //it shouldn't reduce HP lol
            }
        }
        else
        {
            //if the owner of the hitbox shouldn't hit it, this will prevent them from going into hitstop (hitpause)
            //fun fact: article#_hit runs BEFORE hit_player
            with (player_id)
            {
                hitstop = 0;
                hitpause = 0;
            }
        }
    }
}