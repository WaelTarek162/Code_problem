class Solution {
  void rotate(List<List<int>> matrix) {
      int n=matrix.length;
      for(int i =0;i<n;i++){
          for(int j=i+1;j<n;j++){
              
              var tmb=matrix[i][j];
              matrix[i][j]=matrix[j][i];
              matrix[j][i]=tmb;
              
              
          }
      }
      for(int i=0;i<n;i++){
          matrix[i]=matrix[i].reversed.toList();
          
      }

  }
}