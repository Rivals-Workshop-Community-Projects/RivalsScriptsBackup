enum UCH_STATE
{
    SELECTING = 0,
    BUILDING = 1,
    FIGHTING = 2,
    RESULTS = 3
}
if (!initialized)
{
    with (oPlayer)
    {
        if (is_player_on(player))
        {
            instance_create(get_marker_x(1), get_marker_y(1), "obj_stage_article", 1).owner = player;
        }
    }
    initialized = true;
}

else
{
    
if (get_gameplay_time() = 120)
{
    with (oPlayer) if (is_player_on(player))
    {
        other.player_count++;
        if (temp_level = 0)
            other.non_cpu_player_count++;
    }
    
    if (non_cpu_player_count <= 2)
        eligible_for_extra_box = true;
    else
    {
        print_debug(player_count);
        print_debug(non_cpu_player_count);
    }
}

// Code to run when initially changing states
if (prev_stage_state != current_stage_state)
{
    prev_stage_state = current_stage_state;
    state_transition_timer = 60;
    current_state_timer = 0;
    switch (current_stage_state)
    {
        case UCH_STATE.SELECTING:
        {
            if (!instance_exists(party_box))
            {
                party_box = instance_create(get_marker_x(1), 2000, "obj_stage_article", 90);
                party_box.depth = -4;
            }
            if (has_extra_box)
                party_box.sprite_index = sprite_get("party_box");
            else
                party_box.sprite_index = sprite_get("extra_party_box");
            set_bg_data(6, BG_LAYER_Y, 10000);
            //print_debug ("Initializing select menu!");
            with (obj_stage_article)
            {
                if (get_article_script(id) == 1)
                {
                    enabled = true;
                    x = get_marker_x(1);
                    y = get_marker_y(1);
                    selected_item = -1;
                }
            }
            with (oPlayer) if (is_player_on(player))
                uch_immune_to_blackhole = false;
            
            break;
        }        
        case UCH_STATE.BUILDING:
        {
            with (obj_stage_article)
            {
                if (get_article_script(id) == 2)
                {
                    instance_destroy(id);
                    continue;
                }
                if (get_article_script(id) == 1)
                {
                    enabled = true;
                    x = get_marker_x(1);
                    y = get_marker_y(1);
                    held_item_rotation = 0;
                    held_item_direction = 1;
                }
            }
            state_transition_timer = 90;
            //print_debug ("Initializing build menu!");
            if (is_aether_stage())
            {
                set_bg_data(6, BG_LAYER_Y, -64);
            }
            else
                set_bg_data(6, BG_LAYER_Y, 32);
            break;
        }        
        case UCH_STATE.FIGHTING:
        {
            //print_debug ("Initializing fight!");
            sound_play(asset_get("sfx_go"), false, noone, 1, 1);
            with (oPlayer)
            {
                if (get_player_stocks(player) > 0)
                {
                    set_state(PS_RESPAWN);
                    state_timer = 160;
                    if (instance_exists(my_pet))
                    {
                        my_pet.x = x;
                        my_pet.y = 656;
                        my_pet.visible = true;
                    }
                }
            }
            set_bg_data(6, BG_LAYER_Y, 10000);
            fight_timer = get_match_setting(SET_TIMER) * 3600;
            if (fight_timer == 0)
                fight_timer = -1;
            break;
        }        
        case UCH_STATE.RESULTS:
        {
            //print_debug ("Initializing results menu!");
            sound_play(asset_get("sfx_go"), false, noone, 1, 1);
            has_extra_box = true;
            break;
        }
        default:
        {
            print_debug ("Shouldn't be on invalid stage state!");
            break;
        }
    }
}
// Code to run while a state is active
current_state_timer++;
switch (current_stage_state)
    {
        case UCH_STATE.SELECTING:
        {
            if (get_gameplay_time() < 120)
                current_state_timer = 0;
            if (can_set_dead_state) with (oPlayer)
            {
                if (state != PS_SPAWN)
                set_state(PS_DEAD);
            }
            if (current_state_timer = 15)
                sound_play(asset_get("sfx_swipe_heavy2"), false, 0, 1, 1);
            if (current_state_timer = 20)
                sound_play(asset_get("sfx_ell_utilt_hit"), false, 0, 1, 0.8);
            if (current_state_timer < 60)
            {
                if (current_state_timer < 20)
                {
                    party_box.y = ease_quadOut(1500, get_marker_y(1), current_state_timer, 20);
                }
                else
                    party_box.y = get_marker_y(1);
                
                if (current_state_timer % 2 == 0)
                {
                    party_box_shake = party_box_shake == 1 ? -1 : 1;
                    party_box.x = get_marker_x(1) + ((current_state_timer - 20) * party_box_shake);
                }
                else
                {
                    party_box.x = get_marker_x(1);
                }
                party_box.image_index = 0;
            }
            else if (current_state_timer == 60)
            {
                party_box.image_index = 1;
                party_box.x = get_marker_x(1);
                instance_create(get_marker_x(1) - 150, get_marker_y(1), "obj_stage_article", 2).rng_index = 1;
                instance_create(get_marker_x(1) + 150, get_marker_y(1), "obj_stage_article", 2).rng_index = 2;
                instance_create(get_marker_x(1)-75, get_marker_y(1) + 75, "obj_stage_article", 2).rng_index = 3;
                instance_create(get_marker_x(1)+75, get_marker_y(1) + 75, "obj_stage_article", 2).rng_index = 4;
                //instance_create(get_marker_x(1)-90, get_marker_y(1) - 75, "obj_stage_article", 2).rng_index = 5;
                //instance_create(get_marker_x(1)+90, get_marker_y(1) - 75, "obj_stage_article", 2).rng_index = 6;
                instance_create(get_marker_x(1), get_marker_y(1) - 75, "obj_stage_article", 2).rng_index = 5;
            }
            else
            {
                ready_players = 4 - player_count;
                with (obj_stage_article)
                {
                    if (get_article_script(id) == 1)
                        if (!enabled)
                        {
                            other.ready_players++;
                        }
                }
                if (ready_players == 4)
                {
                    if (state_transition_timer > 0)
                        state_transition_timer--;
                    if (state_transition_timer == 1)
                    {
                        party_box.y = 2000;
                        current_stage_state = UCH_STATE.BUILDING;
                    }
                }
            }
            
            music_crossfade(0, 0.025);
            break;
        }
        case UCH_STATE.BUILDING:
        {
            if (can_set_dead_state) with (oPlayer)
            {
                set_state(PS_DEAD);
            }
            ready_players = 4 - player_count;
            with (obj_stage_article)
            {
                if (get_article_script(id) == 1)
                {
                    if (!enabled)
                    {
                        other.ready_players++;
                    }
                    if (clicked)
                    {
                        if (enabled)
                        {
                            sound_play(asset_get(other.sfx[selected_item]), false, noone, 1, 1);
                            
                            /*var created_obj = noone;
                            
                            if (other.solid_items[selected_item]) 
                                created_obj = instance_create(floor(x / 32) * 32 - 16, floor(y / 32) * 32, "obj_stage_article_solid", 4);
                            else
                                created_obj = instance_create(floor(x / 32) * 32 - 16, floor(y / 32) * 32, "obj_stage_article", 4);*/
                            var created_obj = instance_create(floor(x / 32) * 32 + 16, floor((y + 16)/ 32) * 32, "obj_stage_article", 4);
                            created_obj.item_id = selected_item;
                            created_obj.grid_x = floor(x / 32);
                            created_obj.grid_y = floor((y+16) / 32);
                            created_obj.spr_dir = held_item_direction;
                            created_obj.image_angle = held_item_rotation;
                            
                        }
                        enabled = false;
                        
                    }
                }
            }
            if (floor(gamemode / 10) % 10 = 1) // Camera panning for aether form.
            {
                var minX = get_marker_x(4);
                var maxX = get_marker_x(5);
                var minY = get_marker_y(5);
                var camX = 0;
                var camY = 0;
                with (obj_stage_article) if (get_article_script(id) == 1) if (enabled)
                {
                    var offsetX = 0;
                    var offsetY = 0;
                    if (x < minX)
                        offsetX = x - minX;
                    if (x > maxX)
                        offsetX = x - maxX;
                    if (y < minY)
                        offsetY = y - minY;
                    if (offsetX != 0)
                    {
                        if (camX = 0)
                            camX = offsetX;
                        else if (sign(camX) = sign(offsetX)) { if (abs(offsetX) > abs(camX))
                            camX = offsetX;
                        }
                        else
                            camX = (camX + offsetX);
                    }
                    if (offsetY != 0)
                    {
                        if (camY = 0)
                           camY = offsetY;
                        else if (abs(offsetY) > abs(camY))
                            camY = offsetY;
                    }
                }
                set_view_position(get_marker_x(1) + camX, get_marker_y(1) + camY + 16);
            }
            if (ready_players == 4)
            {
                if (state_transition_timer > 0)
                    state_transition_timer--;
                if (state_transition_timer == 1)
                {
                    if (has_extra_box && eligible_for_extra_box)
                    {
                        has_extra_box = false;
                        current_stage_state = UCH_STATE.SELECTING;
                    }
                    else
                        current_stage_state = UCH_STATE.FIGHTING;
                }
            }
            break;
        }
        case UCH_STATE.FIGHTING:
        {
            if (current_state_timer > 10)
            {
                var teams = [ false, false, false, false ];
                //ready_players = 4 - player_count;
                if (can_set_dead_state) with (oPlayer)
                {
                    if (is_player_on(player))
                    {
                        if (state == PS_RESPAWN && prev_state != PS_DEAD)
                        {
                            set_state(PS_DEAD);
                            // Prevents Sein from being used while Ori is defeated
                            // ... is what i would say if i had code that worked
                        }
                        //if (state == PS_DEAD)
                        //{
                        //    other.ready_players++;
                        //}
                        if (state != PS_DEAD && get_player_stocks(player) > 0)
                        {
                            teams[get_player_team(player) - 1] = true;
                        }
                    }
                }
                var teams_alive = 0;
                for (var i = 0; i < 4; i++) if (teams[i]) teams_alive++;
                if ((player_count <= 1 && teams_alive = 0) || (player_count >= 2 && teams_alive <= 1))
                {
                    if (state_transition_timer > 0)
                        state_transition_timer--;
                    if (state_transition_timer == 1)
                    {
                        //print_debug(teams);
                        current_stage_state = UCH_STATE.RESULTS;
                    }
                }
                music_crossfade(1, 0.025);
                /* scrapped (for now)
                if (fight_timer > 0)
                {
                    fight_timer--;
                    
                    if (fight_timer < 601)
                    {
                        if (fight_timer % 60 == 0)
                        {
                            if (fight_timer < 301)
                            {
                                if (fight_timer != 0)
                                    sound_play(asset_get("mfx_timertick2"), false, noone, 1, 1);
                            }
                            else
                                sound_play(asset_get("mfx_timertick"), false, noone, 1, 1);
                        }
                    }
                }
                if (fight_timer == 0)
                    current_stage_state = UCH_STATE.RESULTS;*/
            }
            break;
        }
        case UCH_STATE.RESULTS:
        {   
            music_crossfade(0, 0.025);
                    if (state_transition_timer > 0)
                        state_transition_timer--;
                    if (state_transition_timer == 1)
                        current_stage_state = UCH_STATE.SELECTING;
            break;
        }
    }
}
with (oPlayer) if (is_player_on(player))
{
    if (shield_down && other.current_stage_state = 2 && state != PS_DEAD && state != PS_RESPAWN)
    {
        uch_give_up_timer++;
    }
    else
        uch_give_up_timer = 0;
    if (uch_give_up_timer = 900)
    {
        set_player_damage(player, 999);
        y = 100000;
    }
}
    
// the function is_laststock doesnt work for what i want
var is_last_stock = false;
for (var i = 0; i < 4; i++) if (is_player_on(i)) if (get_player_stocks(i) == 1) { is_last_stock = true; break; }
if (is_last_stock)
{
    if (last_stock_transition_time < 60)
    last_stock_transition_time++;
    if (last_stock_transition_time = 1)
        set_bg_data(1, BG_LAYER_ANIMSPD, 4);
    if (last_stock_transition_time = 60)
        set_bg_data(1, BG_LAYER_ANIMSPD, 0);
}







//print_debug("current state: " + string(current_stage_state));