// Step 1. Import the video and spout library.
import processing.video.*;
import spout.*;

//Step 2. Declare a capture object and spout object.
Capture video;
Spout spout;

// Step 5. Read from the camera when a new image is available!
void captureEvent(Capture video) {
  video.read();
}

void setup() {  
  size(640, 480, P3D);
  
  // Step 3. Initialize Capture and spout objects.  
  video = new Capture(this, 640, 480);
  spout = new Spout(this);
  
  
  // Step 4. Start the capturing process and send through spout.
  video.start();
  spout.createSender("Spout Processing");
}

// Step 6. Display the image or send to spout.
void draw() {  
//image(video, 0, 0);
spout.sendTexture();
}
