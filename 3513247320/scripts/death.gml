has_rock = false;
my_grab_id = noone;
sound_stop(fstrong_sfx);
sound_stop(nspec_sfx);
nspec_charge = 0;
nspec_lemon_timer = 0;
nspec_lemon_buffer_timer = 0;
can_use_jet = true;
uspec_fuel = uspec_max_fuel;
if instance_exists(uspec_rush) if uspec_rush.article_state != "DESPAWN"{
	uspec_rush.article_state = "DESPAWN";
	uspec_rush.mask_index = asset_get("empty_sprite");
	uspec_rush.image_index = uspec_rush.num == 1? 19:2;
	sound_play(sound_get("rush_vanish"));
}

var deathpos = "";
if x < get_stage_data(SD_LEFT_BLASTZONE_X) deathpos = "left";
else if x > get_stage_data(SD_RIGHT_BLASTZONE_X) deathpos = "right";
else if y < get_stage_data(SD_TOP_BLASTZONE_Y) deathpos = "top";
else if y > get_stage_data(SD_BOTTOM_BLASTZONE_Y) deathpos = "bottom";
else deathpos = "middle";
//print_debug(deathpos);

var xpos = x + (deathpos == "left"? 200:deathpos == "right"? -200:0);
var ypos = y + (deathpos == "bottom"? -250:deathpos == "top"? 300:0);

spawnInCircle(AT_TAUNT, 1, xpos, ypos, 8, 8);
spawnInCircle(AT_TAUNT, 1, xpos, ypos, 4, 4);
PlayVoiceClip("sfx", "death", 0.8, true, false);

#define spawnInCircle(attack, index, x1, y1, spd, num)
for (var i = 0; i < 360; i += floor(360 / num)){
    var proj = create_hitbox(AT_TAUNT, 1, x1, y1);
    proj.hsp = lengthdir_x(spd, i);
    proj.vsp = lengthdir_y(spd, i);
}

#define PlayVoiceClip
var varName = argument[0], sfxName = argument[1];
var volume = argument_count > 2 ? argument[2] : 1;
var stopprev = argument_count > 3 ? argument[3] : true;
var pitch = argument_count > 4 ? argument[4] : true;
var noHitpause = argument_count > 5 ? argument[5] : true;
if((!hitpause && noHitpause || !noHitpause)){
	if(stopprev)sound_stop(variable_instance_get(self,varName));
	variable_instance_set(self,varName,sound_play(sound_get(is_array(sfxName)?sfxName[random_func(1, array_length(sfxName), true)]:sfxName)));
	sound_volume(variable_instance_get(self,varName), volume, 0);if(pitch)sound_pitch(variable_instance_get(self,varName),("voicepitch" in self)? voicepitch:1);
}
