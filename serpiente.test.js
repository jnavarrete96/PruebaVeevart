const dado=require('./juego_serpiente.js');
test('retorna a numero entre 1 and 6', () => {
    const num = dado();
    expect(num).toBeGreaterThanOrEqual(1);  // Se valida si el dado se encuentra entre los valores 1 y 6
    expect(num).toBeLessThanOrEqual(6);
  });

   
