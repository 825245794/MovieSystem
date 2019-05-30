/**
 * 
 */

function AjaxLoginConnection(url,username,password){
    var loader=new net.AjaxRequest(url+"?nocache="+new Date().getTime()+"&username="+username+"&password="+password, getStatus, onError,  "POST");
}
function getStatus(){ 
    var info=this.req.responseText;
    if(info!="success"){
        document.getElementById('errorMessages').innerHTML=info; 
    }
    else{
    	document.getElementById('loginform').submit();
    }
} 

function AjaxLoginConnectionRegister(username,email,password,compassword){
    var loader=new net.AjaxRequest("register!registerAccount"+"?nocache="+new Date().getTime()+"&email="+email+"&password="+password+"&compassword="+compassword+"&username="+username, getRegister, onError,  "POST");
}
function getRegister(){ 
    var info=this.req.responseText;
    if(info!="success"){
        document.getElementById('errorMessagesR').innerHTML=info; 
    }
    else{
    	document.getElementById('registerform').submit();
    }
} 

function AjaxPlaceRoom(filmid,placeroomid){
	var date=$("#date").val();
    var loader=new net.AjaxRequest("film!watchTime?nocache="+new Date().getTime()+"&filmid="+filmid+"&placeroomid="+placeroomid+"&date="+date, getWatchTime, onError,  "POST");
}

function getWatchTime(){
	var obj = document.getElementById('placeroom'); 
	var index = obj.selectedIndex; 
	var text = obj.options[index].text;
	$("#placename").val(text);
    var info=this.req.responseText;
    var time=info.substring(0, info.indexOf("|"));
    var placeid=info.substring(info.indexOf("|")+1);
    var obj=document.getElementById('WatchTime');
    var arrtime = time.split(";");
    var arrid = placeid.split(";");
    for(var i=obj.options.length;i>0;i--){
        obj.options.remove(i);  
      }

    for(var i=0;i<arrtime.length-1;i++){
        obj.options.add(new Option(arrtime[i],arrid[i])); 
      }
}

function AjaxPlaceDate(filmid,date){
    var loader=new net.AjaxRequest("film!room?nocache="+new Date().getTime()+"&filmid="+filmid+"&date="+date, getRoom, onError,  "POST");
}

function getRoom(){
    var info=this.req.responseText;
    var obj=document.getElementById('placeroom');
    var infoid=info.substring(0, info.lastIndexOf("|"));
    var arr = infoid.split(";");
    info=info.substring(info.lastIndexOf("|")+1);
    var arrs=info.split(";");
    for(var i=obj.options.length;i>0;i--){
        obj.options.remove(i);  
      }

    for(var i=0;i<arr.length-1;i++){
        obj.options.add(new Option(arrs[i],arr[i])); 
      }
    var obj=document.getElementById('WatchTime');
    for(var i=obj.options.length;i>0;i--){
        obj.options.remove(i);  
      }
}

function AjaxGetSeat(placeid){
	var loader=new net.AjaxRequest("film!seat?nocache="+new Date().getTime()+"&placeid="+placeid, getSeat, onError,  "POST");
}

function getSeat(){
	var info=this.req.responseText;
	var arr=info.split(";");
	for(var i=1;i<=18;i++){
		$("#A"+i).removeClass();
		$("#A"+i).addClass("row__seat tooltip");
		$("#B"+i).removeClass();
		$("#B"+i).addClass("row__seat tooltip");
		$("#C"+i).removeClass();
		$("#C"+i).addClass("row__seat tooltip");
		$("#D"+i).removeClass();
		$("#D"+i).addClass("row__seat tooltip");
		$("#E"+i).removeClass();
		$("#E"+i).addClass("row__seat tooltip");
		$("#F"+i).removeClass();
		$("#F"+i).addClass("row__seat tooltip");
		$("#G"+i).removeClass();
		$("#G"+i).addClass("row__seat tooltip");
		$("#H"+i).removeClass();
		$("#H"+i).addClass("row__seat tooltip");
		$("#I"+i).removeClass();
		$("#I"+i).addClass("row__seat tooltip");
		$("#J"+i).removeClass();
		$("#J"+i).addClass("row__seat tooltip");
		$("#K"+i).removeClass();
		$("#K"+i).addClass("row__seat tooltip");
		$("#L"+i).removeClass();
		$("#L"+i).addClass("row__seat tooltip");
		$("#M"+i).removeClass();
		$("#M"+i).addClass("row__seat tooltip");
		$("#N"+i).removeClass();
		$("#N"+i).addClass("row__seat tooltip");
		$("#O"+i).removeClass();
		$("#O"+i).addClass("row__seat tooltip");
		$("#P"+i).removeClass();
		$("#P"+i).addClass("row__seat tooltip");
		$("#Q"+i).removeClass();
		$("#Q"+i).addClass("row__seat tooltip");
		$("#R"+i).removeClass();
		$("#R"+i).addClass("row__seat tooltip");
	}
    for(var i=0;i<arr.length-1;i++){
    	 $("#"+arr[i]).removeClass();
    	 $("#"+arr[i]).addClass("row__seat row__seat--reserved");
    	 $("#select_"+arr[i]).removeAttr("checked");
      }
    var obj=document.getElementsByName('ticket');
    for(var i=0; i<obj.length; i++){ 
    if(obj[i].checked){
    	$("#"+obj[i].value).removeClass();
      	$("#"+obj[i].value).addClass("row__seat tooltip row__seat--selected");
    }
    }
}


function onError(){
    alert("网络连接失败");
} 