Program Publik;
Uses Graph,Crt,Dos;
Var A, B :Integer;
    X, Y :Longint;
    Z, I :Byte;
    Text :String;
    T, R :String;
    D, F :String;
    H, M :Word;
    S, C :Word;
Const
    Wait =5000;

 {Inicia el Modo Gr fico}
 Procedure S01;
 Begin
 A:=Detect;
 InitGraph(A,B,'C:\Tp\Bgi');
 If GraphResult <> grOK Then Halt(1);
 Cleardevice;
 Setbkcolor(lightblue);
 Setcolor(green);
 Settextstyle(5,1,10);
 X:=650; Y:=1; Z:=1; I:=4;
 End;

 {Cierra el Modo Gr fico}
 Procedure S02;
 Begin
 Closegraph;
 End;

 {Busca El Tiempo Del Sistema}
 Procedure Time;
 Begin
 Gettime(H,M,S,C);
 End;

 {Inicio Del Programa}
 Begin
 S01;
 Time;
 str(H,T);  str(M,R); str(S,D); str(C,F);
 Text:=Concat('La Hora Es: ',T,' : ',R,' : ',D,' : ',F);

 Repeat
 Cleardevice;
 Setbkcolor(Z);
 Setcolor(red);
 Settextstyle(I,0,5);
 Outtextxy(X,Y,Text);
 Delay(Wait);
 X:=X-10;

 If (X <= 1) then I:=I+1;
 If (X <= 1) then Z:=Z+1;
 If (X <= 1) then Y:=Y+50;
 If (X <= 1) then X:=650;
 If (Y >= 450) then Y:=1;
 If (I >= 8) then I:=4;
 If (Z = 4) then Z:=5;
 If (Z >= 13) then Z:=1;

 Until KeyPressed;
 S02;
 End.

