


class smiley
{
  int tempheadX, tempheadY, tempheadHR, tempheadWR, 
    tempEyeOneX, tempEyeOneY, tempEyeOneHR, tempEyeOneWR, 
    tempEyeTwoX, tempEyeTwoY, tempEyeTwoHR, tempEyeTwoWR, 
    tempMouthX, tempMouthY, tempMouthHR, tempMouthWR;


  smiley(int headXpos, int headYpos, int headHeightRadius, int headWidthRadius, 
    int eyeOneXpos, int eyeOneYpos, int eyeOneHeightRadius, int eyeOneWidthRadius, 
    int eyeTwoXpos, int eyeTwoYpos, int eyeTwoHeightRadius, int eyeTwoWidthRadius, 
    int mouthXpos, int mouthYpos, int mouthHeightRadius, int mouthWidthRadius)
  {
    tempheadX = headXpos;
    tempheadY = headYpos;
    tempheadHR = headHeightRadius;
    tempheadWR = headWidthRadius;
    tempEyeOneX = eyeOneXpos;
    tempEyeOneY = eyeOneYpos;
    tempEyeOneHR = eyeOneHeightRadius;
    tempEyeOneWR = eyeOneWidthRadius;
    tempEyeTwoX = eyeTwoXpos;
    tempEyeTwoY = eyeTwoYpos;
    tempEyeTwoHR = eyeTwoHeightRadius;
    tempEyeTwoWR  = eyeTwoWidthRadius;
    tempMouthX = mouthXpos;
    tempMouthY = mouthYpos;
    tempMouthHR = mouthHeightRadius;
    tempMouthWR = mouthWidthRadius;
  }

  void display()
  {
    fill(#FFDF76);
    ellipse(tempheadX, tempheadY, tempheadHR, tempheadWR);
    fill(#FAFF03);
    ellipse(tempEyeOneX, tempEyeOneY, tempEyeOneHR, tempEyeOneWR);
    ellipse(tempEyeTwoX, tempEyeTwoY, tempEyeTwoHR, tempEyeTwoWR);
    fill(#000000);
    ellipse(tempMouthX, tempMouthY, tempMouthHR, tempMouthWR);
  }
  void move()
  {
    if (keyLeft == true)
    {
      tempheadX -=7;
      tempEyeOneX -=7;
      tempEyeTwoX -=7;
      tempMouthX -=7;
    } 
    if (keyRight == true)
    {
      tempheadX +=7;
      tempEyeOneX +=7;
      tempEyeTwoX +=7;
      tempMouthX +=7;
    } 
    if (keyUp == true)
    {
      tempheadY -=7;
      tempEyeOneY -=7;
      tempEyeTwoY -=7;
      tempMouthY -=7;
    }
    if (keyDown == true)
    {
      tempheadY +=7;
      tempEyeOneY +=7;
      tempEyeTwoY +=7;
      tempMouthY +=7;
  }
  else{
   tempheadY+=0;
   tempEyeOneY+=0;
   tempEyeTwoY+=0;
   tempMouthY+=0;
   tempheadX+=0;
   tempEyeOneX+=0;
   tempEyeTwoX+=0;
   tempMouthX+=0;
  }
  }
}
