-- Método vacío que copia un vector en otro vector
-- Procedure which clones a vector

package body Pkg_copyVector with SPARK_Mode is

   procedure copyVector
     (v1 : Vector; cpy: out Vector) is
   begin
      -- Se inicializa el vector resultante
      cpy := (others => 0);
      -- Se copian los valores
      for i in cpy'Range loop
         cpy(i) := v1(i);
         -- Se comprueba que tengan los mismos valores en la misma posición
         pragma loop_invariant(for all k in cpy'First .. i => cpy(k) = v1(k));
      end loop;
      -- Variable global
      Last_Len := cpy'Length;

   end copyVector;

end Pkg_copyVector;

