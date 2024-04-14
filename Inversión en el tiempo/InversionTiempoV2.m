% Cargar las tres señales de voz
[y1,fr1] = audioread('Odio la luz al oído.aac');
[y2,fr2] = audioread('Anita_Lava_La_Tina.m4a');
[y3,fr3] = audioread('A_Mercedes_Ese_De_Crema (1).m4a');
% Presentar las opciones al usuario
fprintf('Opciones de señales de voz:\n');
fprintf('1. "Odio la luz azul al oído"\n');
fprintf('2. "Anita lava la tina"\n');
fprintf('3. "A Mercedes ese de crema"\n');

% Solicitar al usuario que elija una opción
opcion = input('Por favor ingrese el número de la opción deseada: ');

% Seleccionar la señal de voz según la opción elegida
switch opcion
    case 1
        x = y1;
        fs = fr1;
        frase = 'Odio la luz azul al oído';
    case 2
        x = y2;
        fs = fr2;
        frase = 'Anita lava la tina';
    case 3
        x = y3;
        fs = fr3;
        frase = 'A Mercedes ese de crema';
    otherwise
        error('Opción no válida.');
end

% Opcional: Permitir al usuario escuchar la señal original
opcion_escuchar_original = input('¿Desea escuchar la señal original? (Sí: 1, No: 0): ');
if opcion_escuchar_original
    sound(x, fs);
    pause(length(x) / fs + 1); % Pausa para permitir la reproducción completa antes de continuar
end

% Invertir la señal en el tiempo
x_invertida = flipud(x);

% Opcional: Permitir al usuario escuchar la señal invertida
opcion_escuchar_invertida = input('¿Desea escuchar la señal invertida? (Sí: 1, No: 0): ');
if opcion_escuchar_invertida
    sound(x_invertida, fs);
    pause(length(x_invertida) / fs + 1); % Pausa para permitir la reproducción completa antes de continuar
end
