///


            hpar2 = hit_fx_create( sprite_get( "hpar2" ), 20 );
            hpar3 = hit_fx_create( sprite_get( "hpar3" ), 20 );
            hpar1 = hit_fx_create( sprite_get( "hpar1" ), 18 );
            lockouttimer = 0
            
            fxspark1 = hit_fx_create( sprite_get( "fxspark1" ), 35 );
fxspark2 = hit_fx_create( sprite_get( "fxspark2" ), 35 );
fxspark3 = hit_fx_create( sprite_get( "fxspark3" ), 35 );
randox = (x % 4)*40	
randoy = (y % 6)*10	

sentrymode = 0

if attack == AT_EXTRA_1 {
plasma_safe = true
}