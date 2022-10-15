;Header and description

(define (domain officeCleaner)

(:requirements :strips :typing)

; un-comment following line if constants are needed
;(:constants )

(:predicates
	(robot-location ?office)
	(box-location ?box ?office)
	(dirty ?office)
	(clean ?office)
	(empty ?office)
	(adjacent ?office1 ?office2)

)


(:action clean-office
	:parameters (?office)
	:precondition (and
		(robot-location ?office)
		(empty ?office)
		(dirty ?office)
		(not (clean ?office))
	)
	:effect (and
		(clean ?office)
		(not (dirty ?office))
	)
)

(:action push
	:parameters (?box ?office1 ?office2)
	:precondition (and
		(robot-location ?office1)
		(box-location ?box ?office1)
		(empty ?office2)
		(adjacent ?office1 ?office2)
	)
	:effect (and
		(box-location ?box ?office2)
		(robot-location ?office2)
		(empty ?office1)
		(not (empty ?office2))
	)
)

(:action move
	:parameters (?office1 ?office2)
	:precondition (and
		(robot-location ?office1)
		(adjacent ?office1 ?office2)
	)
	:effect (and
		(robot-location ?office2)
	)
)
)