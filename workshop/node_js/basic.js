console.log('Hello SE');
const pi = 3.1444;
var num1 = 20;
var num2 = 20.50;
var txt = "Hell SE";
var ary = Array("SE","IT","CS");
var obj = {"fname":"Phakhanan","lname":"Thongmee"};
console.log(pi+" "+num1+" "+num2+" "+txt+" "+ary+" "+obj.fname+" "+obj.lname);
ary.forEach(function(element,index){
        console.log("ary["+index+"] : "+element);
});