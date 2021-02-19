-- Método vacío que resta un valor específico a todos los elementos de un
-- vector dado
-- Procedure that subtracts in a given vector a certain value

package Pkg_subtractSpecifiedNumber with SPARK_Mode is
   -- Definición de ArrayDeNaturales: un array de hasta MAX valores de
   -- Naturales
   MAX : constant := 5;
   type ArrayDeNaturales is array (Positive range 1 .. MAX) of Natural;

   procedure subtractSpecifiedNumber
     (v1 : in out ArrayDeNaturales;
      n : Natural)

     with
       Global => null,
       Depends => (v1 => (v1, n)),
       Pre => v1'Length >= 1 and (for all x in v1'Range => v1(x) - n >= 0),
       Post => (for all x in v1'Range => v1(x) = v1'Old(x) - n);

end Pkg_subtractSpecifiedNumber;


