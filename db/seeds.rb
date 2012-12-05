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


Bottom = Question.create!({
                  :user => JKenn,
                  :user_id => JKenn.id,
					        :official_id => President.id,
                  :body => "I think America should choose!",
                  :title => "Blondes or Brunettes?",
                  :upCache => 0,
                  :downCache => 4,
                  :rankValue => -4
                  })

Q1 = Question.create!({
              :user => AbrahamLincoln,
              :user_id => AbrahamLincoln.id,
					    :official_id => Mayor.id,
              :body => "Does my tophat make me look too tall?",
              :title => "A Question About Tophats?",
              :upCache => 0,
              :downCache => 0,
              :rankValue => 0
              })

Q2 = Question.create!({
              :user => BFrank,
              :user_id => BFrank.id,
					    :official_id => Rep.id,
              :body => "Not to be snob, but my face is featured on the largest bill.",
              :title => "How many of you have your face on money?",
              :upCache => 0,
              :downCache => 0,
              :rankValue => 0
              })

Question.create!({
        :user => GWash,
        :user_id => GWash.id,
				:official_id => President.id,
        :body => "What do they look like??",
        :title => "Advice on identifying Red Coats",
        :upCache => 0,
        :downCache => 0,
        :rankValue => 0
        })

Top = Question.create!({
              :user => AJack,
              :user_id => AJack.id,
					    :official_id => Mayor.id,
              :body => "How many of you would like to live on the Pacific?",
              :title => "Manifest Destiny",
              :upCache => 4,
              :downCache => 0,
              :rankValue => 4
              })

Q4 = Question.create!({
              :user => Ted,
              :user_id => Ted.id,
					    :official_id => Rep.id,
              :body => "Which superpowers would you look out for?",
              :title => "Foreign Policy Help!",
              :upCache => 3,
              :downCache => 0,
              :rankValue => 3
              })

Q5 = Question.create!({
              :user => TJeff,
              :user_id => TJeff.id,
					    :official_id => President.id,
              :body => "I personally believe that we need more public computers",
              :title => "What change would you like to see in your community?",
              :upCache => 2,
              :downCache => 0,
              :rankValue => 2
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

P1 = Poll.create!({	:user => AbrahamLincoln,
					:user_id => AbrahamLincoln.id,
					:official_id => President.id,
					:body => "This proposal would:
Require the approval of a majority of voters at a statewide election and in each municipality where new international bridges or tunnels for motor vehicles are to be located before the State of Michigan may expend state funds or resources for acquiring land, designing, soliciting bids for, constructing, financing, or promoting new international bridges or tunnels. Create a definition of \"new international bridges or tunnels for motor vehicles\" that means, \"any bridge or tunnel which is not open to the public and serving traffic as of January 1, 2012.\"",
					:title => "Do you agree with Proposal 4?",
          :poll_options_set_id => YesOrNo.id
					})

P2 = Poll.create!({	:user => BFrank,
					:user_id => BFrank.id,
					:official_id => President.id,
					:body => "Bridges are cool.",
					:title => "Do you agree with the proposed bridge to Canada?",
          :poll_options_set_id => AgreeScale.id
					})

P3 = Poll.create!({ :user => GWash,
          :user_id => GWash.id,
					:official_id => President.id,
          :body => "The plan is to install Herbert Dreiseitl's $750k statue in front of the new Justice Center building and a newly renovated city hall. In 2007, Ann Arbor's City Council unanimously passed an ordinance stipulating that all capital improvement projects funded wholly or partly by the City will include funds for public art equal to one percent of the project construction costs, to a maximum of $250,000 per capital improvement project. Public art may be located at the capital improvement site, or can be installed at other locations. Public art must relate to the funding source of the capital improvement.\"",
          :title => "Should we go ahead with the proposed $750k art exhibit in front of city hall?",
          :poll_options_set_id => YesOrNo.id
          })

P4 = Poll.create!({ :user => Ted,
          :user_id => Ted.id,
					:official_id => President.id,
          :body => "For more information, <a href = 'http://www.legislature.mi.gov/' >click here</a>",
          :title => "Do you think we should expand cyber charter schools in Michigan?",
          :poll_options_set_id => AgreeScale.id
          })

P5 = Poll.create!({ :user => JKenn,
          :user_id => JKenn.id,
					:official_id => President.id,
          :body => "H R 3523, Cyber Intelligence Sharing and Protection Act (CISPA). The bill exempts private entities and utilities from all state and federal liability when they share 'cyber threat information' with the federal government. That term is defined broadly to mean any information 'directly pertaining to . . . [a] threat to [] a system or network,' and it may include your personally identifiable information. The bill also provides new authority to the federal government to share your information with the private sector. The government may use information it receives from companies for purposes beyond cybersecurity, including protecting minors and national security.",
          :title => "Do you support CISPA?",
          :poll_options_set_id => YesOrNo.id
          })
