//got_hit.gml

var true_damage = floor(enemy_hitboxID.damage * lerp(1, 1.6, hit_player_obj.strong_charge/60));

//boost loss
if (blast_post_timer == 0)
{
    if (hitstun > 0) boost_cur -= true_damage * boost_hitloss_mult[boost_mode];
    if (boost_cur <= 0) boost_cur = 0;
}

//homing attack clash
if (prev_state == PS_ATTACK_AIR && attack == AT_NSPECIAL && hit_window == 7 &&
    "is_bar_sonic" in hit_player_obj && enemy_hitboxID.attack == AT_NSPECIAL && enemy_hitboxID.hbox_num == 2)
{
    nspec_clash_id = hit_player_obj;
    orig_knock = 0;
    state = PS_ATTACK_AIR;
    state_timer = 0;
    attack = AT_NSPECIAL;
    window = 8;
    window_timer = 9;

    hitstop = 10;
    hitstop_full = 10;
    set_window_value(AT_NSPECIAL, 9, AG_WINDOW_LENGTH, 20);
    should_make_shockwave = false;
    
    with (nspec_clash_id)
    {
        hitstop = 10;
        hitstop_full = 10;
        set_window_value(AT_NSPECIAL, 9, AG_WINDOW_LENGTH, 20);
    }
}

//combo counter
if (!instance_exists(nspec_clash_id))
{
    combo_timer = 0;
    trick_combo_end = false;
}

if (my_grab_id != noone)
{
    my_grab_id.hitstop = 0;
    my_grab_id = noone;

    if (enemy_hitboxID.kb_value == 0) set_state(PS_IDLE);
}

//knuckles tag team action
if (get_match_setting(SET_TEAMS) && get_match_setting(SET_TEAMATTACK))
{
    //Spam knuckles check
    with (enemy_hitboxID.player_id) if ("url" in self && url == 2924948563 && get_player_team(player) == get_player_team(other.player)) var team_knuckles = self;

    if (instance_exists(team_knuckles) && enemy_hitboxID.player_id == team_knuckles && enemy_hitboxID.attack == AT_FAIR)
    {
        //should only work if sonic is charging a homing attack/rocket accel
        if (was_free && prev_state == PS_ATTACK_AIR && attack == AT_NSPECIAL && hit_window == 2)
        {
            has_hit = false;
            has_hit_player = false;
            take_damage(player, enemy_hitboxID.player, -true_damage);

            hitstop = 5;
            hitpause = true;
            team_knuckles.hitstop = 5;
            team_knuckles.hitpause = true;
            team_knuckles.old_hsp = 0;
            team_knuckles.old_vsp = -4;
            with (team_knuckles)
            {
                sound_play(asset_get("sfx_blow_heavy1"));
                sound_play(asset_get("sfx_ell_uspecial_explode"));
                spawn_hit_fx(other.x, other.y - 32, 253)
            }

            attack = AT_EXTRA_1;
            set_state(PS_ATTACK_AIR);
            hurtboxID.sprite_index = get_attack_value(AT_EXTRA_1, AG_HURTBOX_SPRITE);

            attack_end(AT_EXTRA_1);
            var hb = create_hitbox(AT_EXTRA_1, 1, x, y);
            hb.can_hit[team_knuckles.player] = false;

            homing_dist = homing_dist_knux;
            spr_dir = team_knuckles.spr_dir;
        }
    }
}

//rings hit out of sonic
if (has_superform)
{
    var amount = min(floor(true_damage / 2) + 1, 10);
    var speed = 2.5;
    //var hit_player_dir = (x < hit_player_obj.x) ? -1 : 1;

    //if i want sonic to not drop rings if he is hit and doesn't have rings - use the loop below instead
    //for (var i = 0; i < (rings_cur < amount ? rings_cur : amount); i ++)

    for (var i = 0; i < amount; i ++) //ring drops
    {
        if ("is_bar_sonic" not in hit_player_obj) 
        {
            var ring = create_hitbox(
                0, 1,
                floor(x),
                floor(y - char_height / 1.75)
            );
            var ring_angle = ( (random_func(i, 20, true)*2) - 20) + 90 - old_hsp;
            ring.hsp = lengthdir_x(9 + random_func(i, 4, true)/2, ring_angle);
            ring.vsp = -7 - random_func(i+amount, 4, true)/2;
            ring.ring_player = hit_player_obj.player;
        }
    }

    if (!is_super) rings_cur -= clamp(rings_cur, 0, i);
}