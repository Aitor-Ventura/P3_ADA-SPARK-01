with Ada.Text_IO; use Ada.Text_IO;
with Pkg_subtractSpecifiedNumber; use Pkg_subtractSpecifiedNumber;

procedure Tests_subtractSpecifiedNumber is

   procedure Test_1 is
      table : ArrayDeNaturales := (5, 5, 5, 5, 5);
      res : constant ArrayDeNaturales := (1, 1, 1, 1, 1);
      n : constant Natural := 4;
   begin
      Put ("Test 1: V(5,5,5,5,5); N=4 ....................... ");
      subtractSpecifiedNumber(table, n);
      pragma Assert (table = res);
      Put_Line ("OK");
   end Test_1;

   procedure Test_2 is
      table : ArrayDeNaturales := (2, 2, 2, 2, 2);
      res : constant ArrayDeNaturales := (1, 1, 1, 1, 1);
      n : constant Natural := 1;
   begin
      Put ("Test 2: V(2,2,2,2,2); N=1 ....................... ");
      subtractSpecifiedNumber(table, n);
      pragma Assert (table = res);
      Put_Line ("OK");
   end Test_2;

   procedure Test_3 is
      table : ArrayDeNaturales := (3, 1, 2, 5, 4);
      res : constant ArrayDeNaturales := (2, 0, 1, 4, 3);
      n : constant Natural := 1;
   begin
      Put ("Test 3: V(3,1,2,5,4); N=1 ....................... ");
      subtractSpecifiedNumber(table, n);
      pragma Assert (table = res);
      Put_Line ("OK");
   end Test_3;

   procedure Test_4 is
      table : ArrayDeNaturales := (1, 1, 1, 1, 1);
      res : constant ArrayDeNaturales := (1, 1, 1, 1, 1);
      n : constant Natural := 0;
   begin
      Put ("Test 4: V(1,1,1,1,1); N=0 ....................... ");
      subtractSpecifiedNumber(table, n);
      pragma Assert (table = res);
      Put_Line ("OK");
   end Test_4;

   procedure Test_5 is
      table : ArrayDeNaturales := (4, 1, 2, 6, 2);
      res : constant ArrayDeNaturales := (3, 0, 1, 5, 1);
      n : constant Natural := 1;
   begin
      Put ("Test 5: V(4,1,2,6,2); N=1 ....................... ");
      subtractSpecifiedNumber(table, n);
      pragma Assert (table = res);
      Put_Line ("OK");
   end Test_5;

   procedure Test_6 is
      table : ArrayDeNaturales := (9, 9, 9, 9, 9);
      res : constant ArrayDeNaturales := (1, 1, 1, 1, 1);
      n : constant Natural := 8;
   begin
      Put ("Test 6: V(9,9,9,9,9); N=8 ....................... ");
      subtractSpecifiedNumber(table, n);
      pragma Assert (table = res);
      Put_Line ("OK");
   end Test_6;

begin
   Put_Line ("********************* Tests_subtractSpecifiedNumber");
   Test_1;
   Test_2;
   Test_3;
   Test_4;
   Test_5;
   Test_6;

end Tests_subtractSpecifiedNumber;
