//fps counter

if(!variable_instance_exists(self, "fpsBufferSize"))
{
    fpsBufferSize = 60*3;
    fpsBuffer = ds_list_create();
    fpsBufferIndex = 0;
    fpsRunningTotal = 0;
    for (var i = 0; i < fpsBufferSize; i++)
    {
        ds_list_add(fpsBuffer, fps_real);
        fpsRunningTotal += fps_real;
    }
}

var oldValue = fpsBuffer[| fpsBufferIndex];
fpsBuffer[| fpsBufferIndex] = fps_real;

fpsRunningTotal = fpsRunningTotal - oldValue + fps_real;
fpsBufferIndex = (fpsBufferIndex + 1) % fpsBufferSize;

var averageFPS = fpsRunningTotal / fpsBufferSize;
print("Average FPS over the last " + string(fpsBufferSize) + " frames: " + string(averageFPS) + " (current fps: " + string(fps_real) + ")");
