-- Función que guarda en un vector resultante los valores sumados de dos
-- vectores dados
-- Function that stores added values of two given vectors in a vector

package Pkg_AddVector with SPARK_Mode is
   -- Definición de vector: un array de hasta MAX valores de Integers
   MAX : constant := 5;
   type Vector is array(Positive range 1 .. MAX) of Integer;

   function addVector
     (v1 : Vector;
      v2 : Vector) return Vector

     with
       Global => null,
       Depends => (addVector'Result => (v1, v2)),
       Pre => v1'Length > 0 and then (for all i in v1'Range =>
                                        (if v1(i) > 0 and v2(i) > 0 then
                                             v1(i) <= Integer'Last - v2(i)
                                             elsif v1(i) < 0 and v2(i) < 0 then
                                             v1(i) >= Integer'First - v2(i)
                                        )),
       Post => (for all i in v1'Range => addVector'Result(i) = v1(i) + v2(i));

end Pkg_AddVector;


