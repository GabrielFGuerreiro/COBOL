       IDENTIFICATION DIVISION.
       PROGRAM-ID. EX7.
       DATA DIVISION.

       WORKING-STORAGE SECTION.
       01 DISCIPLINAS.
           02 NOTAS-DISCIPLINA OCCURS 6 TIMES.
               03 NOME     PIC X(30).
               03 P1        PIC 9(02)V99.
               03 P2        PIC 9(02)V99.
               03 ATIVIDADE PIC 9(02)V99.
       01 CONTADOR PIC 9(2) VALUE 1.

       PROCEDURE DIVISION.

           PERFORM UNTIL CONTADOR > 6
               DISPLAY "ENTRE COM O NOME E NOTAS DA DISCIPLINA" CONTADOR
               DISPLAY "NOME: "
               ACCEPT NOME(CONTADOR)
               DISPLAY "P1: "
               ACCEPT P1(CONTADOR)
               DISPLAY "P2: "
               ACCEPT P2(CONTADOR)
               DISPLAY "ATIVIDADE: "
               ACCEPT ATIVIDADE(CONTADOR)
               DISPLAY " "

               ADD 1 TO CONTADOR
           END-PERFORM.

           MOVE 1 TO CONTADOR.
           PERFORM UNTIL CONTADOR > 6
               DISPLAY "NOTA DISCIPLINA " NOME(CONTADOR)
               DISPLAY "P1: " P1(CONTADOR)
               DISPLAY "P2: " P2(CONTADOR)
               DISPLAY "ATIVIDADE: " ATIVIDADE(CONTADOR)
               DISPLAY " "

               ADD 1 TO CONTADOR
           END-PERFORM.

           DISPLAY "Fim do programa."
           STOP RUN.

       END PROGRAM EX7.
