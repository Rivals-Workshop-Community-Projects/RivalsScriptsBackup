if (state = PS_PRATFALL && !was_parried)
{
    can_fast_fall = true;
}

if ((state = PS_HITSTUN_LAND || state = PS_TECH_GROUND || state = PS_TECH_BACKWARD || state = PS_TECH_FORWARD) 
&& ustrong_parried && attack = AT_USTRONG)
{
    state = PS_PRATLAND;
    was_parried = true;
    parry_lag = 40;
    ustrong_parried = 0;
}

if (get_gameplay_time() <= 120 && !cornered_disabled && taunt_pressed)
{
    cornered_disabled = true;
}

if (state_cat = SC_HITSTUN || state_cat = SC_GROUND_NEUTRAL || state_cat = SC_AIR_NEUTRAL)
{
    char_height = 60;
    easetimer = 0;
}

if (state = PS_HITSTUN && state_timer == 1 && !hitpause 
&& prev_state == PS_ATTACK_GROUND && last_hbox_num == 1 && last_player == player
&& last_attack == AT_USTRONG)
{
    ustrong_gavel_slam_fx = hit_fx_create(sprite_get("ustrong_gavel_slam_fx"), 36);
    var ustrong_fx = spawn_hit_fx(x, y, ustrong_gavel_slam_fx);
    ustrong_fx.depth = depth - 1;
    shake_camera(5, 6);
}
            
evidence_count = (evidence1_status > 0)+(evidence2_status > 0)+(evidence3_status > 0);
good_evidence_count = (evidence1_status = 1)+(evidence2_status = 1)+(evidence3_status = 1);
bad_evidence_count = (evidence1_status = 2)+(evidence2_status = 2)+(evidence3_status = 2);

if (good_evidence_count = 0) strong_notif_timer = 120;
if (good_evidence_count > 0) strong_notif_timer--;

if (!initial_invince && get_gameplay_time() >= 240)
{
    //umvc3 percentages (g 6/9, b 2/9, f 1/9)
    //good_evidence_percent = (6-good_evidence_count) / (9-evidence_count);
    //bad_evidence_percent = (2-bad_evidence_count) / (9-evidence_count);
    //food_evidence_percent = 1 / (9-evidence_count);

    //custom 1 (g 5/8, b 2/8, f 1/8)
    //good_evidence_percent = (5-good_evidence_count) / (8-evidence_count);
    //bad_evidence_percent = (2-bad_evidence_count) / (8-evidence_count);
    //food_evidence_percent = 1 / (7.5-evidence_count);
    
    //halved food percentage (g 5/7.5, b 2/7.5, f 0.5/7.5)
    good_evidence_percent = (5-good_evidence_count) / (7.5-evidence_count);
    bad_evidence_percent = (2-bad_evidence_count) / (7.5-evidence_count);
    food_evidence_percent = 0.5 / (7.5-evidence_count);
}
else
{
    //start of match/respawn iframes (g 1/3, b 2/3, f 0/3)
    good_evidence_percent = (1-good_evidence_count) / (3-evidence_count);
    bad_evidence_percent = (2-bad_evidence_count) / (3-evidence_count);
    food_evidence_percent = 0; //you dont need to heal at 0% buddy
}

if (evidence1_status = 2) throw_evidence = 1;
else if (evidence2_status = 2) throw_evidence = 2;
else if (evidence3_status = 2) throw_evidence = 3;
else if (evidence1_status > 0) throw_evidence = 1;
else if (evidence2_status > 0) throw_evidence = 2;
else if (evidence3_status > 0) throw_evidence = 3;

if (evidence1_status = 1) parry_evidence = 1;
else if (evidence2_status = 1) parry_evidence = 2;
else if (evidence3_status = 1) parry_evidence = 3;

if (good_evidence_count = 3 && !turnabout) turnabout_ready = 1;
else turnabout_ready = 0;

if (free) move_cooldown[AT_DSPECIAL] = 2;

if (turnabout_timer > 0 && turnabout && !turnabout_timer_pause) turnabout_timer--;
if (turnabout_timer <= 0 && turnabout)
{
    evidence1_status = 0;
    evidence1 = 0;
    evidence2_status = 0; 
    evidence2 = 0; 
    evidence3_status = 0; 
    evidence3 = 0;
    evidence_count = 0;
    good_evidence_count = 0;
    bad_evidence_count = 0;
    turnabout_ready = false;
    turnabout = false;
}
if (turnabout_timer < 0) turnabout_timer = 0;
if (turnabout_timer > turnabout_timer_max) turnabout_timer = turnabout_timer_max;

if (!turnabout)
{
    set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_LENGTH, 18);
    set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_SFX_FRAME, 17);
    set_window_value(AT_NSPECIAL_2_AIR, 1, AG_WINDOW_LENGTH, 24);
    set_window_value(AT_NSPECIAL_2_AIR, 1, AG_WINDOW_SFX_FRAME, 23);
    set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_LENGTH, 15);
    set_window_value(AT_NSPECIAL_2_AIR, 3, AG_WINDOW_LENGTH, 15);
    set_hitbox_value(AT_NSPECIAL_2, 1, HG_BASE_KNOCKBACK, 10);
    set_hitbox_value(AT_NSPECIAL_2, 1, HG_KNOCKBACK_SCALING, 0);
    set_hitbox_value(AT_NSPECIAL_2, 1, HG_ANGLE, 70);
    set_hitbox_value(AT_NSPECIAL_2_AIR, 1, HG_BASE_KNOCKBACK, 8);
    set_hitbox_value(AT_NSPECIAL_2_AIR, 1, HG_KNOCKBACK_SCALING, 0);
    set_hitbox_value(AT_NSPECIAL_2_AIR, 1, HG_ANGLE, 40);

    //sound_stop(sound_get("cornered_intro"));
    //sound_stop(sound_get("cornered"));
}
else
{
    set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_LENGTH, 13);
    set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_SFX_FRAME, 12);
    set_window_value(AT_NSPECIAL_2_AIR, 1, AG_WINDOW_LENGTH, 16);
    set_window_value(AT_NSPECIAL_2_AIR, 1, AG_WINDOW_SFX_FRAME, 15);
    set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_LENGTH, 12);
    set_window_value(AT_NSPECIAL_2_AIR, 3, AG_WINDOW_LENGTH, 12);
    set_hitbox_value(AT_NSPECIAL_2, 1, HG_BASE_KNOCKBACK, 6);
    set_hitbox_value(AT_NSPECIAL_2, 1, HG_KNOCKBACK_SCALING, 0.2);
    set_hitbox_value(AT_NSPECIAL_2, 1, HG_ANGLE, 50);
    set_hitbox_value(AT_NSPECIAL_2_AIR, 1, HG_BASE_KNOCKBACK, 6);
    set_hitbox_value(AT_NSPECIAL_2_AIR, 1, HG_KNOCKBACK_SCALING, 0.2);
    set_hitbox_value(AT_NSPECIAL_2_AIR, 1, HG_ANGLE, 50);

    if (!((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && attack == AT_EXTRA_1))
    {
        // create afterimage
            if (get_gameplay_time()%5==0)
            afterimage_array[array_length_1d(afterimage_array)] = {x:x+draw_x, y:y+draw_y, spr_dir:spr_dir, sprite_index:sprite_index, image_index:image_index, rot:spr_angle, col:afterimage_colour, timer:0, timerMax:20};
    }
}

if (instance_exists(hit_player_obj) && hit_player_obj.player != player) player_i_hit = hit_player_obj;
if !(instance_exists(hit_player_obj)) player_i_hit = noone;

if (turnabout && instance_exists(player_i_hit) && player_i_hit.state = PS_RESPAWN && player_i_hit.state_timer = 1)
{
    //turnabout_timer += 210; 
    turnabout_timer_pause = 1;
	//if (get_player_color(player) == 15 && voice) sound_play(sound_get("matpat_KO"));
}

if (turnabout && instance_exists(player_i_hit) && player_i_hit.state = PS_DEAD && theory_length != -74)
{
	if (get_player_color(player) == 15) sound_play(sound_get("matpat_KO"), false, noone, 0.8);
	theory_length = -74;
}

//if (turnabout && instance_exists(hit_player_obj) && hit_player_obj.state = PS_RESPAWN && hit_player_obj.state_timer = 1)
//{
    //turnabout_timer += 210; 
//    turnabout_timer_pause = 1;
//}

move_cooldown[AT_NSPECIAL_2_AIR]--;

if (special_error_cooldown > 0) special_error_cooldown--;

if (voice)
{
    if (state_timer == 1 && !hitpause)
    {
        switch(state)
        {
            case PS_FIRST_JUMP:
            if (random_func(1, 1, false) < 0.6)
            {
                sound_play(sound_get("v_jump1"));
            }
            break;

            case PS_DOUBLE_JUMP:
            if (random_func(1, 1, false) < 0.6)
            {
                sound_play(sound_get("v_jump2"));
            }
            break;

            case PS_HITSTUN:
            if (point_distance(0, 0, old_hsp, old_vsp) > 4 && random_func(1, 1, false) < 0.5)
            {
                if (point_distance(0, 0, old_hsp, old_vsp) < 6) sound_play(sound_get("v_hurt_weak" + string(1+random_func(2, 2, true))), 0, 0, 1, 1);
                else if (point_distance(0, 0, old_hsp, old_vsp) < 10) sound_play(sound_get("v_hurt_medium" + string(1+random_func(3, 5, true))), 0, 0, 1, 1);
                else sound_play(sound_get("v_hurt_heavy" + string(1+random_func(4, 3, true))), 0, 0, 1, 1);
            }
            break;
            
            case PS_PARRY:
            if (random_func(1, 1, false) < 0.7)
            {
                if (random_func(2, 2, true) = 0) sound_play(sound_get("v_dattack_trip"));
                else sound_play(sound_get("v_stay_back"));
            }
            break;

            case PS_AIR_DODGE:
            if (random_func(1, 1, false) < 0.6)
            {
                sound_play(sound_get("v_dattack_trip"));
            }
            break;
            
            case PS_RESPAWN:
            if (random_func(1, 1, false) < 0.95)
            {
                sound_play(sound_get("v_ko"));
            }
            break;
            
        }
    }
}

// update afterimage array
var newArray = 0;
for (var i = 0; i < array_length_1d(afterimage_array); ++i)
{
    var obj = afterimage_array[i];
    if (++obj.timer <= obj.timerMax) newArray[array_length_1d(newArray)] = obj;
}
afterimage_array = newArray;

//vfx
with (hit_fx_obj) if (player_id == other) {
    if (hit_fx == other.shock_big || hit_fx == other.shock) {
        depth = player_id.depth+1;
        //spr_dir = 1;
    }
}
