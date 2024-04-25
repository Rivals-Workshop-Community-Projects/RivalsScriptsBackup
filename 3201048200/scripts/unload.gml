
var disguised = state == PS_CROUCH || (state == PS_ATTACK_GROUND && attack == AT_TAUNT_2) || (state == PS_ATTACK_GROUND && attack == AT_DTILT) || (state == PS_ATTACK_GROUND && attack == 49);

if (disguised) set_victory_portrait(sprite_get("portrait_perry"));
if (disguised) set_victory_theme( sound_get("perry_victory_2") )
set_synced_var(player, disguised);