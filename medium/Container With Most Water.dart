class Solution {
  int maxArea(List<int> height) {

      /*
      int max =0;
      int len=height.length;
      
      
      for(int i=0;i<len;i++){

          for(int j=i;j<len;j++){

              int longerSide= height[i] > height[j] ? height[i] : height[j];
              int tembArea =(longerSide - (height[i]-height[j]).abs())*(j-i);
              if(tembArea>max)
              max=tembArea;

          }
      }
      

      
      return max;
      */

/*
      int max =0;
      int len=height.length;
      int longestIndex=0;
      int x=0;
      for(int a=0;a<len;a++){
       
          if(height[a]>x){
        //  continue;
              x = height[a];
              longestIndex=a;
          }
      }


      // for(int i=0;i<len;i++){

          for(int j=0;j<len;j++){
            //  int longerSide= x > height[j] ?x : height[j];
            
              int tembArea =( x - (x-height[j])) * ( j - longestIndex ).abs();
              if(tembArea>max)
              max=tembArea;
          }
     // }
      

      
      return max;
*/

int e= height.length-1;
int maxArea=0;
int shortAxis=0;
int tembArea=0;
for(int i =0; i <height.length;i++){

    if(i>e)break;

     shortAxis= height[i]<=height[e]? height[i]:height[e];

     tembArea= (shortAxis) * (e-i);

    maxArea = maxArea >= tembArea ? maxArea : tembArea;

    if(height[i]<height[e])
    continue;
    else{
    i--;
    e--;}
}
return maxArea;
  }
}