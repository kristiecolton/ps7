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
                    "Eat Breakfast";
                    "Skip Breakfast";
                    "Attend CS51";
                    "Watch lecture online";
                    "Be Hangry All Day";
                    "Nap"; "Nap"; "Nap"
                    ];
          positions = [ (250,480);
                        (200,450); (300,450);
                        (180,420); (210, 420); (300, 420);
                        (180, 390); (210, 390); (300, 390)
                        ]
             ;
          edges = [
            (0 , 1); (0 , 2);
            (1,3); (1,4); (2,5);
            (3,6); (4,7); (5,8)
            ] } ;;

let _ = example () ;;
