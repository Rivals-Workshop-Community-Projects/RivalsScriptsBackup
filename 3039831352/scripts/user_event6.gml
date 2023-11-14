//user_event 6
//dracula compatibility

//check the stage ID means that it will not run otherwise
//if it is the currect IDs, make sure the text only runs once cuz i don't need it beyond that
if (get_stage_data(SD_ID) != "213227551" && get_stage_data(SD_ID) != "2381606021") exit;

wait_time = 0;
if (get_gameplay_time() > 260) wait_time = normal_wait_time;

if (!set_up_super_colors) //base form
{
    var page = 0;

    //Page 0
    dracula_speaker[page] = 0;
    dracula_text[page] = "Who let this filthy animal into my castle?";
    page++;

    //Page 1
    dracula_speaker[page] = 1;
    dracula_text[page] = "Eh, nobody really, just felt like joining the party, don't sweat it!";
    page++;

    //Page 2
    dracula_speaker[page] = 1;
    dracula_text[page] = "Was kinda lame though, you should work on inviting less goblins and zombies.";
    page++;

    //Page 3
    dracula_speaker[page] = 0;
    dracula_text[page] = "...So you were the one who stormed my undead army?";
    page++;

    //Page 4
    dracula_speaker[page] = 1;
    dracula_text[page] = "You could say that, Bat guy! But you had it comin', y'know?";
    page++;

    //Page 5
    dracula_speaker[page] = 0;
    dracula_text[page] = "So there's more to you than just some island mammal.";
    page++;

    //Page 6
    dracula_speaker[page] = 1;
    dracula_text[page] = "I'm just a guy that loves adventures, Sonic the Hedgehog!";
    page++;

    //Page 7
    dracula_speaker[page] = 0;
    dracula_text[page] = "Then your adventuring days shall come to an end, hedgehog!";
}
else //super form
{
    var page = 0;
    
    //Page 0
    dracula_speaker[page] = 0;
    dracula_text[page] = "This sufficating energy... This is the power of chaos isn't it.";
    page++;

    //Page 1
    dracula_speaker[page] = 0;
    dracula_text[page] = "Interesting, I would need to study this mysterious power more.";
    page++;

    //Page 2
    dracula_speaker[page] = 2;
    dracula_text[page] = "You're done, Count. You've done enough to ruin the planet, I simply returned the favor!";
    page++;

    //Page 3
    dracula_speaker[page] = 0;
    dracula_text[page] = "Clearly you don't know who you are dealing with here, hedgehog.";
    page++;

    //Page 4
    dracula_speaker[page] = 2;
    dracula_text[page] = "Same applies to you, buddy!";
    page++;

    //Page 5
    dracula_speaker[page] = 0;
    dracula_text[page] = "I will rid you of those powers and study you, this will be very interesting material to research on.";
    page++;

    //Page 6
    dracula_speaker[page] = 0;
    dracula_text[page] = "Do not disappoint me.";
    page++;
}