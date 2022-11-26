class Solution {
  List<String> sortPeople(List<String> names, List<int> heights) {
      for(int i=0;i<heights.length;i++){
          int max=i;
          for(int j=i+1;j<heights.length;j++){
              if(heights[max]<heights[j]){
                  max=j;
              }
          }
          //swaping
          var tmb=names[i];
          names[i]=names[max];
          names[max]=tmb;
          
          var tmb2=heights[i];
          heights[i]=heights[max];
          heights[max]=tmb2;
          
      }

      return names;
  }
}