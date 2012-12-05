# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

YesOrNo = PollOptionsSet.create(
    :set_type => 'binary',
    :num_options => 2,
    :options => " { \"0\": \"No\", \"1\": \"Yes\" } "
  )

AgreeScale = 
  PollOptionsSet.create(
    :set_type => 'multiple',
    :num_options => 5,
    :options => "  { \"0\": \"Strongly Disagree\", \"1\": \"Disagree\", \"2\": \"Neutral\", \"3\": \"Agree\", \"4\": \"Strongly Agree\"}  "
  )

President = Official.create!(
                      :name => "George W Bush",
                      :email => "gbush@whitehouse.gov",
                      :district_id => 3,
                      :position => "President of the United States")

Rep = Official.create!(
                      :name => "State Rep",
                      :email => "state@rep.gov",
                      :district_id => 2,
                      :position => "State Rep of 53rd District")
Official.create!(
                      :name => "State Rep2",
                      :email => "state@rep2.gov",
                      :district_id => 2,
                      :position => "State Rep of 53rd District")
Official.create!(
                      :name => "State Rep3",
                      :email => "state@rep3.gov",
                      :district_id => 2,
                      :position => "State Rep of 53rd District")

Mayor = Official.create!(
                      :name => "John Hiefjte",
                      :email => "hiefjte@a2.gov",
                      :district_id => 1,
                      :position => "Mayor of the Ann Arbor")
Official.create!(
                      :name => "John Hiefjte2",
                      :email => "hiefjte@a22.gov",
                      :district_id => 1,
                      :position => "Mayor of the Ann Arbor")
Official.create!(
                      :name => "John Hiefjte3",
                      :email => "hiefjte@a23.gov",
                      :district_id => 1,
                      :position => "Mayor of the Ann Arbor")
Official.create!(
                      :name => "John Hiefjte4",
                      :email => "hiefjte@a24.gov",
                      :district_id => 1,
                      :position => "Mayor of the Ann Arbor")

Senator = Official.create!(
                      :name => "Carl Levin",
                      :email => "clevin@congress.gov",
                      :district_id => 3,
                      :position => "Senator for the State of Michigan")

Senator2 = Official.create!(
                      :name => "Debbie Stabenow",
                      :email => "dstabenow@congress.gov",
                      :district_id => 3,
                      :position => "Senator for the State of Michigan")

Rep53 = Official.create!(
                      :name => "Jeff Irwin",
                      :email => "state53@rep.gov",
                      :district_id => 2,
                      :position => "State Rep of 53rd District")

Rep18 = Official.create!(
                      :name => "Rebekah Warren",
                      :email => "state18@rep.gov",
                      :district_id => 2,
                      :position => "State Rep of 18th District")

Governor = Official.create!(
                      :name => "Rick Snyder",
                      :email => "rsnyd@mich.gov",
                      :district_id => 2,
                      :position => "Governor of Michigan")

John = User.create!(
          :name => "John Hiefjte",
          :email => "jhiefjte@gmail.com",
          :birthdate => "2012-10-31",
          :official_id => Mayor.id,
          :address => "Atlanta, GA",
          :password => "foobar",
          :password_confirmation => "foobar")

Debbie = User.create!(
          :name => "Debbie Stabenow",
          :email => "dstab@gmail.com",
          :birthdate => "2012-10-31",
          :official_id => Senator2.id,
          :address => "Atlanta, GA",
          :password => "foobar",
          :password_confirmation => "foobar")

Rick = User.create!(
          :name => "Rick Snyder",
          :email => "rsnyder@gmail.com",
          :birthdate => "2012-10-31",
          :official_id => Governor.id,
          :address => "Atlanta, GA",
          :password => "foobar",
          :password_confirmation => "foobar")

U1 = User.create!(
          :name => "Theodore Roosevelt",
          :email => "bigstik@gmail.com",
          :birthdate => "2012-10-31",
          :address => "Atlanta, GA",
          :password => "foobar",
          :password_confirmation => "foobar")

U2 = User.create!(
            :name => "Thomas Jefferson",
            :email => "scribedde@gmail.com",
            :birthdate => "2012-10-31",
            :address => "Monticello, VA",
            :password => "foobar",
            :password_confirmation => "foobar")

U3 = User.create!(
            :name => "Andrew Jackson",
            :email => "manifestestiny@gmail.com",
            :birthdate => "2012-10-31",
            :address => "Midwestville, OH",
            :password => "foobar",
            :password_confirmation => "foobar")

U4 = User.create!(
            :name => "John F. Kennedy",
            :email => "telepresece@gmail.com",
            :birthdate => "2012-10-31",
            :address => "Hoboken, NJ",
            :password => "foobar",
            :password_confirmation => "foobar")

U5 = User.create!(
              :name => "Benjamin Franklin",
              :email => "kitesinterain@gmail.com",
              :birthdate => "2012-10-31",
              :address => "Newsberg, MA",
              :password => "foobar",
              :password_confirmation => "foobar")

U6 = User.create!(
              :name => "Test User",
              :email => "test@usr.com",
              :birthdate => "2012-10-31",
              :address => "Newsberg, MA",
              :password => "foobar",
              :password_confirmation => "foobar")

U7 = User.create!(
              :name => "Test Official",
              :email => "test@offical.com",
              :birthdate => "2012-10-31",
              :address => "Newsberg, MA",
              :password => "foobar",
              :password_confirmation => "foobar")

AbrahamLincoln = User.create(
                      :name => "Abraham Lincoln",
                      :email => "proclamation@gmail.com",
                      :birthdate => "1814-12-20",
                      :address => "Smallville, IL",
					            :official_id => President.id,
                      :password => "foobar",
                      :password_confirmation => "foobar")

GWash = User.create!(
            :name => "George Washington",
            :email => "revolution@gmail.com",
            :birthdate => "2012-10-31",
            :address => "New York, NY",
					  :official_id => President.id,
            :password => "foobar",
            :password_confirmation => "foobar")

Ted = User.create!(
          :name => "Theodore Roosevelt",
          :email => "bigstick@gmail.com",
          :birthdate => "2012-10-31",
          :address => "Atlanta, GA",
					:official_id => President.id,
          :password => "foobar",
          :password_confirmation => "foobar")

TJeff = User.create!(
            :name => "Thomas Jefferson",
            :email => "scribedude@gmail.com",
            :birthdate => "2012-10-31",
            :address => "Monticello, VA",
					  :official_id => President.id,
            :password => "foobar",
            :password_confirmation => "foobar")

AJack = User.create!(
            :name => "Andrew Jackson",
            :email => "manifestdestiny@gmail.com",
            :birthdate => "2012-10-31",
            :address => "Midwestville, OH",
					  :official_id => President.id,
            :password => "foobar",
            :password_confirmation => "foobar")

JKenn = User.create!(
            :name => "John F. Kennedy",
            :email => "telepresence@gmail.com",
            :birthdate => "2012-10-31",
            :address => "Hoboken, NJ",
					  :official_id => President.id,
            :password => "foobar",
            :password_confirmation => "foobar")

BFrank = User.create!(
              :name => "Benjamin Franklin",
              :email => "kitesintherain@gmail.com",
              :birthdate => "2012-10-31",
              :address => "Newsberg, MA",
					    :official_id => President.id,
              :password => "foobar",
              :password_confirmation => "foobar")

TestUser = User.create!(
              :name => "Test User",
              :email => "test@user.com",
              :birthdate => "2012-10-31",
              :address => "Newsberg, MA",
              :password => "foobar",
              :password_confirmation => "foobar")

TestOfficial = User.create!(
              :name => "Test Official",
              :email => "test@official.com",
              :birthdate => "2012-10-31",
              :address => "Newsberg, MA",
					    :official_id => President.id,
              :password => "foobar",
              :password_confirmation => "foobar")

JSU = User.create!(
              :name => "Just Some User",
              :email => "test@abcde.com",
              :birthdate => "2012-10-31",
              :address => "Newsberg, MA",
              :password => "foobar",
              :password_confirmation => "foobar")

Bottom = Question.create!({
                  :user => JKenn,
                  :user_id => JKenn.id,
					        :official_id => President.id,
                  :body => "I think America should choose!",
                  :title => "Blondes or Brunettes?",
<<<<<<< HEAD
                  :up_cache => 0,
                  :down_cache => 4,
                  :rank_value => -4
=======
                  :upcache => 0,
                  :downcache => 4,
                  :rankvalue => -4
>>>>>>> 1730b32b7777f33f549f796420236dba03138b4d
                  })

Q1 = Question.create!({
              :user => AbrahamLincoln,
              :user_id => AbrahamLincoln.id,
					    :official_id => Mayor.id,
              :body => "Does my tophat make me look too tall?",
              :title => "A Question About Tophats?",
<<<<<<< HEAD
              :up_cache => 0,
              :down_cache => 0,
              :rank_value => 0
=======
              :upcache => 0,
              :downcache => 0,
              :rankvalue => 0
>>>>>>> 1730b32b7777f33f549f796420236dba03138b4d
              })

Q2 = Question.create!({
              :user => BFrank,
              :user_id => BFrank.id,
					    :official_id => Rep.id,
              :body => "Not to be snob, but my face is featured on the largest bill.",
              :title => "How many of you have your face on money?",
<<<<<<< HEAD
              :up_cache => 0,
              :down_cache => 0,
              :rank_value => 0
=======
              :upcache => 0,
              :downcache => 0,
              :rankvalue => 0
>>>>>>> 1730b32b7777f33f549f796420236dba03138b4d
              })

Question.create!({
        :user => GWash,
        :user_id => GWash.id,
				:official_id => President.id,
        :body => "What do they look like??",
        :title => "Advice on identifying Red Coats",
<<<<<<< HEAD
        :up_cache => 0,
        :down_cache => 0,
        :rank_value => 0
=======
        :upcache => 0,
        :downcache => 0,
        :rankvalue => 0
>>>>>>> 1730b32b7777f33f549f796420236dba03138b4d
        })

Top = Question.create!({
              :user => AJack,
              :user_id => AJack.id,
					    :official_id => Mayor.id,
              :body => "How many of you would like to live on the Pacific?",
              :title => "Manifest Destiny",
<<<<<<< HEAD
              :up_cache => 4,
              :down_cache => 0,
              :rank_value => 4
=======
              :upcache => 4,
              :downcache => 0,
              :rankvalue => 4
>>>>>>> 1730b32b7777f33f549f796420236dba03138b4d
              })

Q4 = Question.create!({
              :user => Ted,
              :user_id => Ted.id,
					    :official_id => Rep.id,
              :body => "Which superpowers would you look out for?",
              :title => "Foreign Policy Help!",
<<<<<<< HEAD
              :up_cache => 3,
              :down_cache => 0,
              :rank_value => 3
=======
              :upcache => 3,
              :downcache => 0,
              :rankvalue => 3
>>>>>>> 1730b32b7777f33f549f796420236dba03138b4d
              })

Q5 = Question.create!({
              :user => TJeff,
              :user_id => TJeff.id,
					    :official_id => President.id,
              :body => "I personally believe that we need more public computers",
              :title => "What change would you like to see in your community?",
<<<<<<< HEAD
              :up_cache => 2,
              :down_cache => 0,
              :rank_value => 2
              })

Q3 = Question.create!({
              :user => JSU,
              :user_id => JSU.id,
              :official_id => Governor.id,
              :body => ActiveRecord::Base.connection.quote("Doesn't our state have enough to deal with?"),
              :title => "Why do we need a new bridge to Canada now?",
              :up_cache => 6,
              :down_cache => 0,
              :rank_value => 6
=======
              :upcache => 2,
              :downcache => 0,
              :rankvalue => 2
>>>>>>> 1730b32b7777f33f549f796420236dba03138b4d
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
          :user_id => AJack.id,
          :question_id => Q4.id,
          :yaynay => true

  })

UqRelation.create!({
          :user_id => GWash.id,
          :question_id => Q4.id,
          :yaynay => true

  })

UqRelation.create!({
          :user_id => BFrank.id,
          :question_id => Q4.id,
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
          :user_id => U1.id,
          :question_id => Q3.id,
          :yaynay => true

  })
UqRelation.create!({
          :user_id => U2.id,
          :question_id => Q3.id,
          :yaynay => true

  })
UqRelation.create!({
          :user_id => U3.id,
          :question_id => Q3.id,
          :yaynay => true

  })
UqRelation.create!({
          :user_id => U4.id,
          :question_id => Q3.id,
          :yaynay => true

  })
UqRelation.create!({
          :user_id => U5.id,
          :question_id => Q3.id,
          :yaynay => true

  })
UqRelation.create!({
          :user_id => U6.id,
          :question_id => Q3.id,
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

P1 = Poll.create!({	:user => Rick,
					:user_id => Rick.id,
					:official_id => Governor.id,
					:body => ActiveRecord::Base.connection.quote("This proposal would: Require the approval of a majority of voters at a statewide election and in each municipality where new international bridges or tunnels for motor vehicles are to be located before the State of Michigan may expend state funds or resources for acquiring land, designing, soliciting bids for, constructing, financing, or promoting new international bridges or tunnels. Create a definition of 'new international bridges or tunnels for motor vehicles' that means, 'any bridge or tunnel which is not open to the public and serving traffic as of January 1, 2012.'"),
					:title => "Do you agree with Proposal 4?",
          :poll_options_set_id => YesOrNo.id
					})

P2 = Poll.create!({	:user => Rick,
					:user_id => Rick.id,
					:official_id => Governor.id,
					:body => "Bridges are cool.",
					:title => "Do you agree with the proposed bridge to Canada?",
          :poll_options_set_id => AgreeScale.id
					})

P3 = Poll.create!({ :user => John,
          :user_id => John.id,
					:official_id => Mayor.id,
          :body => "The plan is to install Herbert Dreiseitl's $750k statue in front of the new Justice Center building and a newly renovated city hall. In 2007, Ann Arbor's City Council unanimously passed an ordinance stipulating that all capital improvement projects funded wholly or partly by the City will include funds for public art equal to one percent of the project construction costs, to a maximum of $250,000 per capital improvement project. Public art may be located at the capital improvement site, or can be installed at other locations. Public art must relate to the funding source of the capital improvement.\"",
          :title => "Should we go ahead with the proposed $750k art exhibit in front of city hall?",
          :poll_options_set_id => YesOrNo.id
          })

P4 = Poll.create!({ :user => Rick,
          :user_id => Rick.id,
					:official_id => Governor.id,
          :body => "For more information, <a href = 'http://www.legislature.mi.gov/' >click here</a>",
          :title => "Do you think we should expand cyber charter schools in Michigan?",
          :poll_options_set_id => AgreeScale.id
          })

P5 = Poll.create!({ :user => Debbie,
          :user_id => Debbie.id,
					:official_id => Senator2.id,
          :body => "H R 3523, Cyber Intelligence Sharing and Protection Act (CISPA). The bill exempts private entities and utilities from all state and federal liability when they share 'cyber threat information' with the federal government. That term is defined broadly to mean any information 'directly pertaining to . . . [a] threat to [] a system or network,' and it may include your personally identifiable information. The bill also provides new authority to the federal government to share your information with the private sector. The government may use information it receives from companies for purposes beyond cybersecurity, including protecting minors and national security.",
          :title => "Do you support CISPA?",
          :poll_options_set_id => YesOrNo.id
          })
