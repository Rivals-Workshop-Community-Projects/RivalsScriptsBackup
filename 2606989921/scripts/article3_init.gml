//persistence init

//article standard variables
visible = true;
uses_shader = false;
sprite_index = asset_get("empty_sprite");
mask_index = asset_get("empty_sprite");
can_be_grounded = false;
ignores_walls = true;
through_platforms = true;

//Ori's compatibility
unbashable = true;

//=====================================================
//Persistent Data
achievement_request_unlock_id = noone; //set to 0-1-2 to trigger unlock animation
achievement_status = [false, false, false]; //storage. sets the corresponding flags below

achievement_hall_of_fame = false; //id 2
achievement_fatal_error = false; //id 0
achievement_saw_matrix = false; //id 1

achievement = {
    start_time:-1, //start of rising animation
    rise_time: -1, //end of rising animation
    fall_time: -1, //start of falling animation
    end_time:  -1, //end of falling animation
    id: 0 //what achievement to display
}

msg_coinhits = 0; //missingnos can increment this for each coin hit landed in battle

//music brokenness status
music_request_breaking = noone; //set to 0 for "fix", 1 for "break"
music_is_broken = false; //0 is normal, 1 is broken
music_loop_sound1 = noone; music_multiplier1 = 1;
music_loop_sound2 = noone; music_multiplier2 = 1;

//sound brokenness status
sound_request_breaking = noone; //set to 0 for "fix", anything above for "break this much"
sound_is_broken = false; //0 is normal, 1 is broken
sound_to_break_with = asset_get("sfx_abyss_rumble");

//sound brokenness status
stage_request_breaking = noone; //set to 0 for "fix", 1 for "break"
stage_is_broken = false; //0 is normal, 1 is broken
stage_broken_kind = 0;
dust_object_asset = asset_get("new_dust_fx_obj");

//if any missingno is stable, prevent breakage
stage_stability_mode = false;

//=====================================================
//article state
time_since_last_ran_script = noone; //time since last draw was run. if above a certain treshold, consider the character having been unloaded
prev_room = noone; //tracks previous room state to perform checks only when it changes

state = 0; //what is the current "room type" we are in (see enum)
//substate flags
is_online = false;
is_practice = false; //get_match_setting(SET_PRACTICE)
menu_is_broken = false; //true when visiting milestones menu
is_real_match = false; //only true if was previously in CSS

//draw helper
msg_unsafe_gpu_stack_level = 0; //tracks how many gpu_push_state were used to revert them if needed

//to allow rolling the usual RNG functions
msg_unsafe_random = current_time;
msg_unsafe_paused_timer = 0;



//=======================================================
// F5 in practice mode kills these articles. needs a backup
msg_contingency_hitfx = noone;
with (asset_get("hit_fx_obj")) if ("missingno_persistence_contingency" in self)
{
    other.msg_contingency_hitfx = self;
    for (var i = 0; i < array_length(achievement_status); i++)
        other.achievement_status[i] = achievement_status[i];
}