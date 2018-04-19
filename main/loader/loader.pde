void setup(){
  String[] image = loadStrings("result.cim");
  size(1920,1080);
  int w = int(image[0]);
  int h = int(image[1]);
  for(int x=0;x<width;x+=w){
    for(int y=0;y<width;y+=w){
      for(int _x=0;_x<w;_x++){
        for(int _y=0;_y<h;_y++){
          set(x+_x,y+_y,int(image[x+width/(y+1)]));
        }
      }
    }
  }
}