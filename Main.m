%-----main----

main();

%----------------Llamado de directorios------

addpath('actividades_preparacion\');

%-----------------------

function main()



%--------------llamado del menú
state_holder();

end

%-------------------------DECLARACIÓN-FUNCIONES----------------------------
function state_holder()
    
    state = menu('Seleccione una opción: ','Ejecución actividades preparación' ,'Escalamiento', 'Inversión en tiempo','Respuesta impulso' );
    
        switch state 
            case 1
                actividades_previas();
                main();
            case 2
                menu_escalamiento();
                main();
            case 3
                menu_inversion();
                main();
            case 4 
                menu_impulso();
                main();
        end
end       
       

%----------------declaración de los estados-------------------

function menu_escalamiento()
    current_state = menu('Seleccione una opción', 'opción 1', 'Volver al menú principal');
    
    switch current_state
        case 1
            %ejecutar opcion 1
        case 2
            state_holder();
    end

end
%----------------------------------------------------------------

function menu_inversion()
    current_state = menu('Seleccione una opción', 'opción 1', 'Volver al menú principal');
    
    switch current_state
        case 1
            %ejecutar opcion 1
        case 2
            state_holder();
    end

end
%----------------------------------------------------------------

function menu_impulso()
    current_state = menu('Seleccione una opción', 'opción 1', 'Volver al menú principal');
    
    switch current_state
        case 1
            %ejecutar opcion 1
        case 2
           state_holder();
    end

end

%-------------------------------------------------------------