       IDENTIFICATION DIVISION.
       PROGRAM-ID. EX5.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       77 NOME         PIC X(30) VALUE SPACES.
       77 MATERIA      PIC X(15) VALUE SPACES.
       77 NOTA         PIC 9(02).
       77 SITUACAO     PIC X(20) VALUE SPACES.
       77 CONTINUA     PIC X(01) VALUE "S".
       PROCEDURE DIVISION.
           PERFORM UNTIL CONTINUA = 'N'

           INITIALIZE NOTA
      *    Define uma vari�vel com com valores padr�o, como zeros (int)
      *    ou espa�o (char)
           DISPLAY 'DIGITE SEU NOME'
           ACCEPT NOME

           DISPLAY 'DIGITE A MATERIA QUE VOCE ESTA CURSANDO'
           ACCEPT MATERIA

           DISPLAY 'DIGITE A NOTA QUE VOCE TIROU NESSA DISCIPLINA'
           ACCEPT NOTA

           IF  NOTA >=0 AND NOTA <=4
               MOVE 'REPROVADO' TO SITUACAO
           ELSE
               IF NOTA = 5 OR NOTA = 6
                   MOVE 'EM RECUPERACAO' TO SITUACAO
               ELSE
                   IF NOTA >=7 AND NOTA <=10
                       MOVE 'APROVADO' TO SITUACAO
                   ELSE
                        MOVE 'NOTA INVALIDA' TO SITUACAO
                   END-IF
               END-IF
           END-IF

           DISPLAY 'OLA ' NOME
           DISPLAY 'VOCE ESTA MATRICULADO NA MATERIA ' MATERIA
           DISPLAY 'E SUA NOTA FOI: ' NOTA
           DISPLAY 'SUA SITUACAO E: ' SITUACAO

           DISPLAY 'DESEJA CONTINUAR?(S/N)'
           ACCEPT CONTINUA

           END-PERFORM.
            STOP RUN.
       END PROGRAM EX5.
