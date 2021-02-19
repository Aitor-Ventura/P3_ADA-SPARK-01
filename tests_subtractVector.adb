with Ada.Text_IO;  use Ada.Text_IO;
with Pkg_SubtractVector; use Pkg_SubtractVector;

procedure Tests_SubtractVector is

   procedure Test_1 is
      v1 : constant Vector := (1, 2, 3, 4, 5);
      v2 : constant Vector := (1, 2, 3, 4, 5);
      solution : constant Vector := (0, 0, 0, 0, 0);
      res : Vector;
   begin
      Put ("Test 1: Resta de positivos ...................... ");
      res := subtractVector(v1, v2);
      pragma Assert (res = solution);
      Put_Line ("OK");
   end Test_1;

   procedure Test_2 is
      v1 : constant Vector := (-1, -2, -3, -4, -5);
      v2 : constant Vector := (-1, -2, -3, -4, -5);
      solution : constant Vector := (0, 0, 0, 0, 0);
      res : Vector;
   begin
      Put ("Test 2: Resta de negativos ...................... ");
      res := subtractVector(v1, v2);
      pragma Assert (res = solution);
      Put_Line ("OK");
   end Test_2;

   procedure Test_3 is
      v1 : constant Vector := (1, 2, 3, 4, 5);
      v2 : constant Vector := (-1, -2, -3, -4, -5);
      solution : constant Vector := (2, 4, 6, 8, 10);
      res : Vector;
   begin
      Put ("Test 3: Resta de positivos y negativos .......... ");
      res := subtractVector(v1, v2);
      pragma Assert (res = solution);
      Put_Line ("OK");
   end Test_3;

   procedure Test_4 is
      v1 : constant Vector := (Integer'Last, others => 0);
      v2 : constant Vector := (1, others => 0);
      solution : constant Vector := (Integer'Last - 1, others => 0);
      res : Vector;
   begin
      Put ("Test 4: Resta con Integer'Last .................. ");
      res := subtractVector(v1, v2);
      pragma Assert (res = solution);
      Put_Line ("OK");
   end Test_4;

   procedure Test_5 is
      v1 : constant Vector := (Integer'First, others => 0);
      v2 : constant Vector := (-1, others => 0);
      solution : constant Vector := (Integer'First + 1, others => 0);
      res : Vector;
   begin
      Put ("Test 5: Resta con Integer'First ................. ");
      res := subtractVector(v1, v2);
      pragma Assert (res = solution);
      Put_Line ("OK");
   end Test_5;

   procedure Test_6 is
      v1 : constant Vector := (0, others => 0);
      v2 : constant Vector := (0, others => 0);
      solution : constant Vector := (0, others => 0);
      res : Vector;
   begin
      Put ("Test 6: Resta con 0 ............................. ");
      res := subtractVector(v1, v2);
      pragma Assert (res = solution);
      Put_Line ("OK");
   end Test_6;

begin
   Put_Line ("********************* Tests_SubtractVector");
   Test_1;
   Test_2;
   Test_3;
   Test_4;
   Test_5;
   Test_6;

end Tests_SubtractVector;
