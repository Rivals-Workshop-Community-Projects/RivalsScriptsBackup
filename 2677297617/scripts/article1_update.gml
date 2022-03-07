//sad
sprite_index = sprite_get("empty");
depth = 34;

if phase == 4
{
    if kaleidoscopeAlpha <= 1
    {
        kaleidoscopeAlpha+=0.01;
    }
}

if phase == 5
{
    if kaleidoscopeAlpha >= 0.01
    {
        kaleidoscopeAlpha-=0.01;
    }
    
    if kaleidoscope2Alpha <= 1
    {
        kaleidoscope2Alpha+=0.01;
    }
}

kaleidoscopeRot+=0.15;

if kaleidoscopeRot == 360
{
    kaleidoscopeRot = 0;
}

kaleidoscopeImage+=0.05;

if kaleidoscopeImage >= 3
{
    kaleidoscopeImage = 0;
}

parallax_x = 0-(0.20);
parallax_y = 0-(0.20);

//yeah this is how you get stage-editor-equivalent parallax values for stage articles
//if it's positive, subtract it, vice versa
//for use in the draw script, you can now use temp_x and temp_y for reading post-parallax values
//we got that in the latest (at the time of writing: 2020/07/12) workshop update
//thank you giik