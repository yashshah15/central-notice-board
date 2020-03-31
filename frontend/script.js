loadDateTime("dateSpan","timeSpan","Separate");
getNoticeBoard("comps-te-a")

function loadDateTime(x,y,mode){
    var today = new Date();
    var date = today.getFullYear()+'-'+(today.getMonth()+1)+'-'+today.getDate();
    var time = today.getHours() + ":" + today.getMinutes() + ":" + today.getSeconds();
    var dateTime = date+' '+time;

    if(mode=="Separate"){
        document.getElementById(x).innerHTML = date;
        document.getElementById(y).innerHTML = time;
    }else{
        document.getElementById(x).innerHTML = dateTime;
    }
}

function getNoticeBoard(className){
    console.log("Function to fetch notice board called.");
}