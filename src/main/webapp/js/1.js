function change1(x)
{
    document.getElementById('123').src='../picture/smart frog/'+x+'.jpg'; 
}
function change2(x)
{
    document.getElementById('123').src='../picture/cube/'+x+'.jpg'; 
}
function change3(x)
{
    document.getElementById('123').src='../picture/watch/'+x+'.jpg'; 
}
function change4(x)
{
    document.getElementById('123').src='../picture/headset/'+x+'.jpg'; 
}
function change5(x)
{
    document.getElementById('123').src='../picture/pencilcase/'+x+'.jpg'; 
}
function check()
{
    if(checknum() &&checkname())
    {
        return true;
    }
    else{
        return false;
    }
}
function checknum()
{
    try{
        var x=document.getElementById("num").value;
        if(isNaN(x)) throw "必须为数字";
        if(x>18999999999) throw "数字过大";
        if(x<13800000000) throw "数字过小";
    }
    catch(err){
        document.getElementById("txt").innerHTML="提示:"+err;
        return false;
    }
    return true;
}
function checkname()
{
    try{
        var x=document.getElementById("name").value;
        if(!/^[\u4e00-\u9fa5]+$/gi.test(x))
        throw "只能输入汉字";
    }
    catch(err){
        document.getElementById("txt").innerHTML="提示:"+err;
        return false;
    }
    return true;   
}
function changestyle()
{
    var  obj=document.getElementById("bs");
    obj.setAttribute("class","bs");
}