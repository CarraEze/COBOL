       IDENTIFICATION DIVISION.
       PROGRAM-ID. PRUEBA.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 NUM1 PIC 99.
       01 NUM2 PIC 99.
       01 RESUL PIC 9(4) VALUE 1.
       01 OPCION PIC 9 VALUE 0.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
       DISPLAY "ESTA CALCULADORA SOLO ACEPTA OPERANDOS DE DOS DIGITOS".
      *CICLO A REPETIR
           CALCULAR.
            DISPLAY "INGRESE LA OPERACION A REALIZAR"
            DISPLAY "0 PARA SALIR"
            DISPLAY "1 PARA SUMAR"
            DISPLAY "2 PARA RESTAR"
            DISPLAY "3 PARA MULTIPLICAR"
            DISPLAY "4 PARA DIVIDIR"
            DISPLAY "5 PARA POTENCIAR"
            ACCEPT OPCION
            IF OPCION = 0 THEN
                GO TO TERMINAR
            END-IF
            DISPLAY "INGRESE DOS OPERANDOS"
            ACCEPT NUM1
            ACCEPT NUM2
      *SUMA
            IF OPCION = 1 THEN
                ADD NUM1 TO NUM2 GIVING RESUL
                DISPLAY "LA SUMA ES: "RESUL
            END-IF
      *RESTA
            IF OPCION = 2 THEN
                SUBTRACT NUM2 FROM NUM1 GIVING RESUL
                DISPLAY "LA RESTA ES: "RESUL
            END-IF
      *MULTIPLICACION
            IF OPCION = 3 THEN
                MULTIPLY NUM2 BY NUM1 GIVING RESUL
                DISPLAY "LA MULTIPLICACION ES: "RESUL
            END-IF
      *DIVISION
            IF OPCION = 4 THEN
                DIVIDE NUM1 BY NUM2 GIVING RESUL
                DISPLAY "LA DIVISION ES: "RESUL
            END-IF
      *POENCIA
            IF OPCION = 5 THEN
                MOVE 1 TO RESUL
                PERFORM POTENCIA
            END-IF

            GO TO CALCULAR.

           POTENCIA.
            IF NUM2 > 0 THEN
               MULTIPLY NUM1 BY RESUL GIVING RESUL
               SUBTRACT 1 FROM NUM2
               GO TO POTENCIA
            ELSE
               DISPLAY "LA POTENCIA ES: "RESUL
            END-IF.
           TERMINAR.
            DISPLAY "HA SALIDO DEL PROGRAMA"
            STOP RUN.
       END PROGRAM PRUEBA.
