       IDENTIFICATION DIVISION.
       PROGRAM-ID. EX10.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 NUM                PIC 9(10).
       01 PRIMOS.
           02 PRIMO          PIC 9(10) OCCURS 5.
       01 RESULT             PIC 9(10).
       01 RESTO              PIC 9(10).
       01 VERIFICA           PIC 9(01).
       01 CONT               PIC 9(01).
       01 I                  PIC 9(10).
       01 DNV                PIC X(01).
      * N�O DEIXAR O I COM POUCO N� DE CARAC. DA RUIM COM NUMS ALTOS!
       PROCEDURE DIVISION.

      * FOR "GERAL" PRA PODER RECOME�AR
       PERFORM UNTIL DNV = "N" OR DNV = "n"

       DISPLAY "Digite um numero:"
       ACCEPT NUM
       DISPLAY "Proximos 5 numeros primos de forma crescente:"

       MOVE 1 TO CONT
       PERFORM UNTIL CONT > 5

           ADD 1 TO NUM
           MOVE 1 TO VERIFICA

      *SE O NUM � DIVISIVEL POR ALGUM NUMERO INFERIOR (MENOS 1), ENT N
      *� PRIMO
         PERFORM VARYING I FROM 2 BY 1 UNTIL I * I > NUM
           DIVIDE NUM BY I GIVING RESULT REMAINDER RESTO
           IF RESTO = 0
             MOVE 0 TO VERIFICA
             EXIT PERFORM
           END-IF
         END-PERFORM

      * SO ENTRA AQ SE FOR PRIMO, AI O CONT (PROX VALOR DA MATRIZ)
      * AUMENTA
         IF VERIFICA EQUAL TO 1
           MOVE NUM TO PRIMO(CONT)
           DISPLAY PRIMO(CONT)
           ADD 1 TO CONT
         END-IF
       END-PERFORM

      *FOR PRA PRINTAR DECRESCENTE
       DISPLAY "Proximos 5 numeros primos de forma decrescente:"
       PERFORM VARYING CONT FROM 5 BY -1 UNTIL CONT < 1
         DISPLAY PRIMO(CONT)
       END-PERFORM

      *ENTRADA PRA REINICIAR O PROGRAMA
       DISPLAY "Deseja inserir outro n�mero? (S/N): "
       ACCEPT DNV
       DISPLAY " "
       END-PERFORM

            STOP RUN.
       END PROGRAM EX10.
