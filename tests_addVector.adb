with Ada.Text_IO; use Ada.Text_IO;
with Pkg_AddVector; use Pkg_AddVector;

procedure Tests_AddVector is

   procedure Test_1 is
      v1 : constant Vector := (1, 2, 3, 4, 5);
      v2 : constant Vector := (1, 2, 3, 4, 5);
      solution : constant Vector := (2, 4, 6, 8, 10);
      res : Vector;
   begin
      Put ("Test 1: Suma de positivos ....................... ");
      res := addVector(v1, v2);
      pragma Assert (res = solution);
      Put_Line ("OK");
   end Test_1;

   procedure Test_2 is
      v1 : constant Vector := (1, 2, 3, 4, 5);
      v2 : constant Vector := (-1, -2, -3, -4, -5);
      solution : constant Vector := (0, 0, 0, 0, 0);
      res : Vector;
   begin
      Put ("Test 2: Suma de positivos con negativos ......... ");
      res := addVector(v1, v2);
      pragma Assert (res = solution);
      Put_Line ("OK");
   end Test_2;

   procedure Test_3 is
      v1 : constant Vector := (1, 2, 3, 4, Integer'Last);
      v2 : constant Vector := (1, 2, 3, 4, -1);
      solution : constant Vector := (2, 4, 6, 8, Integer'Last - 1);
      res : Vector;
   begin
      Put ("Test 3: Suma con Integer'Last ................... ");
      res := addVector(v1, v2);
      pragma Assert (res = solution);
      Put_Line ("OK");
   end Test_3;

   procedure Test_4 is
      v1 : constant Vector := (1, 2, 3, 4, Integer'Last);
      v2 : constant Vector := (-1, -2, -3, -4, Integer'First);
      solution : constant Vector := (0, 0, 0, 0, -1);
      res : Vector;
   begin
      Put ("Test 4: Suma Integer'Last con Integer'First ..... ");
      res := addVector(v1, v2);
      pragma Assert (res = solution);
      Put_Line ("OK");
   end Test_4;

   procedure Test_5 is
      v1 : constant Vector := (-1, -2, -3, -4, -5);
      v2 : constant Vector := (-1, -2, -3, -4, -5);
      solution : constant Vector := (-2, -4, -6, -8, -10);
      res : Vector;
   begin
      Put ("Test 5: Suma de negativos ....................... ");
      res := addVector(v1, v2);
      pragma Assert (res = solution);
      Put_Line ("OK");
   end Test_5;

   procedure Test_6 is
      v1 : constant Vector := (0, others => 0);
      v2 : constant Vector := (0, others => 0);
      solution : constant Vector := (0, others => 0);
      res : Vector;
   begin
      Put ("Test 6: Suma .................................... ");
      res := addVector(v1, v2);
      pragma Assert (res = solution);
      Put_Line ("OK");
   end Test_6;

begin
   Put_Line ("********************* Tests_AddVector");
   Test_1;
   Test_2;
   Test_3;
   Test_4;
   Test_5;
   Test_6;

end Tests_AddVector;
