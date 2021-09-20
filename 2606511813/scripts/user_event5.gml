//trummel specific codec (pit initiated)

//trummel codec
//pieced together from phone code
//default speakers:
SPK_TRUM = 0; //trummel speaker
SPK_ALTO = 1; //alto speak;s
SPK_OTTO = 2; //ot to
SPK_CODA = 3; //coda
SPK_ECHO = 4; //not coda
SPK_MINE = 5; //steve (total vocabulary: OOF. muno usually doesnt use this guy)
SPK_SEGA = 6; //it's sonic. (muno also usually doesnt use this guy)
 
//gimmicks:
//multiply these together to use multiple.
GIM_CHOMP = 2; //makes you ftilt
GIM_CLONE = 3; //display two speakers
GIM_LAUGH_TRACK = 5; //.. yeah
GIM_SKIP = 7; // advance page immediately once text finishes
GIM_DIE = 11; // die
GIM_SHUT_UP = 13; // no chatter sfx
GIM_HOWL = 17; // makes you dspecial
GIM_SHADER = 19; // use your char's shaders (alt palette) for the speaker sprite
GIM_TEXTBOX = 23; // uses a custom textbox sprite for the sprite set the spr_custom_trummel_textbox var to set it.
GIM_COLOR = 29; // uses a custom color for the text. set the spr_custom_trummel_color var to set it.
 
 
trummel_codecs = [];
initCodec(0);

if codec_triggered == 'Pit' {
    //pit initiated
    initCodecPage(SPK_ALTO, 5, 0, "Wait these guys can talk too!?");
    initCodecPage(SPK_TRUM, 2, 0, "bruh codecs are our thing");
    initCodecPage(SPK_TRUM, 6, 0, "uhhhhhhhh");
    initCodecPage(SPK_ALTO, 4, 0, "Trummel I think its best we not start an argument. She is a goddess after all.");
    initCodecPage(SPK_ALTO, 1, 0, "Thank you! You and I seem to share the same interests.");
    initCodecPage(SPK_ALTO, 4, 0, "That's bold coming from you, Mr. 'Angel but can't fly by himself'");
    initCodecPage(SPK_TRUM, 0, 0, "lol");
} else {
    //trum initiated
    initCodecPage(SPK_TRUM, 0, 0, "floor icecream");
    initCodecPage(SPK_ALTO, 3, 0, "Palutena, you mind sharing some tips on fighting Pit?");
    initCodecPage(SPK_TRUM, 5, 0, "does he eat snails");
    initCodecPage(SPK_ALTO, 0, 0, "I think you're safe for now Trummel. We have a battle at hand.");
}

 
#define initCodec(cd_gimmick)
 
var new_cdc = {
    gimmick: cd_gimmick,
    pages: []
};
 
array_push(trummel_codecs, new_cdc);
 
 
 
#define initCodecPage(cd_speaker, cd_expression, cd_gimmick, cd_text)
 
var new_page = {
    speaker: cd_speaker,
    expression: cd_expression,
    gimmick: cd_gimmick,
    text: cd_text
};
 
array_push(trummel_codecs[array_length(trummel_codecs) - 1].pages, new_page);
 
 
 
#define initSpeaker(idx, speak_name, speak_sprite)
 
trummel_speakers[idx] = {
    name: speak_name,        // Name displayed while talking
    sprite: speak_sprite    // Sprite of face
};
 
return idx * -1;