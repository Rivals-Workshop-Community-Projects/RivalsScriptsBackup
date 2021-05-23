//natsumi got_hit

usp_did = false;

if (usp_cd_state != 0&&usp_cd_state != 3){
move_cooldown[AT_USPECIAL] = 0;
usp_cd_state = 3;
usp_cd_timer = 0;
sound_play(sound_get("fill"))
}