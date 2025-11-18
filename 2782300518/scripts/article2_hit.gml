//article3_hit.gml
//similarly to hit_player.gml, this script runs when the article is hit

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
        if (hit_player_obj != player_id && get_player_team(hit_player_obj.player) != get_player_team(player) || //check enemies
            hit_player_obj == player_id && (enemy_hitboxID.attack == AT_FSPECIAL && enemy_hitboxID.hbox_num == 1))
        {
            if (hit_player_obj != player_id)
            {
                hit_player_obj.hitstop = hitstop + 25;
                hit_player_obj.hitstop_full = hitstop + 25;
                with(hit_player_obj)
                {
                    set_state(PS_PRATFALL);
                    hit_player_obj = other;
                    old_vsp = 0;
                    old_hsp = 0;
                    vsp = 0;
                    hsp = 0;
                    orig_knock = 0;
                    hitstun = 10;
                    hitstun_full = 10;
                    has_walljump = true;
                }
            }
            countering = true;
            state = 2;
            state_timer = 0;
            window = 1;
            window_timer = 0;

            //hitbox interraction
            with (enemy_hitboxID)
            {
                sound_play(sound_effect); //plays the hitbox's hit sound... on hit
                spawn_hit_fx(hit_effect_x + other.x, hit_effect_y + other.y - other.article_height/2, hit_effect); //puts up the hit fx of the hitbox

                if (type == 2 && enemies == 0) instance_destroy(self);
                if (attack == AT_FSPECIAL && hbox_num = 1) destroyed = true;;
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

