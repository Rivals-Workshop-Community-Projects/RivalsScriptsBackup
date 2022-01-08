var nspecial_small = sprite_get("nspecial_fx_back");
var nspecial_big = sprite_get("nspecial_fx_big_back");
var slipstream = sprite_get("slipstream");

if (round(shine_timer/2) < 6){
    draw_sprite(nspecial_small,round(shine_timer/2),x,y)
}

if (round(big_shine_timer/3) < 5){
    draw_sprite(nspecial_big,round(big_shine_timer/3),x,y)
}

//if (slip_lifetime > 0 and slip_draw){
//    if slip_lifetime > 290{
//        var yscale = (-1*(slip_lifetime - 290)+10)/10
//    }
//    else if slip_lifetime < 10{
//        
//        var yscale = slip_lifetime/10
//    }
//    else{
//        var yscale = 1;
//    }
//    if slip_dir == 1{
//        for (var i = -200; i < slip_x-200; i += 200){
//           draw_sprite_ext(slipstream, 0, i + (slip_x mod 200), slip_y, 1, yscale, 0, c_white, 1);
//        }
//    }
//    else{
//        for (var i = 2000; i > slip_x+200; i -= 200){
//           draw_sprite_ext(slipstream, 0 , i - 400 + (n_mod(slip_x,200)), slip_y, 1, yscale, 0, c_white, 1);
//        }
//    }
//}

//for (var i = 0; i < array_length_1d(slip_fx_x); i += 1 ){
//    draw_sprite(slipstream_parts, slip_fx_sprites[i], slip_fx_x[i], slip_fx_y[i]);
//    slip_fx_x[i] += spr_dir;
//    slip_fx_age[i] += 1;
//    if slip_fx_age > 15{
//        array_delete(slip_fx_x, i, 1);
//        array_delete(slip_fx_y, i, 1);
//        array_delete(slip_fx_sprites, i, 1);
//        array_delete(slip_fx_x, age, 1);
//    }
//    
//}

#define n_mod(dividend, divisor)
var result = dividend % divisor;
while (result < 0) result += divisor;
return result;