//La Reina articlesolid_init.gml

init = 0;
platform_width = 184;

fans_sprite_index = sprite_get("lareinaring");
fans_mask_index = sprite_get("lareinaring_mask");

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
