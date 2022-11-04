class Solution {
    public String sortSentence(String s) {
        
         String[] arr = s.split(" ");
        String res="";
        for(int i=1;i<=arr.length;i++){
            for(int j=0;j<arr.length;j++){
                if(arr[j].contains(Integer.toString(i))){
                    arr[j] = arr[j].replace(arr[j].substring(arr[j].length()-1), "");
                    if(i==arr.length){res=res+arr[j]; break;}
                    res=res+arr[j]+" ";
                }
            }
        }
        
        return res;
    }
}