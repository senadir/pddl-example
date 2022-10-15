(define (problem cleanThirdFloor) (:domain officeCleaner)
(:objects
	office1 office2 office3
	office4 office5 office6
	office7 office8 office9
)

(:init
	 	(robot-location office9)

		(empty office1) (empty office2) (empty office3)
		(empty office4) (empty office5) (empty office6)
		(empty office7) (empty office8) (empty office9)

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
		(robot-location office9)

		(clean office1) (clean office2) (clean office3)
		(clean office4) (clean office5) (clean office6)
		(clean office7) (clean office8) (clean office9)
))

;un-comment the following line if metric is needed
;(:metric minimize (???))
)
