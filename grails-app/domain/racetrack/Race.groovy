package racetrack

class Race {

    String name
	Date startDateTime
	String city
	String state
	Float distance
	Float cost
	Integer maxRunners = 10000
	static hasMany = [registrations:Registration]
}
