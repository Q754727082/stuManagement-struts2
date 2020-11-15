var code; 
function createCode(){ 
 code = "";
 var codeLength =4;
 var selectChar = new Array(0,1,2,3,4,5,6,7,8,9,'a','b','c','d','e','f','g','h','i','j','k',
  'l','m','n','o','p','q','r','s','t','u','v','w','x','y','z');
 for(var i=0;i<codeLength;i++)
 {
 var charIndex =Math.floor(Math.random()*36);
 code +=selectChar[charIndex];
 }
 document.getElementById("discode").style.fontFamily="Fixedsys"; 
 document.getElementById("discode").style.letterSpacing="10px"; 
 document.getElementById("discode").style.color="red";
 document.getElementById("discode").style.backgroundColor="#adfedc";
 document.getElementById("discode").innerHTML=code; 
}
function but()
{
 var val1=document.getElementById("t1").value;
 var val2=code;
 if(val1!=val2){
	 
 alert("Verification code error!");
 document.getElementById('t1').value="";
 return false;
  }
 return true;
 }
