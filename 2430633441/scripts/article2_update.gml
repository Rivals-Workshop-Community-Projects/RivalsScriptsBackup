time -= (time > 0)
var framediv = 4;


if place_meeting(x,y,asset_get("plasma_field_obj")) {
	time = min(time, 0);
	plasma = true;
	sound_play(asset_get("sfx_clairen_hit_med"));
}


image_alpha = 0;

if (time <= 0 && !((player_id.state == PS_ATTACK_GROUND or player_id.state == PS_ATTACK_AIR) && player_id.state_timer > 1)) or plasma {
for (var i = 0; i < player_id.maxplanets; i++) {
	var p = player_id.planet[i]
	if p.orbiting && p.owner == id {
		p.orbiting = 0;
		p.owner = orig_player_id;
	}
}
var h = spawn_hit_fx(x,y,orig_player_id.hitfx[7])
sound_play(asset_get("sfx_ori_energyhit_weak"))

if has_rune("C") {
	sound_play(asset_get("sfx_ell_utilt_cannon"));
	create_hitbox(AT_NSPECIAL, 2, floor(x), floor(y-40));
var h = spawn_hit_fx(floor(x),floor(y),orig_player_id.hitfx[15])
}

instance_destroy();
exit;
}
//if has_rune("C") print_debug("HELLO");

if vsp < 0 vsp += 0.04;
else if abs(hsp) < 2 vsp += 0.005;



if y >= room_height + 200 {
	vsp = 0;
	y = room_height + 200;
	time -= 2;
}

time = max(time,1)

image_index = ((time*0.2) mod 4) + floor(ease_circOut(image_number,0,min(time, time_total),time_total)/framediv)*framediv;

if get_player_color(player) == 16 image_index = ease_linear(image_number, 0, time, time_total)

if (player_id.state == PS_ATTACK_GROUND or player_id.state == PS_ATTACK_AIR) && player_id.attack == AT_DSPECIAL && player_id.image_index > 0 {
	sprite_index = active_sprite;
	image_index = player_id.image_index-1;
} else {
	sprite_index = inactive_sprite;
}


hsp -= sign(hsp)*0.6
if abs(hsp) < 0.3 hsp = 0;
y_off = max(y_off-1,dcos(time*6)*2);