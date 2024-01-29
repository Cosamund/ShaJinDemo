



void serialEvent(Serial port) { 
  // String inData = port.readStringUntil('\n');
  String inData = new String(port.readBytesUntil('\n'));
  inData = trim(inData);                   // cut off white space (carriage return)

  if (inData.charAt(0) == 'S') {           // leading 'S' for sensor data
    inData = inData.substring(1);          // cut off the leading 'S'
    Sensor = int(inData);                  // convert the string to usable int
  }

  if (inData.charAt(0) == 'B') {           // leading 'B' for BPM data
    inData = inData.substring(1);          // cut off the leading 'B'
    BPM = int(inData);                     // convert the string to usable int
    beat = true;                           // set beat flag to advance heart rate graph
    heart = 20;                            // begin heart image 'swell' timer
  }

  if (inData.charAt(0) == 'Q') {           // leading 'Q' means IBI data 
    inData = inData.substring(1);          // cut off the leading 'Q'
    IBI = int(inData);                     // convert the string to usable int
  }

  if (inData.charAt(0) == 'W') {           // leading 'W' means Weight data 
    inData = inData.substring(1);          // cut off the leading 'W'
    Weight = int(inData);                  // convert the string to usable int
  }

  if (inData.charAt(0) == 'C') {           // leading 'C' means Counter data 
    inData = inData.substring(1);          // cut off the leading 'C'
    Counter = int(inData);                 // convert the string to usable int
  }

  if (inData.charAt(0) == 'A') {           // leading 'A' means Counter data 
    inData = inData.substring(1);          // cut off the leading 'A'
    Ans = int(inData);                     // convert the string to usable int
  }
  
  if (inData.charAt(0) == 'K') {           // leading 'M' means CMin
    inData = inData.substring(1);          // cut off the leading 'M'
    CMin = int(inData);                  // convert the string to usable int
  }
}
