minion_number = orig_player_id.minion_number;

switch minion_number{
    case 0:
        minion_name = "cheeseslime";
        minion_health = 1;
        minion_speed = 1.2 + (has_rune("L") * 1.2);
        minion_turn = 0;
        minion_walkanim_speed = 0.2;
        minion_turnanim_speed = 0;
        minion_offedge = false;
        
        slime_level = -999;
        slime_left_bound = -999;
        slime_right_bound = -999;
        
        with (oPlayer){
            cheesed_timer = 0;
        }
    break;
    case 1:
        minion_name = "forknight";
        minion_health = 1;
        minion_speed = 1.2 - (has_rune("L") * 0.6);
        minion_turn = 10;
        minion_walkanim_speed = 0.2;
        minion_turnanim_speed = 0.5;
        minion_offedge = false;
    break;
    case 2:
        minion_name = "banditochicken";
        minion_health = 1;
        minion_speed = 5;
        minion_turn = 0;
        minion_walkanim_speed = 0.33;
        minion_turnanim_speed = 0;
        minion_offedge = false;
        
        jumps = 0;
        jump_timer = 50;
        bombjump = 1;
        
        custom_vsp = 0;
    break;
    case 3:
        minion_name = "badrat";
        minion_health = 1;
        minion_speed = 1.1;
        minion_turn = 0;
        minion_walkanim_speed = 0.2;
        minion_turnanim_speed = 0;
        minion_offedge = false;
        
        attack_cooldown = 40;
        attack_timer = attack_cooldown;
    break;
    case 4:
        minion_name = "ninjaslice";
        minion_health = 1;
        minion_speed = 0;
        minion_turn = 0;
        minion_walkanim_speed = 0.2;
        minion_turnanim_speed = 0;
        minion_offedge = true;
        
        attack_cooldown = 100;
        attack_timer = attack_cooldown;
    break;
    case 5:
        minion_name = "spitcheese";
        minion_health = 1;
        minion_speed = 0;
        minion_turn = 12;
        minion_walkanim_speed = 0.2;
        minion_turnanim_speed = 0.33;
        minion_offedge = true;
        
        spit_timer = 0;
        spit_time = 90;
    break;
    case 6:
        minion_name = "minijohn";
        minion_health = 10 + (has_rune("L") * 90);
        minion_speed = 0;
        minion_turn = 0;
        minion_walkanim_speed = 0.33;
        minion_turnanim_speed = 0;
        minion_offedge = true;
        
        attack_cooldown = 60;
        attack_timer = attack_cooldown;
        johnhsp = 0;
        johnvsp = 0;
    break;
}

sprite_index = sprite_get(minion_name + "_summon");
mask_index = sprite_get("summon_mask");
image_index = 0;
small_sprites = true;
image_xscale = 2;
image_yscale = 2;
depth = orig_player_id.depth - 1;

state = "SUMMON";
prev_state = state;
state_timer = 0;
spawn_invincibility = true;

for (var f = 0; f < 20; f++;){
    has_hit[f] = false;
    hit_timer[f] = false;
}

old_hsp = hsp;
old_vsp = vsp;

prev_spr_dir = spr_dir;
afterimage_array = 0;