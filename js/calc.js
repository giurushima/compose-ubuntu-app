const costServ = 102;
var tipoUsuario = 0;
var zonaValor = 0;
var valorInputKWH = 0;
var texto = "El costo total es: $";
 
// INPUT RADIO RESIDENCIAL O INDUSTRIAL //
 
function escuchaBtn(){
   document.getElementById("residencial");
   document.getElementById("industrial");
 
   if (residencial.checked == true) {
     tipoUsuario = 0.21;
   }   
   if (industrial.checked == true) {
     tipoUsuario = 0.28;
   }
   console.log(tipoUsuario);
}
 
 
// SELECCIONA EL VALUE DEPENDIENDO EL DISTRITO: NORTE ,SUR , OESTE , CENTRO.
 
// function valueSelectZonaDom(){
//   document.getElementById("zonaDom").value;
//   console.log(zonaDom);
//   switch(zonaDom.value) {
//     case distNorte:
//       zonaValor = document.getElementById("distNorte").value;
//       break;
//     case distCentro:
//       zonaValor = 5.80;
//       break;
//     case distOeste:
//         zonaValor = 5.35;
//       break;
//     case distSur:
//       zonaValor = 5.40
//     break;
//    }
//    console.log(parseFloat(zonaValor));
// }
function valueSelectZonaDom(){
 zonaValor = parseFloat(document.getElementById("zonaDom").value);
 console.log(zonaValor);
}
 
// LEVANTA KWH CONSUMIDOS INGRESADOS POR USUARIO A TRAVES DEL INPUT //
 
function inputKWH(){
 valorInputKWH = parseFloat(document.getElementById("cantidadKWH").value);
 console.log(valorInputKWH);
}
 
// Total en $ = Costo de servicio + (Cantidad de kWh * Costo según zona de domicilio) * (1 + IVA según Tipo de Usuario)
 
// FUNCION QUE HACE EL CALCULO DE TODO // 
 
function calcular() {
   if(tipoUsuario == 0 || zonaValor == 0 || valorInputKWH <= 0 || valorInputKWH == "") {
     alert("Por favor, revise los datos ingresados");
   }
   else {
     var costoTotal = parseFloat(costServ + (valorInputKWH * zonaValor) * (1 + tipoUsuario)).toFixed(2); // desparseo o string . ojo
   console.log(costoTotal);
   resultadoTotal.innerHTML = texto + costoTotal;
     // alert("El precio: " + parseFloat(costoTotal));
   }
}
 
// Validaciones
// Una vez que el usuario ingresa los 3 campos requeridos y presiona el botón correspondiente
// para realizar el cálculo del costo, antes de realizar dicho cálculo se deben realizar
// validaciones desde JavaScript para que se cumplan las siguientes condiciones:
 
// ● Tipo de usuario: es requerido que se seleccione alguna de las dos opciones
// ● Zona del domicilio: es requerido que se seleccione alguna de las 4 opciones
// ● Cantidad de kWh del mes: el número que ingresa el usuario es requerido, no debe
// ser 0 ni negativo.
// Si no se cumple alguno de esos criterios, no se deberá continuar con el cálculo y se deberá
// informar al usuario dicha situación.
 
// Total en $ = Costo de servicio + (Cantidad de kWh * Costo según zona de domicilio) * (1 + IVA según Tipo de Usuario)
