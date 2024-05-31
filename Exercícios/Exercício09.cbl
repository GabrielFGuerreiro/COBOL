       IDENTIFICATION DIVISION.
       PROGRAM-ID. EX9.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
           01 NUM PIC 9(2).
           01 Matriz.
               02 PARES PIC 9(2) OCCURS 5 TIMES.
               02 IMPARES PIC 9(2) OCCURS 5 TIMES.
           01 CONTADOR PIC 9(2) VALUE 1.
           01 DIVIDENDO PIC 9(2) VALUE 2.
           01 RES PIC 9(3).
           01 RESTO PIC 9(3).
           01 CONTP PIC 9(2) VALUE 1.
           01 CONTI PIC 9(2) VALUE 1.

       PROCEDURE DIVISION.
           DISPLAY 'INSIRA O NUMERO'
           ACCEPT NUM

           PERFORM UNTIL CONTADOR > 10
               ADD 1 TO NUM
               DIVIDE NUM BY 2 GIVING RES REMAINDER RESTO
               IF RESTO > 0

                   COMPUTE IMPARES(CONTI) = NUM
                   ADD 1 TO CONTI
               ELSE

                   COMPUTE PARES(CONTP) = NUM
                   ADD 1 TO CONTP
               END-IF
               ADD 1 TO CONTADOR
           END-PERFORM.

           MOVE 1 TO CONTP.
           MOVE 5 TO CONTI.

      *    LISTA PARES EM ORDEM CRESCENTE
           PERFORM UNTIL CONTP > 5
              DISPLAY "PARES: " PARES(CONTP)
               ADD 1 TO CONTP
           END-PERFORM.

      *    LISTA IMPARES EM ORDEM DECRESCENTE
           PERFORM UNTIL CONTI < 1
              DISPLAY "IMPARES: " IMPARES(CONTI)
               SUBTRACT 1 FROM CONTI
           END-PERFORM.

           STOP RUN.
       END PROGRAM EX9.
