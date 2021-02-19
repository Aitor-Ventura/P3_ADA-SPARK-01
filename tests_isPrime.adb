with Ada.Text_IO; use Ada.Text_IO;
with Pkg_isPrime; use Pkg_isPrime;

procedure Tests_isPrime is

   procedure Test_1 is
   begin
      Put ("Test_1: Numero 1 ................................ ");
      pragma Assert(isPrime(1) = 1);
      Put_Line ("OK");
   end Test_1;

   procedure Test_2 is
   begin
      Put ("Test_2: Numero 2 ................................ ");
      pragma Assert(isPrime(2) = 1);
      Put_Line ("OK");
   end Test_2;

   procedure Test_3 is
   begin
      Put ("Test_3: Numero 3 ................................ ");
      pragma Assert(isPrime(3) = 1);
      Put_Line ("OK");
   end Test_3;

   procedure Test_4 is
   begin
      Put ("Test_4: Numero 4 ................................ ");
      pragma Assert(isPrime(4) = 0);
      Put_Line ("OK");
   end Test_4;

   procedure Test_5 is
   begin
      Put ("Test_5: Numero 5 ................................ ");
      pragma Assert(isPrime(5) = 1);
      Put_Line ("OK");
   end Test_5;

   procedure Test_6 is
   begin
      Put ("Test_6: Numero 6 ................................ ");
      pragma Assert(isPrime(6) = 0);
      Put_Line ("OK");
   end Test_6;

   procedure Test_7 is
   begin
      Put ("Test_7: Numero 7 ................................ ");
      pragma Assert(isPrime(7) = 1);
      Put_Line ("OK");
   end Test_7;

begin
   Put_Line ("********************* Tests_isPrime");
   Test_1;
   Test_2;
   Test_3;
   Test_4;
   Test_5;
   Test_6;
   Test_7;
end Tests_isPrime;
