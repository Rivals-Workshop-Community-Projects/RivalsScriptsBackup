// whether the tag palette is on. this variable is for your synced var.
// IMPORTANT: The 12 (first argument) in this function should be the same number as the user event.
tag_pal_on = player_tag_palettes(12); 
// the current alt, even with a tag palette equipped.
// just in case you want to support it in your css script somehow.
cur_tag_pal = tag_pal_on ? ssnk_tagpal.active_clr : get_player_color(player);

// please see 
// https://github.com/SupersonicNK/roa-workshop-templates/tree/master/generate-synced-var 
// for more info on this function. it helps have multiple values in your synced variable.
var syncvar = generate_synced_var( 
    tag_pal_on, 1 
    );

set_synced_var( player, syncvar ); 

// As usual, #defines all go at the bottom of the script.
#define player_tag_palettes
///(user_event, ?arg)
__ssnk_tagpal_scr = script_get_name(1);
__ssnk_tagpal_arg = argument_count > 1 ? argument[1] : 0;
user_event(argument[0]);
return "__ssnk_tagpal_res" in self ? __ssnk_tagpal_res : 0;

// https://github.com/SupersonicNK/roa-workshop-templates/tree/master/generate-synced-var 
#define generate_synced_var
///args chunks...
///Given pairs of chunks and their lengths in bits, compiles them into one value.
//arg format: chunk, bit_length, chunk, bit_length, etc.
var output = 0;
var num_chunks = argument_count/2;
if num_chunks != floor(num_chunks) {
    print("error generating synced var - function formatted wrong.");
    return 0;
}
var total_len = 0;
for (var i = num_chunks-1; i >= 0; i--) {
    var pos = (i*2);
    var shift = (pos-1 >= 0) ? argument[pos-1] : 0;
    total_len += argument[pos+1];
    output = output | argument[pos];
    output = output << shift;
}
if total_len > 32 {
    print(`error generating synced var - bit length surpassed 32! (${total_len} bits.)`);
    return 0;
}
return real(output);