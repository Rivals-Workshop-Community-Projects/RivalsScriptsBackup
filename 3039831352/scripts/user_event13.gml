//hit_player.gml

//this line makes sure that the hitboxes belong to us and not someone like kragg
if (my_hitboxID.orig_player_id != self || my_hitboxID.attack == 0 && my_hitboxID.hbox_num <= 2) exit;

var true_damage = floor(my_hitboxID.damage * lerp(1, 1.6, strong_charge/60));

//combo / boost mechanics, they should only run once per frame
if (my_hitboxID.attack != AT_USPECIAL ||
    ((hit_player_obj.object_index == oPlayer && hit_player_obj.state_cat == SC_HITSTUN ||
    "enemy_stage_article" in hit_player_obj && hit_player_obj.state == 6) && !hit_player_obj.bubbled))
{
    hit_player_lock ++;
    if (hit_player_lock <= 1)
    {
        if (free) trick_input_time = trick_input_set;

        //boost gain
        boost_cur += (true_damage * boost_hitgain_mult[boost_mode]) / (total_players <= 0 ? 1 : (total_players - 1)*1.5);
        if (boost_cur >= boost_max) boost_cur = boost_max;

        //combo counter
        combo_hits ++;
        combo_timer = combo_time_gain_hit + ("hitstun_full" in hit_player_obj ? hit_player_obj.hitstun_full : 30);
        combo_timer_full = combo_timer;
        comboing = true;
    }
}

if ((my_hitboxID.hit_effect == fx_windhit[0] && my_hitboxID.attack == AT_FSPECIAL ||
    my_hitboxID.hit_effect == fx_windhit[1]) && my_hitboxID.attack != AT_DSTRONG)
{
    var temp_fx = spawn_hit_fx(x, y, hit_fx_create(sprite_get("fx_windpart"), floor(hitstop_full + 10)));
    temp_fx.x = floor(lerp(x, hit_player_obj.x, 0.5));
    temp_fx.y = floor(lerp(y - char_height/1.75, hit_player_obj.y - char_height/1.75, 0.5));
    temp_fx.spr_dir = 1;
    temp_fx.draw_ring_angle = point_direction(x, y, old_hsp + x, old_vsp + y);
}

switch (my_hitboxID.attack)
{
    case AT_DSTRONG:
        //push enemies to blue tornado
        if (my_hitboxID.hbox_num == 1) hit_player_obj.old_hsp = (dstrong_start_x - hit_player_obj.x)/30;

        //makes it so the bash hitbox won't be able to hit people out of the tornado
		if (my_hitboxID.hbox_num == 2)
        {
            check_can_hit = array_clone(my_hitboxID.can_hit);
            with (pHitBox) if (player == other.player && attack == AT_DSTRONG && hbox_num == 1) can_hit = array_clone(other.check_can_hit);
        }
		break;
    case AT_DATTACK:
        old_vsp = -7;
        old_hsp /= 2;
        break;
    case AT_FAIR:
        if (my_hitboxID.hbox_num < get_num_hitboxes(attack) && old_vsp > -1 && state_cat != SC_HITSTUN) old_vsp = (is_super ? 0 : -1);
        // old_vsp = min(old_vsp, -6);
        break;
    case AT_EXTRA_1: //knuckles fire dunk
        if (my_hitboxID.hbox_num == 1) sound_play(asset_get("sfx_blow_heavy2"));
        break;
    case AT_DSPECIAL:
        if (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND)
        {
            window = 4;
            window_timer = 0;
            old_hsp = 0;
            old_vsp = 0;
            sound_stop(sound_get("sfx_bounce"));
            sound_play(sound_get("sfx_bounce"));
        }
        break;
    case 49: //final smash
        switch (my_hitboxID.hbox_num)
        {
            case 1: //stun
                spawn_hit_fx(hit_player_obj.x, floor(hit_player_obj.y - hit_player_obj.char_height/1.75), fx_windhit[0]);

                var temp_fx = spawn_hit_fx(x, y, hit_fx_create(sprite_get("fx_windpart"), 16));
                temp_fx.x = floor(lerp(x, hit_player_obj.x, 0.5));
                temp_fx.y = floor(lerp(y - char_height/1.75, hit_player_obj.y - char_height/1.75, 0.5));
                temp_fx.spr_dir = 1;
                temp_fx.draw_ring_angle = point_direction(x, y, prev_fs_x + x, prev_fs_y + y);
                break;
            case 2: //blast
                spawn_hit_fx(hit_player_obj.x, floor(hit_player_obj.y - hit_player_obj.char_height/1.75), HFX_ELL_FSPEC_BIG_HIT);
                break;
        }
        break;
    case 0: //stray hitboxes
        switch (my_hitboxID.hbox_num)
        {
            case 3: //sonic wave
                sound_play(asset_get("sfx_holy_lightning"), false, 0, 0.6);
                sound_play(asset_get("sfx_bird_sidespecial"), false, 0, 0.6, 2);
                break;
            case 4: //spinjump
                // if (y < hit_player_obj.y && old_vsp > -7) old_vsp = -7;
                runeC_hitlock = runeC_hitlock_set;
                my_hitboxID.length = 0; //kill hitbox

                attack_end(0);
                break;
            case 5: //super sonic bolt
                runeB_hitlock = runeB_hitlock_set;
                my_hitboxID.length = 0; //kill hitbox

                attack_end(0);
                break;
        }
        break;
}

if (boost_cur >= boost_max) boost_cur = boost_max;



//i hate complex math
var postblast_mult = blast_post_timer > 0 ? 0.75 : 1; //used after a final smash
var boost_mult = boost_mode ? 2 : 1; //used if sonic is in boost mode

if (has_blast) blast_cur += true_damage * postblast_mult * boost_mult;

//hit rings out of people
if (has_superform)
{
    if (hit_player_obj.object_index == oPlayer && hit_player_obj.player < 5)
    {
        var amount = min(floor(true_damage / 2) + 1, 10);
        var speed = 2.5;

        for (var i = 0; i < amount; i ++)
        {
            var ring = create_hitbox(
                0, 1,
                floor(hit_player_obj.x),
                floor(hit_player_obj.y - hit_player_obj.char_height / 1.75)
            );
            var ring_angle = ( (random_func(i, 20, true)*2) - 20) + 90 - old_hsp;
            ring.hsp = lengthdir_x(9 + random_func(i, 4, true)/2, ring_angle);
            ring.vsp = -7 - random_func(i+amount, 4, true)/2;
            ring.ring_player = player;
        }
    }
    else
    {
        rings_cur += min(floor(true_damage / 2) + 1, 10);
        if (rings_cur >= rings_max) rings_cur = rings_max;
    }

    if (is_super)
    {
        if ("enemy_stage_article" in hit_player_obj) hp -= floor(true_damage * 1);
        else take_damage(hit_player_obj.player, player, floor(true_damage * 1)); //super sonic has a x2 damage multiplier
    }
}