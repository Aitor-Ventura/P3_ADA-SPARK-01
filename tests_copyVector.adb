with Ada.Text_IO;   use Ada.Text_IO;
with Pkg_copyVector;  use Pkg_copyVector;

procedure Tests_copyVector is
   procedure Test_1 is
      V : constant Vector := (1, 2, 3, 4, 5);
      cpy : Vector;
   begin
      Put ("Test_1: V(1, 2, 3, 4, 5) ........................ ");
      copyVector(V, cpy);
      pragma Assert (cpy = V);
      pragma Assert (Last_Len = v'Length);
      Put_Line("OK");
   end Test_1;

   procedure Test_2 is
      V : constant Vector := (1, 1, 1, 1, 1);
      cpy : Vector;
   begin
      Put ("Test 2: V(1, 1, 1, 1, 1) ........................ ");
      copyVector(V, cpy);
      pragma Assert (cpy = V);
      pragma Assert (Last_Len = v'Length);
      Put_Line("OK");
   end Test_2;

   procedure Test_3 is
      V : constant Vector := (0, 0, 0, 0, 0);
      cpy : Vector;
   begin
      Put ("Test 3: V(0, 0, 0, 0, 0) ........................ ");
      copyVector(V, cpy);
      pragma Assert (cpy = V);
      pragma Assert (Last_Len = v'Length);
      Put_Line("OK");
   end Test_3;

   procedure Test_4 is
      V : constant Vector := (1, 2, 3, others => 0);
      cpy : Vector;
   begin
      Put ("Test 4: V(1, 2, 3) .............................. ");
      copyVector(V, cpy);
      pragma Assert (cpy = V);
      pragma Assert (Last_Len = v'Length);
      Put_Line("OK");
   end Test_4;

   procedure Test_5 is
      V : constant Vector := (5, 7, 1, 3, 8);
      cpy : Vector;
   begin
      Put ("Test 5: V(5, 7, 1, 3, 8) ........................ ");
      copyVector(V, cpy);
      pragma Assert (cpy = V);
      pragma Assert (Last_Len = v'Length);
      Put_Line("OK");
   end Test_5;

   procedure Test_6 is
      V : constant Vector := (0, others => 0);
      cpy : Vector;
   begin
      Put ("Test 6: V(0) .................................... ");
      copyVector(V, cpy);
      pragma Assert (cpy = V);
      pragma Assert (Last_Len = v'Length);
      Put_Line("OK");
   end Test_6;

begin
   Put_Line ("********************* Tests_copyVector");
   Test_1;
   Test_2;
   Test_3;
   Test_4;
   Test_5;
   Test_6;
end Tests_copyVector;
