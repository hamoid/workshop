import processing.video.*;

Movie movie;

void setup() {
  fullScreen();
  // Replace the "path" with a valid path of a video in your computer.
  
  // If I had the video inside the data folder inside the sketch folder,
  // I could type "MAH03841.MP4" without the /home/funpro/Videos/2015/ part.
  
  // The reason I don't do that is to not have many copies of the same
  // video in my computer. I prefer having all my videos inside Videos/
  movie = new Movie(this, "/home/funpro/Videos/2015/MAH03841.MP4");
  movie.loop();
}


void draw() {
  if (movie.available()) {
    movie.read();
    
    background(0);

    // copy the left half of the video to cover the left third of the screen
    copy(movie, 
      0, 0, movie.width/2, movie.height, // from 
      0, 0, width/3, height); // to
      
    // copy the right half of the video to cover the right third of the screen
    copy(movie, 
      movie.width/2, 0, movie.width/2, movie.height, // from 
      width*2/3, 0, width/3, height); // to
  }
  
  // add your credits to the program
  fill(255); // 0 is black, 255 is white, values between 0 and 255 are gray
             // it's the same as typing fill(255, 255, 255);
  textSize(48);
  text("Title - Name", 20, height - 20);
}