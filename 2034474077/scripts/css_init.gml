
if(init){
    initialized = 0;
    initialized_loop = 2;
    specials = [0, 0, 0, 0];
}else{
    initialized = 10;
    initialized_loop = 0;
    
    var tmp_specials = get_synced_var(player);
    //read specials from synced var
    for (var i = 0; i <= 3; i++) {
        var shift = (i*2);
        //print(`${i} = ${tmp_specials >> shift & 3}`); //whee debug print
        specials[i] = tmp_specials >> shift & 3;
        specials[i]--;
    }
}
css_open = false;

//code below from supersonic----------------------------------------------------
synced_number = 0;

//set synced number to our chunk
synced_number = generate_specials_chunk(specials);

set_synced_var(player, synced_number);
#define generate_specials_chunk(spec_arr)
//generates the special chunk for synced var, code by supersonic

// chunk format:
// 2 bits per special, dd uu ff nn
// 8 bits total length
var chunk = 0;
//set specials from array, doing it backwards tho. i read it right to left in init
var len = array_length(spec_arr)-1
for (var i = len; i >= 0; i--) {
    //print(`${i} = ${spec_arr[i]}`); //debug print woo
    if (i != len)
        chunk = chunk << 2; //bitshift left 2 to make room for the next value
    chunk += (spec_arr[i] + 1); //add the special's value
}

return chunk;