//user_event 7
//palutena's guidance compatibility

with (oPlayer)
{
    if (player != other.player && "url" in self)
    {
        if (url == 2606511813) //pit
        {
            with (other)
            {
                initCodec();
                var SPK_PIT = 0     //Pit
                var SPK_PALU = 1    //Palutena
                var SPK_VIR = 2     //Viridi
                var SPK_DPIT = 3    //Dark Pit

                initCodecPage(SPK_PIT,	3,	0,	"Another angel? I didn't think I'd see another angel around here!");
                initCodecPage(SPK_VIR,	1,	1,	"But unlike you HE can fly on his own.");
                initCodecPage(SPK_PIT,	4,	1,	"What?!");
                initCodecPage(SPK_PALU,	0,	3,	"That's correct, Pit. Bar has the ability to jump 3 times in the air and glide");
                initCodecPage(SPK_PALU,	0,	1,	"Allows him to have pretty good air mobility.");
                initCodecPage(SPK_VIR,	5,	6,	"Not to mention he could probably send you flying in 3 hits!");
                initCodecPage(SPK_PIT,	9,	1,	"Is there anything else I need to worry about?");
                initCodecPage(SPK_PALU,	1,	0,	"Don't be so easily startled Pit, while Bar sure packs a mean punch, his special moves are limited by mana.");
                initCodecPage(SPK_PALU,	5,	1,	"If you pressure Bar into using up his mana, he could leave himself vulnerable");
                initCodecPage(SPK_PALU,	6,	5,	"His range without his specials is also not something to write home about.");
                initCodecPage(SPK_PIT,	3,	0,	"So the plan is simple, dodge his moves and space him out!");
                return;
            }
        }
        else if (url == 2284823424) //steve
        {
            with (other)
            {
                switch (attack)
                {
                    case AT_JAB: case AT_FTILT: case AT_DTILT: case AT_NAIR: case AT_UAIR: case AT_BAIR: case AT_UTHROW:
                        steve_death_message = steve_death1;
                        break;
                    case AT_UTILT: case AT_FAIR: case AT_DAIR: case AT_FSTRONG:
                        steve_death_message = steve_death2;
                        break;
                    case AT_USTRONG: case AT_NTHROW: case AT_NSPECIAL_AIR: case AT_DTHROW: case AT_NSPECIAL_2: case AT_USPECIAL_2: case AT_EXTRA_2: case 39:
                        steve_death_message = steve_death3;
                        break;
                    case AT_DSTRONG: case AT_FTHROW: case AT_FSPECIAL_AIR: case AT_EXTRA_1: case AT_FSPECIAL_2: case AT_DSPECIAL_2: case AT_EXTRA_3:
                        steve_death_message = steve_death4;
                        break; 
                    case AT_TAUNT:
                        steve_death_message = steve_death5;
                        break;
                }
            }
        }
        else exit;
    }
}

#define initCodec()
{
    with oPlayer if "ruber_pit" in self {
        load_codecs = true;
    }

    pit_codecs = [];

    var new_cdc = {
        pages: []
    };

    array_push(pit_codecs, new_cdc);
}
#define initCodecPage(cd_speaker, cd_expression, cd_sfx, cd_text)
{
    var new_page = {
        speaker: cd_speaker,
        expression: cd_expression,
        sfx: cd_sfx,
        text: cd_text
    };
    array_push(pit_codecs[array_length(pit_codecs) - 1].pages, new_page);
}