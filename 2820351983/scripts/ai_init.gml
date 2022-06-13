is_ai = true

#region Floral learning 

learning_frame = 0; allowed_learning_time = 125;
currently_learning = true;

learning_phase = "attacks";
study_player_num = 1;
study_attack_index = 0;
study_option_type = "jump";

viable_attack_indexes = 49;

ai_thoughts = "initialized"; ai_thoughts_colour = c_red; thoughts_bubble = sprite_get("thoughts");

known_attacks = array_create(5, undefined);
for(var incrementeroo = 1; incrementeroo < 5; incrementeroo++;) known_attacks[incrementeroo] = array_create(50, undefined);

known_options = array_create(5, undefined);
for(var incrementeroo = 1; incrementeroo < 5; incrementeroo++;) known_options[incrementeroo] = {
	jump: undefined,
	shorthop: undefined,
	double_jump: undefined,
	wavedash: undefined
};


example_options = {
	known_gravity: 0,
	known_jump_speed: 0,
	jump_height_frames: [],
	jump_peak: 0,
	shorthop_height_frames: [],
	shorthop_peak: 0
};

w_damage = 1 // Todo tune weights
w_hitbox_overlap = 1/200
w_interaction_frames = 1/35
w_start_lag = 1/3
w_end_lag = 1/5
w_chance_to_kill=10
#endregion


maximum_safe_reaction_frames = 12 // Number of frames of startup its okay to allow the opponent to react. Anything more will be considered unsafe and not used.
maximum_setup_frames = 8
with oPlayer {
	maximum_projected_movement_frames = 30
}

#region PLANS

p_do_nothing = [[]]

p_parry = [
	["hold_neutral", "press_parry"],
	["hold_neutral"],	["hold_neutral"],	["hold_neutral"],
	["hold_neutral"],	["hold_neutral"],	["hold_neutral"],
	["hold_neutral"],
	["press_jump"],
]

p_roll_away = [["hold_away_from_target", "press_parry"]]

#endregion

plan_timer = 0
plan = p_do_nothing

rects_to_draw = []