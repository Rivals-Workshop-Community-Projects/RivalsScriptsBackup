//ai_update.gml

with (ai_target) if ("char_height" not in self) exit; //prevents annoying error message

//CPU fight mode check
if (get_training_cpu_action() == CPU_FIGHT) cpu_fight_time ++;
else cpu_fight_time = 0;

target_dist = point_distance(x, y, ai_target.x, ai_target.y);
target_angle = point_direction(x, y-char_height/2, ai_target.x, ai_target.y-ai_target.char_height/2);
with (oPlayer) if (get_player_team(player) != get_player_team(other.player))
{
    other.target_respawn = ((state == PS_RESPAWN || respawn_taunt > 0) && !get_match_setting(SET_PRACTICE));
}

//recovery logic
if (ai_recovering)
{
    if (darkness_active && state_cat != SC_AIR_COMMITTED && state_cat != SC_GROUND_COMMITTED &&
        (y < room_width/2 && point_distance(stage_left, stage_top, x, y) >= 200 || y > room_width/2 && point_distance(stage_right, stage_top, x, y) >= 200))
    {
        dark_state = 4;
        sound_play(asset_get("sfx_abyss_despawn"));
    }

    if (can_attack) if (x < stage_left - 200 || x > stage_right + 200) set_attack(AT_NSPECIAL);
}

//fight logic
if (cpu_fight_time > 0)
{
    //facing target check
    target_face = (x > ai_target.x && spr_dir == -1 || x < ai_target.x && spr_dir == 1);

    if (is_attacking) switch (attack)
    {
        case AT_JAB: //random chance to jab 2
            if (window == 3 && window_timer >= get_window_value(attack, window, AG_WINDOW_CANCEL_FRAME) && random_func(8, 4, true) == 0)
            {
                window ++;
                window_timer = 0;
            }
            break;
        case AT_NSPECIAL: //turning with nspec
            if (!ai_recovering && window == 2 && window_timer == 1 && !target_face && !nspec_turned)
            {
                spr_dir = -spr_dir;
				nspec_turned = true;
            }
            break;
        case AT_DSPECIAL: //orb creation conditions
            if (instance_exists(pHitBox) && get_player_team(pHitBox.player) != get_player_team(player) &&
                point_distance(x, y-char_height/2, pHitBox.x + pHitBox.hsp, pHitBox.y + pHitBox.vsp) > 80 ||
                !instance_exists(pHitBox) && (target_dist > 150 || ai_target.x < stage_left - 100 || ai_target.x > stage_right + 100 ||
                target_respawn) )
            {
                special_down = true;
            }
            break;
        case AT_USTRONG: case AT_FSTRONG: case AT_DSTRONG: //random strong charge
            strong_down = (random_func(10, 100, true) <= 90);
            break;
    }
}

#define ai_attack(atk)
{
    attack = atk;
    window = 1;
    window_timer = 0;
    state = free ? PS_ATTACK_AIR : PS_ATTACK_GROUND;
}