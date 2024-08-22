
function decimalToBinary(N:number) {
    return (N >>> 0).toString(2);
}
function getComplement(n:number):number{
    const binary=decimalToBinary(n);
    var res='';
    for(let i=0;i<binary.length;i++){
        binary[i]==='0'?res+='1':res+='0';
    }
    return parseInt(res, 2);
}
function findComplement(num: number): number {
    return getComplement(num);
};
