      SUBROUTINE SHIRBL(NAME,NNAM)
C
C        SHIFT DATA 16 PLACES RIGHT AND ZERO FILL
C
      PARAMETER(WORDSZ=32)
      DIMENSION NAME(NNAM)
      NUMSHFT=WORDSZ-16
      DO 100 I=1,NNAM
         NAME(I)=ICEDSHFT(NAME(I),-NUMSHFT)
C         NAME(I)=RSHIFT(NAME(I),NUMSHFT)
 100  CONTINUE
      RETURN
      END
