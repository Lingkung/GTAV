$(function(){
	window.onload = (e) => {
        /* 'links' the js with the Nui message from main.lua */
		window.addEventListener('message', (event) => {
            //document.querySelector("#logo").innerHTML = " "
			var item = event.data;
			if (item !== undefined && item.type === "ui") {
                /* if the display is true, it will show */
				if (item.display === true) {
                    
                    $("#container").show();
                      
                     /* if the display is false, it will hide */
				} 
                else if(item.canspin === true)
                {
                    if(item.choose == "player"){
                        gamePlay.setbetOutcomePlayer();
                    }else if (item.choose == "tie"){
                        gamePlay.setbetOutcomeTie();
                    }else{
                        gamePlay.setbetOutcomeBanker();
                    }
                }
                else
                {
                    $("#container").hide();
                }
			}
		});
	};
});

$(document).keyup(function(e) {
     if (e.key === "Escape") { // escape key maps to keycode `27`
        post("close", {});
    }
});

function checkbeforeplay (chooses){
    alert("dawdwadwadawdwawa");
    $.post('http://nui/playerpays', JSON.stringify({
        betsize: bet,
        choose:chooses
        })
    );
}
function close (){

}