function dado (){
    return Math.floor(Math.random()*(7 - 1) + 1)
}
function serpiente(){
    let pos=0; // Posición Inicial
    let escaleras={3:11,6:17,9:18,10:12};  // Posiciónes de las escaleras
    let serpientes={14:4,19:8,22:20,24:16}; // Posiciónes de las serpientes
    while(pos<=24){
        let dado1=dado();
        console.log("Dado arroja " + dado1)
        pos=pos+dado1;
        pos<=24 ? console.log("Jugador se encuentra en el cuadro " + pos) : console.log("Jugador supera el cuadro 25");
        if (pos in escaleras){    // Se veririfica sí el dado cayó en una escalera
            pos=escaleras[pos];
            console.log("Jugador sube por escalera al cuadro " + pos)
        }
        else if (pos in serpientes){ // Se veririfica sí el dado cayó en una serpiente
            pos=serpientes[pos];
            console.log("Jugador baja por la serpiente al cuadro " + pos)
        }
    }
    console.log("GANASTE!!")
}
serpiente();
module.exports = dado;  //Se exporta la variable dado para test