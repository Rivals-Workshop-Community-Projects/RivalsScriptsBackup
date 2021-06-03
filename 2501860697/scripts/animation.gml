
/*
var mod_value = 5; //default (1/5frames)
if (charge < 0) { mod_value = 3; } //high (1/3 frames)

if (get_gameplay_time() % mod_value == 0)
*/

if (state == PS_SPAWN) {
    if (introTimer < 29 && introTimer >= 0) {
        sprite_index = sprite_get("intro");
        image_index = introTimer;
    } else if (introTimer < 0) {
        sprite_index = sprite_get("intro");
        image_index = 0;
    } else {
        sprite_index = sprite_get("idle");
    }
}

if (charge < 100 && charge > 80 && charge % .05 == 0 && venom_timer == 0 && short != 1 && state != PS_SPAWN && state != PS_RESPAWN){
var kx = x + floor(char_height/2.5) - random_func(0, char_height, true);
var ky = y - random_func(2, char_height + 30, true);
       spawn_hit_fx(kx, ky, lightning_fx1);
    } 

if (charge < 80 && charge > 60 && charge % .1 == 0 && venom_timer == 0 && short != 1){
var kx = x + floor(char_height/2.5) - random_func(0, char_height, true);
var ky = y - random_func(2, char_height + 30, true);
       spawn_hit_fx(kx, ky, lightning_fx1);
    } 
    
if (charge < 60 && charge > 40 && charge % .075 == 0 && venom_timer == 0 && short != 1){
var kx = x + floor(char_height/2.5) - random_func(0, char_height, true);
var ky = y - random_func(2, char_height + 30, true);
       spawn_hit_fx(kx, ky, lightning_fx1);
    } 



if (charge < 40 && charge > 20 && charge % .25 == 0 && venom_timer == 0 && short != 1){
var kx = x + floor(char_height/2.5) - random_func(0, char_height, true);
var ky = y - random_func(2, char_height + 30, true);
       spawn_hit_fx(kx, ky, lightning_fx1);
    } 


if (charge < 20 && charge > 0 && charge % .5 == 0 && venom_timer == 0 && short != 1){
var kx = x + floor(char_height/2.5) - random_func(0, char_height, true);
var ky = y - random_func(2, char_height + 30, true);
       spawn_hit_fx(kx, ky, lightning_fx1);
    } 

   
if (venom_timer > 0 && charge % .05 == 0){
var kx = x + floor(char_height/2.5) - random_func(0, char_height, true);
var ky = y - random_func(2, char_height + 30, true);
       spawn_hit_fx(kx, ky, lightning_fx2);
    } 
