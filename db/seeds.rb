# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

yes_or_no = 
  PollOptionsSet.create(
    :set_type => 'binary',
    :num_options => 2,
    :options => " { \"0\": \"No\", \"1\": \"Yes\" } "
  )

agree_scale = 
  PollOptionsSet.create(
    :set_type => 'multiple',
    :num_options => 5,
    :options => "  { \"0\": \"Strongly Disagree\", \"1\": \"Disagree\", \"2\": \"Neutral\", \"3\": \"Agree\", \"4\": \"Strongly Agree\"}  "
  )

AbrahamLincoln = User.create(:name => "Abraham Lincoln",
                     :email => "proclamation@gmail.com",
                     :birthdate => "1814-12-20",
                     :address => "Smallville, IL",
                     :password => "foobar",
                     :password_confirmation => "foobar")

GWash = User.create!(:name => "George Washington",
                     :email => "revolution@gmail.com",
                     :birthdate => "2012-10-31",
                     :address => "New York, NY",
                     :password => "foobar",
                     :password_confirmation => "foobar")

Ted = User.create!(:name => "Theodore Roosevelt",
                     :email => "bigstick@gmail.com",
                     :birthdate => "2012-10-31",
                     :address => "Atlanta, GA",
                     :password => "foobar",
                     :password_confirmation => "foobar")

TJeff = User.create!(:name => "Thomas Jefferson",
                     :email => "scribedude@gmail.com",
                     :birthdate => "2012-10-31",
                     :address => "Monticello, VA",
                     :password => "foobar",
                     :password_confirmation => "foobar")

AJack = User.create!(:name => "Andrew Jackson",
                     :email => "manifestdestiny@gmail.com",
                     :birthdate => "2012-10-31",
                     :address => "Midwestville, OH",
                     :password => "foobar",
                     :password_confirmation => "foobar")

JKenn = User.create!(:name => "John F. Kennedy",
                     :email => "telepresence@gmail.com",
                     :birthdate => "2012-10-31",
                     :address => "Hoboken, NJ",
                     :password => "foobar",
                     :password_confirmation => "foobar")

BFrank = User.create!(:name => "Benjamin Franklin",
                     :email => "kitesintherain@gmail.com",
                     :birthdate => "2012-10-31",
                     :address => "Newsberg, MA",
                     :password => "foobar",
                     :password_confirmation => "foobar")

Bottom = Question.create!({	:user => JKenn,
					:user_id => JKenn.id,
					:body => "I think America should choose!",
					:title => "Blondes or Brunettes?",
					})

Q1 = Question.create!({	:user => AbrahamLincoln,
					:user_id => AbrahamLincoln.id,
					:body => "Does my tophat make me look too tall?",
					:title => "A Question About Tophats?",
					})

Q2 = Question.create!({	:user => BFrank,
					:user_id => BFrank.id,
					:body => "Not to be snob, but my face is featured on the largest bill.",
					:title => "How many of you have your face on money?",
					})

Question.create!({	:user => GWash,
					:user_id => GWash.id,
					:body => "What do they look like??",
					:title => "Advice on identifying Red Coats",
					})

Q4 = Question.create!({	:user => Ted,
					:user_id => Ted.id,
					:body => "Which superpowers would you look out for?",
					:title => "Foreign Policy Help!",
					})

Q5 = Question.create!({	:user => TJeff,
					:user_id => TJeff.id,
					:body => "I personally believe that we need more public computers",
					:title => "What change would you like to see in your community?",
					})

Top = Question.create!({	:user => AJack,
					:user_id => AJack.id,
					:body => "How many of you would like to live on the Pacific?",
					:title => "Manifest Destiny",
					})

UqRelation.create!({
					:user_id => AJack.id,
					:question_id => Top.id,
					:yaynay => true

	})

UqRelation.create!({
					:user_id => GWash.id,
					:question_id => Top.id,
					:yaynay => true

	})

UqRelation.create!({
					:user_id => BFrank.id,
					:question_id => Top.id,
					:yaynay => true

	})

UqRelation.create!({
					:user_id => Ted.id,
					:question_id => Top.id,
					:yaynay => true

	})

UqRelation.create!({
					:user_id => BFrank.id,
					:question_id => Q5.id,
					:yaynay => true

	})

UqRelation.create!({
					:user_id => Ted.id,
					:question_id => Q5.id,
					:yaynay => true

	})



UqRelation.create!({
					:user_id => AJack.id,
					:question_id => Bottom.id,
					:yaynay => false

	})

UqRelation.create!({
					:user_id => GWash.id,
					:question_id => Bottom.id,
					:yaynay => false

	})

UqRelation.create!({
					:user_id => BFrank.id,
					:question_id => Bottom.id,
					:yaynay => false

	})

UqRelation.create!({
					:user_id => Ted.id,
					:question_id => Bottom.id,
					:yaynay => false

	})



