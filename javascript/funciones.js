
//ENSEÑAMOS TÍTULO/NOMBRE
function showTtl(id){document.getElementById(id).style.display="block";}
//OCULTAMOS TÍTULO/NOMBRE
function hideTtl(id){document.getElementById(id).style.display="none";}

//FUNCION ELIMINAR ACENTOS y DEMÁS
function eliminarDiacriticosEs(texto) {
            return texto
           .normalize('NFD')
           .replace(/([^n\u0300-\u036f]|n(?!\u0303(?![\u0300-\u036f])))[\u0300-\u036f]+/gi,"$1")
           .normalize();
   }

//FUNCION BUSCAR
function myFunction(){
            var input, filter, ul, li, a, i, txtValue;
            input = document.getElementById("myInput");
            filter = eliminarDiacriticosEs(input.value.toUpperCase());
            ul = document.getElementById("myUL");
            li = ul.getElementsByTagName("li");
            for(i = 0; i< li.length; i++){
                a = li[i].getElementsByTagName("a")[0];
                txtValue = eliminarDiacriticosEs(a.textContent || a.innerText);
                if(txtValue.toUpperCase().indexOf(filter) > -1){
                    li[i].style.display = "";
                }else{
                    li[i].style.display = "none";
                }
            }
        }


