-- Método vacío que resta un valor específico a todos los elementos de un vector
-- dado
-- Procedure that subtracts in a given vector a certain value

package body Pkg_subtractSpecifiedNumber with SPARK_Mode is

   procedure subtractSpecifiedNumber
     (v1 : in out ArrayDeNaturales;
      n : Natural) is
   begin
      -- Restar en todas las posiciones el valor dado por parámetro
      for i in v1'Range loop
         v1(i) := v1(i) - n;
         -- Comprobar que se ha restado
         pragma Loop_Invariant(for all j in v1'First .. i =>
                                 v1(j) = v1'Loop_Entry(j) - n);
      end loop;

   end subtractSpecifiedNumber;

end Pkg_subtractSpecifiedNumber;


