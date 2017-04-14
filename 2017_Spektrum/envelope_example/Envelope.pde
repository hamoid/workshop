/*
 * Defines a timed envelope. points[] are expected as:
 * {value, time, value, time, value ...}
 * Set repetitions to -1 to loop.
 * Q: If looping, is there a way to redefine the envelope?
 */
class Envelope {
  public boolean done = true;
  public float currVal, lastVal;

  private float[] points;
  private int segmentId;
  private int repetitions;
  private float startTime, endTime;
  private float startVal, endVal;

  public Envelope() {
  }

  public Envelope(float v) {
    currVal = lastVal = v;
  }

  public Envelope(float[] points, int repetitions) {
    initialize(points, repetitions);
  }

  public void initialize(float[] points, int repetitions) {
    if (!done) {
      // do nothing if still animating
      return;
    }
    if (points.length % 2 == 0) {
      PApplet.println(points);
      PApplet.println(points.length,
          "points sent to an Envelope. It should be",
          points.length - 1, "or", points.length + 1, "!");
    } else {
      this.repetitions = repetitions;
      this.points = points;
      done = false;
      segmentId = 0;
      start();
    }
  }

  private void start() {
    startTime = millis();
    endTime = startTime + (int) points[segmentId + 1];
    currVal = startVal = lastVal = points[segmentId];
    endVal = points[segmentId + 2];
  }

  public boolean next() {
    if (done) {
      return false;
    }
    if (millis() > endTime) {
      segmentId += 2;
      if (segmentId > points.length - 3) {
        if (--repetitions != 0) {
          segmentId = 0;
        } else {
          done = true;
          return false;
        }
      }
      start();
    }
    float t = (millis() - startTime) / (endTime - startTime);
    currVal = easeInOut(t, startVal, endVal - startVal, 1);
    if (currVal == lastVal) {
      return false;
    } else {
      lastVal = currVal;
      return true;
    }
  }

  private float easeInOut(float t, float b, float c, float d) {
    if ((t /= d / 2) < 1) {
      return c / 2 * t * t + b;
    }
    return -c / 2 * ((--t) * (t - 2) - 1) + b;
  }
}