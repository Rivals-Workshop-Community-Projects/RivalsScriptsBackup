///


lpar1 = hit_fx_create( sprite_get( "lpar1" ), 15);
lpar2 = hit_fx_create( sprite_get( "lpar2" ), 20);
lpar3 = hit_fx_create( sprite_get( "lpar3" ), 20);
lpar4 = hit_fx_create( sprite_get( "lpar4" ), 20);
lpar5 = hit_fx_create( sprite_get( "lpar5" ), 20);
shit5 = hit_fx_create( sprite_get( "shit5" ), 60 );
shit1 = hit_fx_create( sprite_get( "shit1" ), 60 );
djumped = 0


if AT_NSPECIAL && (hbox_num == 2 or hbox_num == 3){
    player_id.fp = self
}