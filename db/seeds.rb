# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

	BabysittingDay.create([
		{ day: 'Monday' },
		{ day: 'Tuesday' },
		{ day: 'Wednesday' },
		{ day: 'Thursday' },
		{ day: 'Friday' },
		{ day: 'Saturday' },
		{ day: 'Sunday' }
	])

	BabysittingTime.create([
		{ start_time: '00:00', end_time: '00:30' },
		{ start_time: '00:30', end_time: '01:00' },
		{ start_time: '01:00', end_time: '01:30' },
		{ start_time: '01:30', end_time: '02:00' },
		{ start_time: '02:00', end_time: '02:30' },
		{ start_time: '03:00', end_time: '03:30' },
		{ start_time: '03:30', end_time: '04:00' },
		{ start_time: '04:00', end_time: '04:30' },
		{ start_time: '04:30', end_time: '05:00' },
		{ start_time: '05:00', end_time: '05:30' },
		{ start_time: '05:30', end_time: '06:00' },
		{ start_time: '06:00', end_time: '06:30' },
		{ start_time: '06:30', end_time: '07:00' },
		{ start_time: '07:00', end_time: '07:30' }
	])
