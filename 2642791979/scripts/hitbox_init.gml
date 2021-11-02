//

plasma_safe = true

exp2 = hit_fx_create( sprite_get( "explosionbigger" ), 32);
sprite_change_offset("explosionbigger", 192/2, 192/2);

exp1 = hit_fx_create( sprite_get( "explosion2" ), 32);
sprite_change_offset("explosion2", 96/2, 96/2);

if hbox_num != 6 {
can_hit_self = true
}