-- Función que guarda en un vector resultante los valores restados de dos
-- vectores dados
-- Function that stores subtracted values of two given vectors in a vector

package body Pkg_SubtractVector with SPARK_Mode is

   function subtractVector
     (v1 : Vector;
      v2 : Vector) return Vector is
      res : Vector := (others => 0);
      i : Integer := v1'First;

   begin
      -- Restamos hasta llegar al final del vector
      while i <= v1'Last loop
         res(i) := v1(i) - v2(i);
         i := i + 1;
         -- i incrementará
         pragma Loop_Variant(Increases => i);
         -- El índice siempre estará en el rango del vector
         pragma Loop_Invariant(i - 1 in v1'Range);
         -- El resultado de la resta tendrá que ser la resta de los valores
         pragma Loop_Invariant(for all k in res'First .. i-1 =>
                                 (res(k) = v1(k) - v2(k)));
      end loop;

      return res;
   end subtractVector;

end Pkg_SubtractVector;

