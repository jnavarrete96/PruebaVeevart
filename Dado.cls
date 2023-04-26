public class Dado {
    public Integer Dado() {
     return (Integer)Math.round(Math.random() * (6 - 1) + 1); // Numero aleatorio del dado entre 1-6
}

public void Serpiente() {
    Integer pos = 0;
    //Posiciónes de las escaleras
    Map<Integer, Integer> escaleras = new Map<Integer, Integer>{3 => 11, 6 => 17, 9 => 18, 10 => 12};
    //Posiciónes de las serpientes
    Map<Integer, Integer> serpientes = new Map<Integer, Integer>{14 => 4, 19 => 8, 22 => 20, 24 => 16};
    while (pos <= 24) {
        Integer dado1 = dado();
        System.debug('Dado arroja ' + dado1);
        pos += dado1;
        if (pos <= 24) {                                     // Se veririfica sí el dado cayó en una escalera
            System.debug('Jugador se encuentra en el cuadro ' + pos);
        } else {
            System.debug('Jugador supera el cuadro 25');
        }
        if (escaleras.containsKey(pos)) {                    // Se veririfica sí el dado cayó en una serpiente
            pos = escaleras.get(pos);
            System.debug('Jugador sube por escalera al cuadro ' + pos);
        } else if (serpientes.containsKey(pos)) {
            pos = serpientes.get(pos);
            System.debug('Jugador baja por la serpiente al cuadro ' + pos);
        }
    }
    System.debug('GANASTE!!');
}

}