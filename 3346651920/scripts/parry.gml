//parry.gml

sound_stop(asset_get("sfx_parry_success"));
sound_play(asset_get("sfx_parry_success"),false,noone,0.8,0.9);
sound_play(asset_get("sfx_parry_success"),false,noone,0.4,0.87);
sound_play(asset_get("sfx_parry_success"),false,noone,0.4,0.81);
sound_play(asset_get("sfx_parry_success"),false,noone,0.18,0.6);
sound_play(asset_get("sfx_parry_success"),false,noone,0.12,0.22);
sound_play(asset_get("sfx_parry_success"),false,noone,0.12,0.2);
sound_play(sound_get("antici_2"), false, noone, 0.5, 0.5);
sound_play(sound_get("piano"), false, noone, 0.7, 1);
sound_play(sound_get("tta_22"))


summon_afterimage(-0.75, 0);
summon_afterimage(0.75, 0);

#define summon_afterimage
///summon_afterimage(hspboolean, vspboolean)
var aft_ = instance_create( x, y, "obj_article1" );
aft_.sprite_index = sprite_index;
aft_.image_index = image_index;
if (state == PS_ROLL_BACKWARD || state == PS_ROLL_FORWARD || state == PS_TECH_BACKWARD || state == PS_TECH_FORWARD || state == PS_AIR_DODGE){
	aft_.image_index = 1;
}
aft_.spr_dir = spr_dir;
aft_.hsp = argument[0];
aft_.vsp = argument[1];
return aft_;