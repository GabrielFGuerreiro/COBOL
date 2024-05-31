       IDENTIFICATION DIVISION.
       PROGRAM-ID. EX6.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 DISCIPLINAS.
           02 NOME-DISCIPLINA PIC X(30) OCCURS 6 TIMES.
       01 CONT                PIC 9(01) VALUE 1.
       PROCEDURE DIVISION.

           PERFORM UNTIL CONT > 6
               DISPLAY "Digite o nome da disciplina " CONT
               ACCEPT NOME-DISCIPLINA(CONT)
               ADD 1 TO CONT
           END-PERFORM

           MOVE 1 TO CONT

           PERFORM UNTIL CONT > 6
               DISPLAY "DISCIPLINA " CONT ":"
               DISPLAY NOME-DISCIPLINA(CONT)
               ADD 1 TO CONT
           END-PERFORM

            STOP RUN.
       END PROGRAM EX6.
