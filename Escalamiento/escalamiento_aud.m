
%importación de la señal

[aud_signal , fs1] = audioread('Audio-Escalamiento.aac');

%Normalización de la señal

signal = normalize(aud_signal);

figure();
plot(signal);