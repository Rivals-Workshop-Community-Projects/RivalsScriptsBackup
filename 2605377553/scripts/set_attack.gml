//set_atk
hold_timer = 0;

if get_player_color( player ) == 23 {
set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("dstrong_genesis"));
set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrong_genesis"));
set_attack_value(AT_USTRONG, AG_SPRITE, sprite_get("ustrong_genesis"));
}