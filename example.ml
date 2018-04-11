(*
                         Custom example graph
                          CS51 Problem Set 7
                         -.-. ... ..... .----
 *)

open List ;;

open Points ;;
open Masses ;;
open Controls ;;
open Graphobj ;;
open Graphdraw ;;
open Testgraphs;;

let example () =
  graph { labels = ["Wake Up";
                    "Eat Breakfast"];
          positions = [ (250,400);(200,300)]
             ;
          edges = [
            (0 , 1)] } ;;

let _ = example () ;;
