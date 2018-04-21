PrintWriter output;

PImage image;

ArrayList<Integer> colors = new ArrayList<Integer>();

int cWidth = 10;
int cHeight = 10;

void setup(){
  //size(100,100);
  fullScreen();
  image = loadImage("image3.png");
  output = createWriter("loader/result.cim");
  image(image,0,0,width,height);
  for(int x=0;x<width;x+=cWidth){
    for(int y=0;y<height;y+=cHeight){
      int temp = 0;
      int temp2 = 0;
      int temp3 = 0;
      for(int _x=0;_x<cWidth;_x++){
        for(int _y=0;_y<cHeight;_y++){
          temp+=red(get(x+_x,y+_y));
          temp2+=green(get(x+_x,y+_y));
          temp3+=blue(get(x+_x,y+_y));
        }
      }
      //println(temp);
      temp=(temp/(cWidth*cHeight));
      temp2=(temp2/(cWidth*cHeight));
      temp3=(temp3/(cWidth*cHeight));
      colors.add(temp);
      colors.add(temp2);
      colors.add(temp3);
      set(x,y,color(temp,temp2,temp3));
    }
  }
  output.println(cWidth);
  output.println(cHeight);
  for(int i=0;i<colors.size();i++){
    output.println(colors.get(i));
  }
}
