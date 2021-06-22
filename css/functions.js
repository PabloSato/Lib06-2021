//POP-UP**********************************************


//La Caja que sacamos
var popUp1 = document.getElementById("pop-up1");
//La Caja que Ocultamos
var popOff1 = document.getElementById("box_1")
//El boton que la saca
var btn1 = document.getElementById("btn_1");
//El boton que la esconde
var btn_out1 = document.getElementById("pop-out1");
var btnout1 = document.getElementById("popout1");
//Cuando pulsamos, abrimos
btn1.onclick = function(){
    popUp1.style.display = "block";
    popOff1.style.display = "none";
}
//Cuando pulsamos, cerramos
btn_out1.onclick = function (){
    popUp1.style.display = "none";
    popOff1.style.display = "block";
}
btnout1.onclick = function (){
    popUp1.style.display = "none";
    popOff1.style.display = "block";
}

//La Caja que sacamos
var popUp2 = document.getElementById("pop-up2");
//La Caja que Ocultamos
var popOff2 = document.getElementById("box_2")
//El boton que la saca
var btn2 = document.getElementById("btn_2");
//El boton que la esconde
var btn_out2 = document.getElementById("pop-out2");
var btnout2 = document.getElementById("popout2");
//Cuando pulsamos, abrimos
btn2.onclick = function(){
    popUp2.style.display = "block";
    popOff2.style.display = "none";
}
//Cuando pulsamos, cerramos
btn_out2.onclick = function (){
    popUp2.style.display = "none";
    popOff2.style.display = "block";
}
btnout2.onclick = function (){
    popUp2.style.display = "none";
    popOff2.style.display = "block";
}

//La Caja que sacamos
var popUp3 = document.getElementById("pop-up3");
//La Caja que Ocultamos
var popOff3 = document.getElementById("box_3")
//El boton que la saca
var btn3 = document.getElementById("btn_3");
//El boton que la esconde
var btn_out3 = document.getElementById("pop-out3");
var btnout3 = document.getElementById("popout3");
//Cuando pulsamos, abrimos
btn3.onclick = function(){
    popUp3.style.display = "block";
    popOff3.style.display = "none";
}
//Cuando pulsamos, cerramos
btn_out3.onclick = function (){
    popUp3.style.display = "none";
    popOff3.style.display = "block";
}
btnout3.onclick = function (){
    popUp3.style.display = "none";
    popOff3.style.display = "block";
}
//**********************************************STANTERIAS

//Vemos Pablo y ocultamos el resto
function showPablo(){
    document.getElementById('pablo').style.display="grid";
    document.getElementById('paty').style.display="none";
    document.getElementById('buhar').style.display="none";
    document.getElementById('salon').style.display="none";
}
//Vemos Paty y ocultamos el resto
function showPaty(){
    document.getElementById('paty').style.display="grid";
    document.getElementById('pablo').style.display="none";
    document.getElementById('buhar').style.display="none";
    document.getElementById('salon').style.display="none";
}
//Vemos Salon y ocultamos el resto
function showSalon(){
    document.getElementById('salon').style.display="grid";
    document.getElementById('paty').style.display="none";
    document.getElementById('buhar').style.display="none";
    document.getElementById('pablo').style.display="none";
}
//Vemos Buhardilla y ocultamos el resto
function showBuhar(){
    document.getElementById('buhar').style.display="grid";
    document.getElementById('paty').style.display="none";
    document.getElementById('pablo').style.display="none";
    document.getElementById('salon').style.display="none";
}


//**********************************************TITULOS

//Mostramos el titulo
function showTtl(id){document.getElementById(id).style.display="block";}
//Escondemos el Titulo
function hideTtl(id){document.getElementById(id).style.display="none";}