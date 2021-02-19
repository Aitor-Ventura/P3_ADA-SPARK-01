-- Función que guarda en un vector resultante los valores sumados de dos
-- vectores dados
-- Function that stores added values of two given vectors in a vector

package body Pkg_AddVector with SPARK_Mode is

   function addVector
     (v1 : Vector;
      v2 : Vector) return Vector is
      res : Vector := (others => 0);
      i : Integer := v1'First;

   begin
      -- Sumamos hasta llegar al final del vector
      while i <= v1'Last loop
         res(i) := v1(i) + v2(i);
         i := i + 1;
         -- i incrementará
         pragma Loop_Variant(Increases => i);
         -- El índice siempre estará en el rango del vector
         pragma Loop_Invariant(i - 1 in v1'Range);
         -- El resultado de la suma tendrá que ser la suma de los valores
         pragma Loop_Invariant(for all k in res'First .. i-1 =>
                                 (res(k) = v1(k) + v2(k)));
      end loop;

      return res;
   end addVector;

end Pkg_AddVector;

