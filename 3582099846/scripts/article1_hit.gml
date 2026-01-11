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

    if (enemy_hitboxID.x < x) spr_dir = -1;
    if (enemy_hitboxID.x > x) spr_dir = 1;

    hsp = 3 * dcos(enemy_hitboxID.kb_angle);
    vsp = -3 * dsin(enemy_hitboxID.kb_angle);
    print(hsp)
    print(vsp)

    giraffe_health -= floor(enemy_hitboxID.damage * (1 + (hit_player_obj.strong_charge/100)))
    can_be_hit[enemy_hitboxID.player] = 10;
    state = 0;
    state_timer = 0;
    image_index = 13;
    giraffe_owner = enemy_hitboxID.player;
    if giraffe_health <= 0 && state < 2
    {
	    state = 2;
    	state_timer = 0;
    	image_index = 21;
	    is_hittable = false;
    }
    if(enemy_hitboxID.type == 1) hit_player_obj.has_hit = true;
    
    
    //hitbox interraction
    with (enemy_hitboxID)
    {
            //applies hitstop (hitpause) to article
            other.hitstop = floor(get_hitstop_formula(
            20, //usually the current damage of the article
            damage * lerp(1, 1.6, player_id.strong_charge/60), //hitbox damage, the math is used to add in the strong charge damage increase
            hitpause, //base hitpause
            hitpause_growth, //hitpause scaling
            extra_hitpause //extra hitpause
        ));

        sound_play(sound_effect); //plays the hitbox's hit sound... on hit
        var fx = spawn_hit_fx(hit_effect_x + other.x, hit_effect_y + other.y - other.article_height/2, hit_effect); //puts up the hit fx of the hitbox
        fx.hit_angle = spr_dir == 1 ? get_hitbox_angle(self) : get_hitbox_angle(self) - 180; //some hit effects use this variable for angling hit fx

        if (type == 2 && enemies == 0) instance_destroy(self);
    }
}
