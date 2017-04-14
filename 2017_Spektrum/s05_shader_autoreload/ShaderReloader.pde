class ShaderReloader {
  private PShader shader;

  private long fragTs, vertTs;
  private long fragPrevTs, vertPrevTs;
  private File fragFile, vertFile;

  private boolean loaded = false;
  private boolean errorDisplayed = false;

  private PApplet pg;
  private PGraphics error;

  int reloadEvery = 60; // frames

  ShaderReloader(PApplet pg, String frag, String vert) {
    this.pg = pg;

    error = createGraphics(pg.width, pg.height, P2D);

    fragFile = new File(dataPath(frag));
    vertFile = new File(dataPath(vert));

    fragPrevTs = fragTs = fragFile.lastModified();
    vertPrevTs = vertTs = vertFile.lastModified();

    tryLoadingShader();
  }

  public void apply() {

    if (pg.frameCount % reloadEvery == 0) {
      if (!fragFile.exists()) {
        println("File not found:", fragFile.getName());
      } else if (!vertFile.exists()) {
        println("File not found:", vertFile.getName());
      } else {
        if (shadersModified()) {
          println("Shader file has changed. Updating.");
          tryLoadingShader();
        }
      }
    }

    if (loaded) {
      shader.set("vec2_mouse", float(mouseX), float(pg.height-mouseY));
      shader.set("u_time", pg.frameCount * 0.01);

      // apply shader
      pg.shader(shader);
    } else {
      image(error, 0, 0);
    }
  }


  void tryLoadingShader() {

    try {  
      shader = loadShader(fragFile.getAbsolutePath(), vertFile.getAbsolutePath());

      // You have to set at least one uniform here to trigger syntax errors
      // see: https://github.com/processing/processing/issues/2268
      shader.set("vec2_sketchSize", float(pg.width), float(pg.height));

      loaded = true;
      errorDisplayed = false;
    }     
    catch (RuntimeException e) {    
      if (errorDisplayed == false) { 
        println("\n");
        println("loadShader() returned the following error: \n");
        e.printStackTrace();
        displayError();
      }
      loaded = false;
    }
  }

  void displayError() {
    error.beginDraw();
    error.noStroke();
    error.fill(255, 100);
    error.rect(0, 0, pg.width, pg.height);
    error.stroke(255);
    error.fill(255, 0, 0);
    error.textAlign(CENTER);
    error.textSize(18);
    error.text("Error compiling the shader.", pg.width/2, pg.height/2 - 15);
    error.text("Check the console for details.", pg.width/2, pg.height/2 + 15);
    error.endDraw();
    errorDisplayed = true;
  }

  private boolean shadersModified() {
    fragTs = fragFile.lastModified();
    vertTs = vertFile.lastModified();

    if (fragTs != fragPrevTs || vertTs != vertPrevTs) {
      fragPrevTs = fragTs;
      vertPrevTs = vertTs;
      return true;
    } 
    return false;
  }
}