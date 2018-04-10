(*
                Mutable points with vector arithmetic
                          CS51 Problem Set 7
                         -.-. ... ..... .----
 *)

class point (x0 : float) (y0 : float) =
object (this)

val mutable x1 = x0
val mutable y1 = y0

method x : float = x1
method y : float = y1

method pos : float * float = x1, y1

method round : int * int =
  let round f = int_of_float (floor (f +. 0.5)) in
  (round x1, round y1);

method move (p : point) : unit =
  x1 <- p#x;
  y1 <- p#y


method scale (k: float): point =
  new point (this#x *. k) (this#y *. k)

method plus (p : point) : point =
  let (a,b) = p#x, p#y in
  new point (this#x +. a) (this#y +. b)

method minus (p : point) : point =
  let (a,b) = p#x, p#y in
  new point (this#x -. a) (this#y -. b)

method norm : float =
  sqrt ((this#x ** 2.) +. (this#y ** 2.))

method distance (p : point) : float =
  let (a,b) = p#x, p#y in
  sqrt (((this#x -. a) ** 2.) +. ((this#y -. b) ** 2.))

method unit_vector : point =
  new point (this#x /. this#norm) (this#y /. this#norm)

end



(*======================================================================
Time estimate

Please give us an honest (if approximate) estimate of how long (in
minutes) each part of the problem set took you to complete.  We care
about your responses and will use them to help guide us in creating
future assignments.
......................................................................*)

let minutes_spent_on_part () : int = 60;;
