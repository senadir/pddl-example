(define (problem cleanForthFloor) (:domain officeCleaner)
(:objects
	box1 box2 box3
	box4 box5 box6
	box7 box8
	office1 office2 office3
	office4 office5 office6
	office7 office8 office9
)

(:init
	 	(box-location box1 office1) (box-location box2 office2) (box-location box3 office3)
	 	(box-location box4 office4) (box-location box5 office5) (box-location box6 office6)
	 	(box-location box7 office7) (box-location box8 office8) (robot-location office9)

		(not (empty office1)) (not (empty office2)) (not (empty office3))
		(not (empty office4)) (not (empty office5)) (not (empty office6))
		(not (empty office7)) (not (empty office8)) (empty office9)

		(dirty office1) (dirty office2) (dirty office3)
		(dirty office4) (dirty office5) (dirty office6)
		(dirty office7) (dirty office8) (dirty office9)

		(adjacent office1 office2)
		(adjacent office1 office4)

		(adjacent office2 office1)
		(adjacent office2 office3)
		(adjacent office2 office5)

		(adjacent office3 office2)
		(adjacent office3 office6)

		(adjacent office4 office1)
		(adjacent office4 office5)
		(adjacent office4 office7)

		(adjacent office5 office2)
		(adjacent office5 office4)
		(adjacent office5 office6)
		(adjacent office5 office8)

		(adjacent office6 office3)
		(adjacent office6 office5)
		(adjacent office6 office9)

		(adjacent office7 office4)
		(adjacent office7 office8)

		(adjacent office8 office5)
		(adjacent office8 office7)
		(adjacent office8 office9)

		(adjacent office9 office6)
		(adjacent office9 office8)
)

(:goal (and
		(box-location box1 office1) (box-location box2 office2) (box-location box3 office3)
	 	(box-location box4 office4) (box-location box5 office5) (box-location box6 office6)
	 	(box-location box7 office7) (box-location box8 office8) (robot-location office9)

		(clean office1) (clean office2) (clean office3)
		(clean office4) (clean office5) (clean office6)
		(clean office7) (clean office8) (clean office9)
))
)
