-- Función que devuelve 1 si el valor pasado por parámetro es primo, 0 si no
-- Function that returns 1 if the value given is prime, 0 if it isn't

package body Pkg_isPrime with SPARK_Mode is

   function isPrime
     (num : Natural) return Natural is

   begin
      -- 1 2 y 3 son primos
      if (num <= 3) then
         return 1;
      end if;
      -- Si es divisible por algún número de manera que su resto sea 0,
      -- no es primo
      for i in 2 .. num - 1 loop
         if (num rem i) = 0 then
            return 0;
         end if;
         -- Si llegamos a este punto, el número es primo, luego se comprueba
         -- que su resto sea diferente de 0
         pragma Loop_Invariant((num rem i) /= 0);
         pragma Loop_invariant((for all j in 2 .. i => (num rem j) /= 0));

      end loop;
      return 1;

   end isPrime;
end Pkg_isPrime;

