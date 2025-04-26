//La Reina articlesolid_init.gml

init = 0;
platform_width = 184;

fans_sprite_index = sprite_get("lareinaring");
fans_mask_index = sprite_get("lareinaring_mask");

// replace the ring sprite for skins
alt_palette = 0;
var real_player = 0;
with player_id {
  real_player = (room == asset_get("network_char_select") && object_index != oTestPlayer) ? 0 : player;
  other.alt_palette = get_player_color( real_player );
}

var sync = get_synced_var(real_player)
var tens = floor(sync/10)
if alt_palette == player_id.tournament_alt && tens == 1 { // Genesis X
  fans_sprite_index = sprite_get("lareinaring_gx");
}

table_sprite_index = sprite_get("loyaltable");
table_cracked_sprite_index = sprite_get("loyaltable_cracked");
table_empty_sprite_index = sprite_get("trustytable_empty");
table_mask_index = sprite_get("loyaltable_mask");

is_fans = true;
destroy_self = false; can_crumble = false;
sprite_index = fans_sprite_index;
mask_index = fans_sprite_index;

table_fx_left = hit_fx_create( sprite_get( "loyaltable_fragment_left" ), 200 );
table_fx_right = hit_fx_create( sprite_get( "loyaltable_fragment_right" ), 200 );

depth = 11;

rising_timer = 0;
lifetime = 42;
despawn_point = 2000;

//Default variables
uses_shader = true;
