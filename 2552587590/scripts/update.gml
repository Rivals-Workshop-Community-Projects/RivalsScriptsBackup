switch(state){
	case "idle":
		if state_timer == 0{
			sprite_index = sprite_get("idle");
			image_index = 0;
		}
		break;
	case "run":
		image_index = state_timer / 6;
		run_speed = ((image_index % image_number) == clamp(image_index % image_number, 10, 13)) * 1;
		break;
	case "taunt":
		if state_timer == 12{
			sound_play(sound_get("beep"));
		}
		break;
}



if !frame_data_loaded && get_match_setting(SET_PRACTICE){
	loadFrameData();
	frame_data_loaded = 1;
	
	// where to draw the frame data thingy
	dx = room_width / 2;
	dy = get_stage_data(SD_Y_POS);

	origin_x = dx - 440;
	origin_y = dy - 330;
	
	original_view_x = view_get_xview();
	original_view_y = view_get_yview();
	
	sound_play(sound_get("click"));
}

if frame_data_loaded{
	if owner.state == PS_RESPAWN && owner.state_timer == 1 {
		sound_play(sound_get("click"));
		data = [];
		loadFrameData();
	}
	if (owner.state == PS_ATTACK_GROUND || owner.state == PS_ATTACK_AIR) && owner.state_timer == 1 {
		sound_play(sound_get("click"));
		if prev_attack == owner.attack {
			times_attack_repeated += 1;
		}
		else {
			times_attack_repeated = 0;
			prev_attack = owner.attack;
		}
	}
}



// sprite_index = asset_get("empty_sprite");



#define loadFrameData

/*

python to generate the index code:

index_names = [
    "AG_MUNO_ATTACK_EXCLUDE",
	"AG_MUNO_ATTACK_NAME",
	"AG_MUNO_ATTACK_FAF",
	"AG_MUNO_ATTACK_ENDLAG",
	"AG_MUNO_ATTACK_LANDING_LAG",
	"AG_MUNO_ATTACK_MISC",
	"AG_MUNO_ATTACK_MISC_ADD",
	"AG_MUNO_WINDOW_EXCLUDE",
	"AG_MUNO_WINDOW_ROLE",
	"AG_MUNO_ATTACK_USES_ROLES",
	"AG_MUNO_ATTACK_COOLDOWN",
	"AG_MUNO_ATTACK_CD_SPECIAL",
	"AG_MUNO_WINDOW_CD_SPECIAL",
	"AG_MUNO_WINDOW_INVUL",
	"HG_MUNO_HITBOX_EXCLUDE",
	"HG_MUNO_HITBOX_NAME",
	"HG_MUNO_HITBOX_ACTIVE",
	"HG_MUNO_HITBOX_DAMAGE",
	"HG_MUNO_HITBOX_BKB",
	"HG_MUNO_HITBOX_KBG",
	"HG_MUNO_HITBOX_ANGLE",
	"HG_MUNO_HITBOX_PRIORITY",
	"HG_MUNO_HITBOX_GROUP",
	"HG_MUNO_HITBOX_BHP",
	"HG_MUNO_HITBOX_HPG",
	"HG_MUNO_HITBOX_MISC",
	"HG_MUNO_HITBOX_MISC_ADD",
	"HG_MUNO_OBJECT_LAUNCH_ANGLE",
]

for s in index_names:
    print(s + " = noone;\nif \"" + s + "\" in owner " + s + " = owner." + s + ";")

*/

AG_MUNO_ATTACK_EXCLUDE = noone;
if "AG_MUNO_ATTACK_EXCLUDE" in owner AG_MUNO_ATTACK_EXCLUDE = owner.AG_MUNO_ATTACK_EXCLUDE;
AG_MUNO_ATTACK_NAME = noone;
if "AG_MUNO_ATTACK_NAME" in owner AG_MUNO_ATTACK_NAME = owner.AG_MUNO_ATTACK_NAME;
AG_MUNO_ATTACK_FAF = noone;
if "AG_MUNO_ATTACK_FAF" in owner AG_MUNO_ATTACK_FAF = owner.AG_MUNO_ATTACK_FAF;
AG_MUNO_ATTACK_ENDLAG = noone;
if "AG_MUNO_ATTACK_ENDLAG" in owner AG_MUNO_ATTACK_ENDLAG = owner.AG_MUNO_ATTACK_ENDLAG;
AG_MUNO_ATTACK_LANDING_LAG = noone;
if "AG_MUNO_ATTACK_LANDING_LAG" in owner AG_MUNO_ATTACK_LANDING_LAG = owner.AG_MUNO_ATTACK_LANDING_LAG;
AG_MUNO_ATTACK_MISC = noone;
if "AG_MUNO_ATTACK_MISC" in owner AG_MUNO_ATTACK_MISC = owner.AG_MUNO_ATTACK_MISC;
AG_MUNO_ATTACK_MISC_ADD = noone;
if "AG_MUNO_ATTACK_MISC_ADD" in owner AG_MUNO_ATTACK_MISC_ADD = owner.AG_MUNO_ATTACK_MISC_ADD;
AG_MUNO_WINDOW_EXCLUDE = noone;
if "AG_MUNO_WINDOW_EXCLUDE" in owner AG_MUNO_WINDOW_EXCLUDE = owner.AG_MUNO_WINDOW_EXCLUDE;
AG_MUNO_WINDOW_ROLE = noone;
if "AG_MUNO_WINDOW_ROLE" in owner AG_MUNO_WINDOW_ROLE = owner.AG_MUNO_WINDOW_ROLE;
AG_MUNO_ATTACK_USES_ROLES = noone;
if "AG_MUNO_ATTACK_USES_ROLES" in owner AG_MUNO_ATTACK_USES_ROLES = owner.AG_MUNO_ATTACK_USES_ROLES;
AG_MUNO_ATTACK_COOLDOWN = noone;
if "AG_MUNO_ATTACK_COOLDOWN" in owner AG_MUNO_ATTACK_COOLDOWN = owner.AG_MUNO_ATTACK_COOLDOWN;
AG_MUNO_ATTACK_CD_SPECIAL = noone;
if "AG_MUNO_ATTACK_CD_SPECIAL" in owner AG_MUNO_ATTACK_CD_SPECIAL = owner.AG_MUNO_ATTACK_CD_SPECIAL;
AG_MUNO_WINDOW_CD_SPECIAL = noone;
if "AG_MUNO_WINDOW_CD_SPECIAL" in owner AG_MUNO_WINDOW_CD_SPECIAL = owner.AG_MUNO_WINDOW_CD_SPECIAL;
AG_MUNO_WINDOW_INVUL = noone;
if "AG_MUNO_WINDOW_INVUL" in owner AG_MUNO_WINDOW_INVUL = owner.AG_MUNO_WINDOW_INVUL;
HG_MUNO_HITBOX_EXCLUDE = noone;
if "HG_MUNO_HITBOX_EXCLUDE" in owner HG_MUNO_HITBOX_EXCLUDE = owner.HG_MUNO_HITBOX_EXCLUDE;
HG_MUNO_HITBOX_NAME = noone;
if "HG_MUNO_HITBOX_NAME" in owner HG_MUNO_HITBOX_NAME = owner.HG_MUNO_HITBOX_NAME;
HG_MUNO_HITBOX_ACTIVE = noone;
if "HG_MUNO_HITBOX_ACTIVE" in owner HG_MUNO_HITBOX_ACTIVE = owner.HG_MUNO_HITBOX_ACTIVE;
HG_MUNO_HITBOX_DAMAGE = noone;
if "HG_MUNO_HITBOX_DAMAGE" in owner HG_MUNO_HITBOX_DAMAGE = owner.HG_MUNO_HITBOX_DAMAGE;
HG_MUNO_HITBOX_BKB = noone;
if "HG_MUNO_HITBOX_BKB" in owner HG_MUNO_HITBOX_BKB = owner.HG_MUNO_HITBOX_BKB;
HG_MUNO_HITBOX_KBG = noone;
if "HG_MUNO_HITBOX_KBG" in owner HG_MUNO_HITBOX_KBG = owner.HG_MUNO_HITBOX_KBG;
HG_MUNO_HITBOX_ANGLE = noone;
if "HG_MUNO_HITBOX_ANGLE" in owner HG_MUNO_HITBOX_ANGLE = owner.HG_MUNO_HITBOX_ANGLE;
HG_MUNO_HITBOX_PRIORITY = noone;
if "HG_MUNO_HITBOX_PRIORITY" in owner HG_MUNO_HITBOX_PRIORITY = owner.HG_MUNO_HITBOX_PRIORITY;
HG_MUNO_HITBOX_GROUP = noone;
if "HG_MUNO_HITBOX_GROUP" in owner HG_MUNO_HITBOX_GROUP = owner.HG_MUNO_HITBOX_GROUP;
HG_MUNO_HITBOX_BHP = noone;
if "HG_MUNO_HITBOX_BHP" in owner HG_MUNO_HITBOX_BHP = owner.HG_MUNO_HITBOX_BHP;
HG_MUNO_HITBOX_HPG = noone;
if "HG_MUNO_HITBOX_HPG" in owner HG_MUNO_HITBOX_HPG = owner.HG_MUNO_HITBOX_HPG;
HG_MUNO_HITBOX_MISC = noone;
if "HG_MUNO_HITBOX_MISC" in owner HG_MUNO_HITBOX_MISC = owner.HG_MUNO_HITBOX_MISC;
HG_MUNO_HITBOX_MISC_ADD = noone;
if "HG_MUNO_HITBOX_MISC_ADD" in owner HG_MUNO_HITBOX_MISC_ADD = owner.HG_MUNO_HITBOX_MISC_ADD;
HG_MUNO_OBJECT_LAUNCH_ANGLE = noone;
if "HG_MUNO_OBJECT_LAUNCH_ANGLE" in owner HG_MUNO_OBJECT_LAUNCH_ANGLE = owner.HG_MUNO_OBJECT_LAUNCH_ANGLE;

var move_ordering = [
	AT_JAB,
	AT_FTILT,
	AT_DTILT,
	AT_UTILT,
	AT_DATTACK,
	AT_FSTRONG,
	AT_USTRONG,
	AT_DSTRONG,
	AT_FSTRONG_2,
	AT_USTRONG_2,
	AT_DSTRONG_2,
	AT_NAIR,
	AT_FAIR,
	AT_BAIR,
	AT_UAIR,
	AT_DAIR,
	(owner.url == CH_ABSA) ? 50 : AT_NSPECIAL,
	AT_NSPECIAL_AIR,
	AT_NSPECIAL_2,
	AT_FSPECIAL,
	AT_FSPECIAL_AIR,
	AT_FSPECIAL_2,
	AT_USPECIAL,
	AT_USPECIAL_GROUND,
	AT_USPECIAL_2,
	AT_DSPECIAL,
	AT_DSPECIAL_AIR,
	AT_DSPECIAL_2,
	AT_NTHROW,
	AT_FTHROW,
	AT_UTHROW,
	AT_DTHROW,
	AT_EXTRA_1,
	AT_EXTRA_2,
	AT_EXTRA_3,
	AT_TAUNT,
	AT_TAUNT_2,
	2,
	3,
	39,
	40,
	42,
	43,
	44,
	45,
	46,
	47,
	48,
	49,
	50
];

var attack_names = [
	"???",
	"Jab",
	"???",
	"???",
	"FTilt",
	"DTilt",
	"UTilt",
	"FStrong",
	"DStrong",
	"UStrong",
	"DAttack",
	"FAir",
	"BAir",
	"DAir",
	"UAir",
	"NAir",
	"FSpecial",
	"DSpecial",
	"USpecial",
	"NSpecial",
	"FStrong 2",
	"DStrong 2",
	"UStrong 2",
	"USpecial Ground",
	"USpecial 2",
	"FSpecial 2",
	"FThrow",
	"UThrow",
	"DThrow",
	"NThrow",
	"DSpecial 2",
	"Extra 1",
	"DSpecial Air",
	"NSpecial 2",
	"FSpecial Air",
	"Taunt",
	"Taunt 2",
	"Extra 2",
	"Extra 3",
	"MunoPhone",
	"???",
	"NSpecial Air",
	"???",
	"???",
	"???",
	"???",
	"???",
	"???",
	"???",
	"???",
	"???"
];

stats_notes = "Attack to change view.
Self destruct to refresh data.";
initStats();

for (j = 0; j < array_length_1d(move_ordering); j++){ // j = index in array of ordered attack indexes
	var current_attack_index = move_ordering[j];
	if (p_get_window_value(current_attack_index, 1, AG_WINDOW_LENGTH) || p_get_hitbox_value(current_attack_index, 1, HG_HITBOX_TYPE)) && !p_get_attack_value(current_attack_index, AG_MUNO_ATTACK_EXCLUDE){
		initMove(current_attack_index, attack_names[current_attack_index]);
	}
}

#define initMove(atk_index, default_move_name)

var def = "-";
var n = 0, hh = 0;

var stored_name = pullAttackValue(atk_index, AG_MUNO_ATTACK_NAME, default_move_name);

var stored_timeline = [];
if p_get_attack_value(atk_index, AG_MUNO_ATTACK_USES_ROLES) for (n = 0; p_get_window_value(atk_index, n+1, AG_WINDOW_LENGTH); n++){
	if p_get_window_value(atk_index, n+1, AG_MUNO_WINDOW_ROLE) stored_timeline[array_length_1d(stored_timeline)] = n+1;
}
else if p_get_attack_value(atk_index, AG_NUM_WINDOWS) for (n = 0; n < p_get_attack_value(atk_index, AG_NUM_WINDOWS); n++){
	if !(p_get_window_value(atk_index, n+1, AG_MUNO_WINDOW_EXCLUDE) == 1) stored_timeline[array_length_1d(stored_timeline)] = n+1;
}
else{
	stored_timeline = 0;
}

var stored_length = def;
if is_array(stored_timeline){
	stored_length = 0;
	for (n = 0; n < array_length_1d(stored_timeline); n++){
		if (p_get_window_value(atk_index, stored_timeline[n], AG_MUNO_WINDOW_EXCLUDE) != 2) stored_length += p_get_window_value(atk_index, stored_timeline[n], AG_WINDOW_LENGTH);
	}
	var stored_length_w = 0;
	for (n = 0; n < array_length_1d(stored_timeline); n++){
		if (p_get_window_value(atk_index, stored_timeline[n], AG_MUNO_WINDOW_EXCLUDE) != 3) stored_length_w += ceil(p_get_window_value(atk_index, stored_timeline[n], AG_WINDOW_LENGTH) * (p_get_window_value(atk_index, stored_timeline[n], AG_WINDOW_HAS_WHIFFLAG) ? 1.5 : 1));
	}
	stored_length = decimalToString(stored_length) + ((stored_length == stored_length_w) ? "" : " (" + decimalToString(stored_length_w) + ")");
}
stored_length = pullAttackValue(atk_index, AG_MUNO_ATTACK_FAF, stored_length);

var stored_ending_lag = def;
if (is_array(stored_timeline)){
	var time_int = 0;
	var time_int_whiff = 0;
	if p_get_attack_value(atk_index, AG_MUNO_ATTACK_USES_ROLES){
		for (n = 0; n < array_length_1d(stored_timeline); n++){
			if (p_get_window_value(atk_index, stored_timeline[n], AG_MUNO_WINDOW_ROLE) == 3){
				if (p_get_window_value(atk_index, stored_timeline[n], AG_MUNO_WINDOW_EXCLUDE) != 2) time_int += p_get_window_value(atk_index, stored_timeline[n], AG_WINDOW_LENGTH);
				if (p_get_window_value(atk_index, stored_timeline[n], AG_MUNO_WINDOW_EXCLUDE) != 3) time_int_whiff += ceil(p_get_window_value(atk_index, stored_timeline[n], AG_WINDOW_LENGTH) * (p_get_window_value(atk_index, stored_timeline[n], AG_WINDOW_HAS_WHIFFLAG) ? 1.5 : 1));
			}
		}
	}
	else{
		for (n = 0; n < array_length_1d(stored_timeline); n++){
			var last_hitbox_frame = 0;
			var test_me = 0;
			for (hh = 0; p_get_hitbox_value(atk_index, hh, HG_HITBOX_TYPE); hh++){
				if (p_get_hitbox_value(atk_index, hh, HG_WINDOW) == stored_timeline[n]){
					test_me = p_get_hitbox_value(atk_index, hh, HG_LIFETIME) + p_get_hitbox_value(atk_index, hh, HG_WINDOW_CREATION_FRAME);
					if p_get_hitbox_value(atk_index, hh, HG_HITBOX_TYPE) == 2 test_me = -1;
					if abs(test_me) > last_hitbox_frame last_hitbox_frame = test_me;
				}
			}
			if last_hitbox_frame > 0{
				if (p_get_window_value(atk_index, stored_timeline[n], AG_MUNO_WINDOW_EXCLUDE) != 2) time_int = p_get_window_value(atk_index, stored_timeline[n], AG_WINDOW_LENGTH) - last_hitbox_frame;
				if (p_get_window_value(atk_index, stored_timeline[n], AG_MUNO_WINDOW_EXCLUDE) != 3) time_int_whiff = ceil(p_get_window_value(atk_index, stored_timeline[n], AG_WINDOW_LENGTH) * (p_get_window_value(atk_index, stored_timeline[n], AG_WINDOW_HAS_WHIFFLAG) ? 1.5 : 1) - last_hitbox_frame);
			}
			else if last_hitbox_frame == -1{ // projectile
				if (p_get_window_value(atk_index, stored_timeline[n], AG_MUNO_WINDOW_EXCLUDE) != 2) time_int = p_get_window_value(atk_index, stored_timeline[n], AG_WINDOW_LENGTH);
				if (p_get_window_value(atk_index, stored_timeline[n], AG_MUNO_WINDOW_EXCLUDE) != 3) time_int_whiff = ceil(p_get_window_value(atk_index, stored_timeline[n], AG_WINDOW_LENGTH) * (p_get_window_value(atk_index, stored_timeline[n], AG_WINDOW_HAS_WHIFFLAG) ? 1.5 : 1));
			}
			else{
				if (p_get_window_value(atk_index, stored_timeline[n], AG_MUNO_WINDOW_EXCLUDE) != 2) time_int += p_get_window_value(atk_index, stored_timeline[n], AG_WINDOW_LENGTH);
				if (p_get_window_value(atk_index, stored_timeline[n], AG_MUNO_WINDOW_EXCLUDE) != 3) time_int_whiff += ceil(p_get_window_value(atk_index, stored_timeline[n], AG_WINDOW_LENGTH) * (p_get_window_value(atk_index, stored_timeline[n], AG_WINDOW_HAS_WHIFFLAG) ? 1.5 : 1));
			}
		}
	}
	
	if time_int && decimalToString(time_int) != stored_length{
		stored_ending_lag = decimalToString(time_int);
		if time_int != time_int_whiff stored_ending_lag += " (" + decimalToString(time_int_whiff) + ")";
	}
}
stored_ending_lag = pullAttackValue(atk_index, AG_MUNO_ATTACK_ENDLAG, stored_ending_lag);

var stored_landing_lag = def;
if (p_get_attack_value(atk_index, AG_HAS_LANDING_LAG) && p_get_attack_value(atk_index, AG_CATEGORY) == 1){
	stored_landing_lag = decimalToString(p_get_attack_value(atk_index, AG_LANDING_LAG));
	if p_get_attack_value(atk_index, AG_LANDING_LAG) stored_landing_lag += " (" + decimalToString(ceil(p_get_attack_value(atk_index, AG_LANDING_LAG) * 1.5)) + ")";
}
stored_landing_lag = pullAttackValue(atk_index, AG_MUNO_ATTACK_LANDING_LAG, stored_landing_lag);

var stored_misc = def;

if (p_get_attack_value(atk_index, AG_STRONG_CHARGE_WINDOW) != 0){
	var found = false;
	var strong_charge_frame = 0;
	for (var iter = 0; iter < array_length(stored_timeline) && !found; iter++){
		strong_charge_frame += ceil(p_get_window_value(atk_index, stored_timeline[iter], AG_WINDOW_LENGTH) * (p_get_window_value(atk_index, stored_timeline[iter], AG_WINDOW_HAS_WHIFFLAG) ? 1.5 : 1));
		if stored_timeline[iter] == p_get_attack_value(atk_index, AG_STRONG_CHARGE_WINDOW) found = true;
	}
	if found stored_misc = checkAndAdd(stored_misc, "Charge frame: " + decimalToString(strong_charge_frame));
}
	
if is_array(stored_timeline){
	var total_frames = 0;
	for (n = 0; n < array_length_1d(stored_timeline); n++){
		var frames = string(total_frames + 1) + "-" + string(total_frames + p_get_window_value(atk_index, stored_timeline[n], AG_WINDOW_LENGTH));
		switch (p_get_window_value(atk_index, stored_timeline[n], AG_MUNO_WINDOW_INVUL)){
			case -1:
				stored_misc = checkAndAdd(stored_misc, "Invincible f" + frames);
				break;
			case -2:
				stored_misc = checkAndAdd(stored_misc, "Super Armor f" + frames);
				break;
			case 0:
				break;
			default:
				stored_misc = checkAndAdd(stored_misc, string(p_get_window_value(atk_index, stored_timeline[n], AG_MUNO_WINDOW_INVUL)) + " Soft Armor f" + frames);
				break;
		}
		total_frames += p_get_window_value(atk_index, stored_timeline[n], AG_WINDOW_LENGTH);
	}
}

if (p_get_attack_value(atk_index, AG_MUNO_ATTACK_COOLDOWN) != 0)
	stored_misc = checkAndAdd(stored_misc, "Cooldown: " + string(abs(p_get_attack_value(atk_index, AG_MUNO_ATTACK_COOLDOWN))) + "f" + ((p_get_attack_value(atk_index, AG_MUNO_ATTACK_COOLDOWN) > 0) ? "" : " until land/walljump/hit"));
if (p_get_attack_value(atk_index, AG_MUNO_ATTACK_MISC_ADD) != 0)
	stored_misc = checkAndAdd(stored_misc, p_get_attack_value(atk_index, AG_MUNO_ATTACK_MISC_ADD));
if (p_get_attack_value(atk_index, AG_MUNO_ATTACK_MISC) != 0)
	stored_misc = p_get_attack_value(atk_index, AG_MUNO_ATTACK_MISC);

array_push(data, {
	type: 2, // an actual move
	index: atk_index,
	name: stored_name,
	length: stored_length,
	ending_lag: stored_ending_lag,
	landing_lag: stored_landing_lag,
	hitboxes: [],
	page_starts: [0],
	num_hitboxes: get_num_hitboxes(atk_index),
	timeline: stored_timeline,
	misc: stored_misc
});

for (var l = 1; p_get_hitbox_value(atk_index, l, HG_HITBOX_TYPE); l++){
	if !p_get_hitbox_value(atk_index, l, HG_MUNO_HITBOX_EXCLUDE) initHitbox(array_length(data) - 1, l);
}



#define pullAttackValue(move, index, def)

if is_string(p_get_attack_value(move, index)) return p_get_attack_value(move, index);
else return def;



#define initHitbox(move_index, index)

var def = "-";
var n = 0;

current_move = move_index;

var atk_index = data[move_index].index;
var move = data[move_index];
var parent = p_get_hitbox_value(atk_index, index, HG_PARENT_HITBOX);
if parent == index parent = 0;

var stored_active = def;
if is_array(data[move_index].timeline){
	var win = p_get_hitbox_value(atk_index, index, HG_WINDOW);
	var w_f = p_get_hitbox_value(atk_index, index, HG_WINDOW_CREATION_FRAME);
	var lif = p_get_hitbox_value(atk_index, index, HG_LIFETIME);
	var frames_before = 0;
	var has_found = false;
	for (n = 0; n < array_length_1d(data[move_index].timeline) && !has_found; n++){
		if (win == data[move_index].timeline[n]){
			frames_before += w_f;
			has_found = true;
		}
		else{
			frames_before += p_get_window_value(atk_index, data[move_index].timeline[n], AG_WINDOW_LENGTH);
		}
	}
	if has_found{
		stored_active = decimalToString(frames_before + 1);
		if (lif > 1){
			stored_active += "-";
			if (p_get_hitbox_value(atk_index, index, HG_HITBOX_TYPE) == 1){
				stored_active += decimalToString(frames_before + lif);
			}
		}
	}
}
stored_active = pullHitboxValue(atk_index, index, HG_MUNO_HITBOX_ACTIVE, stored_active);

var stored_damage = pullHitboxValue(atk_index, index, HG_MUNO_HITBOX_DAMAGE, pullHitboxValue(atk_index, index, HG_DAMAGE, def));

var stored_base_kb = pullHitboxValue(atk_index, index, HG_MUNO_HITBOX_BKB, pullHitboxValue(atk_index, index, HG_BASE_KNOCKBACK, "0"));
if p_get_hitbox_value(atk_index, index, HG_FINAL_BASE_KNOCKBACK) stored_base_kb += "-" + decimalToString(p_get_hitbox_value(atk_index, index, HG_FINAL_BASE_KNOCKBACK));

var stored_kb_scale = pullHitboxValue(atk_index, index, HG_MUNO_HITBOX_KBG, pullHitboxValue(atk_index, index, HG_KNOCKBACK_SCALING, "0"));

var stored_angle = def;
if p_get_hitbox_value(atk_index, index, HG_BASE_KNOCKBACK) stored_angle = decimalToString(p_get_hitbox_value(atk_index, index, HG_ANGLE));
else if p_get_hitbox_value(atk_index, parent, HG_BASE_KNOCKBACK) stored_angle = decimalToString(p_get_hitbox_value(atk_index, parent, HG_ANGLE));
var flipper = max(p_get_hitbox_value(atk_index, index, HG_ANGLE_FLIPPER), p_get_hitbox_value(atk_index, parent, HG_ANGLE_FLIPPER));
// if flipper stored_angle += "*";

var stored_priority = pullHitboxValue(atk_index, index, HG_MUNO_HITBOX_PRIORITY, pullHitboxValue(atk_index, index, HG_PRIORITY, (move.num_hitboxes > 1) ? "0" : def));
if p_get_hitbox_value(atk_index, index, HG_HITBOX_TYPE) == 2 {
	stored_priority = "-1";
}

var stored_group = pullHitboxValue(atk_index, index, HG_MUNO_HITBOX_GROUP, pullHitboxValue(atk_index, index, HG_HITBOX_GROUP, (move.num_hitboxes > 1) ? "0" : def));

var stored_base_hitpause = pullHitboxValue(atk_index, index, HG_MUNO_HITBOX_BHP, pullHitboxValue(atk_index, index, HG_BASE_HITPAUSE, "0"));

var stored_hitpause_scale = pullHitboxValue(atk_index, index, HG_MUNO_HITBOX_HPG, pullHitboxValue(atk_index, index, HG_HITPAUSE_SCALING, "0"));

var flipper_desc = [
	"sends at the exact same angle every time",
	"sends away from the center of the user",
	"sends toward the center of the user",
	"horizontal KB sends away from the hitbox center",
	"horizontal KB sends toward the hitbox center",
	"horizontal KB is reversed",
	"horizontal KB sends away from the user",
	"horizontal KB sends toward the user",
	"sends away from the hitbox center",
	"sends toward the hitbox center",
	"sends along the user's movement direction"
];

var effect_desc = ["nothing", "burn", "burn consume", "burn stun", "wrap", "freeze", "mark", "???", "auto wrap", "polite", "poison", "plasma stun", "crouchable"];

var ground_desc = ["woag", "Hits only grounded enemies", "Hits only airborne enemies"];

var tech_desc = ["woag", "Untechable", "Hit enemy goes through platforms", "Untechable, doesn't bounce"];

var flinch_desc = ["woag", "Forces grounded foes to flinch", "Cannot force flinch", "Forces crouching opponents to flinch"];

var rock_desc = ["woag", "Throws rocks", "Ignores rocks"];

var stored_misc = def;
if (stored_group != def)
	stored_misc = checkAndAdd(stored_misc, "Group " + stored_group);
if parent{
	stored_misc = checkAndAdd(stored_misc, "Parent: Hitbox #" + string(parent));
}
else{
	if (flipper)
		stored_misc = checkAndAdd(stored_misc, "Flipper " + decimalToString(flipper) + " (" + flipper_desc[flipper] + ")");
	if (pullHitboxValue(atk_index, index, HG_EFFECT, def) != def)
		stored_misc = checkAndAdd(stored_misc, "Effect " + decimalToString(p_get_hitbox_value(atk_index, index, HG_EFFECT)) + ((real(pullHitboxValue(atk_index, index, HG_EFFECT, def)) < array_length(effect_desc)) ? " (" + effect_desc[real(pullHitboxValue(atk_index, index, HG_EFFECT, def))] + ")" : " (Custom)"));
	if (pullHitboxValue(atk_index, index, HG_EXTRA_HITPAUSE, def) != def)
		stored_misc = checkAndAdd(stored_misc, decimalToString(p_get_hitbox_value(atk_index, index, HG_EXTRA_HITPAUSE)) + " Extra Hitpause");
	if (pullHitboxValue(atk_index, index, HG_GROUNDEDNESS, def) != def)
		stored_misc = checkAndAdd(stored_misc, ground_desc[real(pullHitboxValue(atk_index, index, HG_GROUNDEDNESS, def))]);
	if (pullHitboxValue(atk_index, index, HG_IGNORES_PROJECTILES, def) != def)
		stored_misc = checkAndAdd(stored_misc, "Cannot break projectiles");
	if (pullHitboxValue(atk_index, index, HG_HIT_LOCKOUT, def) != def)
		stored_misc = checkAndAdd(stored_misc, decimalToString(p_get_hitbox_value(atk_index, index, HG_HIT_LOCKOUT)) + "f Hit Lockout");
	if (pullHitboxValue(atk_index, index, HG_EXTENDED_PARRY_STUN, def) != def)
		stored_misc = checkAndAdd(stored_misc, "Has extended parry stun");
	if (pullHitboxValue(atk_index, index, HG_HITSTUN_MULTIPLIER, def) != def)
		stored_misc = checkAndAdd(stored_misc, decimalToString(p_get_hitbox_value(atk_index, index, HG_HITSTUN_MULTIPLIER)) + "x Hitstun");
	if (pullHitboxValue(atk_index, index, HG_DRIFT_MULTIPLIER, def) != def)
		stored_misc = checkAndAdd(stored_misc, decimalToString(p_get_hitbox_value(atk_index, index, HG_DRIFT_MULTIPLIER)) + "x Drift");
	if (pullHitboxValue(atk_index, index, HG_SDI_MULTIPLIER, def) != def)
		stored_misc = checkAndAdd(stored_misc, decimalToString(p_get_hitbox_value(atk_index, index, HG_SDI_MULTIPLIER) + 1) + "x SDI");
	if (pullHitboxValue(atk_index, index, HG_TECHABLE, def) != def)
		stored_misc = checkAndAdd(stored_misc, tech_desc[real(pullHitboxValue(atk_index, index, HG_TECHABLE, def))]);
	if (pullHitboxValue(atk_index, index, HG_FORCE_FLINCH, def) != def)
		stored_misc = checkAndAdd(stored_misc, flinch_desc[real(pullHitboxValue(atk_index, index, HG_FORCE_FLINCH, def))]);
	if (pullHitboxValue(atk_index, index, HG_THROWS_ROCK, def) != def)
		stored_misc = checkAndAdd(stored_misc, rock_desc[real(pullHitboxValue(atk_index, index, HG_THROWS_ROCK, def))]);
	if (pullHitboxValue(atk_index, index, HG_PROJECTILE_PARRY_STUN, def) != def)
		stored_misc = checkAndAdd(stored_misc, "Has parry stun");
	if (pullHitboxValue(atk_index, index, HG_PROJECTILE_DOES_NOT_REFLECT, def) != def)
		stored_misc = checkAndAdd(stored_misc, "Does not reflect on parry");
	if (pullHitboxValue(atk_index, index, HG_PROJECTILE_IS_TRANSCENDENT, def) != def)
		stored_misc = checkAndAdd(stored_misc, "Transcendent");
	if (pullHitboxValue(atk_index, index, HG_PROJECTILE_PLASMA_SAFE, def) != def)
		stored_misc = checkAndAdd(stored_misc, "Immune to Clairen's plasma field");
	if (pullHitboxValue(atk_index, index, HG_MUNO_OBJECT_LAUNCH_ANGLE, def) != def)
		stored_misc = checkAndAdd(stored_misc, decimalToString(p_get_hitbox_value(atk_index, index, HG_MUNO_OBJECT_LAUNCH_ANGLE)) + " Workshop Object launch angle");
}

if (p_get_hitbox_value(atk_index, index, HG_MUNO_HITBOX_MISC_ADD) != 0)
	stored_misc = checkAndAdd(stored_misc, p_get_hitbox_value(atk_index, index, HG_MUNO_HITBOX_MISC_ADD));
if (p_get_hitbox_value(atk_index, index, HG_MUNO_HITBOX_MISC) != 0)
	stored_misc = p_get_hitbox_value(atk_index, index, HG_MUNO_HITBOX_MISC);

var stored_name = string(index) + ": " + pullHitboxValue(atk_index, index, HG_MUNO_HITBOX_NAME, ((p_get_hitbox_value(atk_index, index, HG_HITBOX_TYPE) == 1) ? "Melee" : "Proj."));



array_push(data[current_move].hitboxes, {
	name: stored_name,
	active: stored_active,
	damage: stored_damage,
	base_kb: stored_base_kb,
	kb_scale: stored_kb_scale,
	angle: stored_angle,
	priority: stored_priority,
	// group: stored_group,
	base_hitpause: stored_base_hitpause,
	hitpause_scale: stored_hitpause_scale,
	misc: stored_misc,
	parent_hbox: parent
});



#define pullHitboxValue(move, hbox, index, def)

if p_get_hitbox_value(move, hbox, HG_PARENT_HITBOX) != 0 switch(index){
	case HG_HITBOX_TYPE:
	case HG_WINDOW:
	case HG_WINDOW_CREATION_FRAME:
	case HG_LIFETIME:
	case HG_HITBOX_X:
	case HG_HITBOX_Y:
	case HG_HITBOX_GROUP:
		break;
	default:
		if index < 70 hbox = p_get_hitbox_value(move, hbox, HG_PARENT_HITBOX);
}

if p_get_hitbox_value(move, hbox, index) != 0 || is_string(p_get_hitbox_value(move, hbox, index)) return decimalToString(p_get_hitbox_value(move, hbox, index));
else return string(def);



#define checkAndAdd(orig, add)

if orig == "-" return decimalToString(add);
if string_height_ext(decimalToString(orig) + "   |   " + decimalToString(add), 10, 560) == string_height_ext(decimalToString(orig), 10, 560){
	return decimalToString(orig) + "   |   " + decimalToString(add);
}
return decimalToString(orig) + "
" + decimalToString(add);



#define decimalToString(input)

if !is_number(input) return(string(input));

input = input % 1000;

input = string(input);
var last_char = string_char_at(input, string_length(input));

if (string_length(input) > 2){
	var third_last_char = string_char_at(input, string_length(input) - 2);
	if (last_char == "0" && third_last_char == ".") input = string_delete(input, string_length(input), 1);
}

if (string_char_at(input, 1) == "0") input = string_delete(input, 1, 1);

return input;



#define initStats

array_push(data, {
	name: "Stats",
	type: 1 // stats
});



#define p_get_window_value(attack, window, index)

if index == noone {
	return 0;
}

var ret = 0;
with owner ret = get_window_value(attack, window, index);
return ret;

#define p_get_attack_value(attack, index)

if index == noone {
	return 0;
}

var ret = 0;
with owner ret = get_attack_value(attack, index);
return ret;

#define p_get_hitbox_value(attack, hitbox, index)

if index == noone {
	return 0;
}

var ret = 0;
with owner ret = get_hitbox_value(attack, hitbox, index);
return ret;

#define get_num_hitboxes(attack)

var ret = 0;
with owner ret = get_num_hitboxes(attack);
return ret;