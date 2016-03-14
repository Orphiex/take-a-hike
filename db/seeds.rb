# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Trail.create(
  region: 'Lantau Island',
  trail_name: 'Chi Ma Wan (Sesame Bay)',
  descriptions: 'Chi Ma Wan country trail is a circular peninsula route, being the longest among the 7 country trails on Lantau. Starting and ending at Shap Long Campsite, it passes by Pui O Bay, Mong Tung Wan, Sea Ranch in Yi Long and Tai Long Village.',
  difficulty: 3.8,
  map_link: 'http://hiking.gov.hk/eng/trail_list/country_trail/ChiMaWan_country_trail/Route_Map.htm',
  distance: 18.5,
  est_time: 8.5,
  pt1_name: 'Shap Long Campsite',
  pt1_info: 'Starting Point : Get off at Pui O and walk about 30 minutes pass through Ham Tin to reach entrance, which beside Shap Long Campsite.',
  pt1_transp: 'New Lantao Bus - 1 Mui Wo Ferry Pier - Tai O(Section Fare), 3M Tung Chung Town Centre - Mui Wo Ferry Pier',
  pt1_photo: 'Put link here',
  pt2_name: 'Shap Long Campsite',
  pt2_info: 'Starting Point : Get off at Pui O and walk about 30 minutes pass through Ham Tin to reach entrance, which beside Shap Long Campsite.',
  pt2_transp: 'New Lantao Bus - 1 Mui Wo Ferry Pier - Tai O(Section Fare), 3M Tung Chung Town Centre - Mui Wo Ferry Pier',
  pt2_photo: 'Put link here'
  )

Trail.create(region: 'Lantau Island',
  trail_name: "Lo Fu Tau (Tiger's Head)",
  descriptions: 'Located in Lantau North (Extension) Country Park, Lo Fu Tau Country Trail is about 3.4 km in total length, takes about 1.25 hours to complete the walk. Set off from Pak Ngan Heung in Mui Wo or Pak Mong Village in Tung Chung in an hour, to reach A Po Long, the starting point of Lo Fu Tau Country Trail. ',
  difficulty: 2.2,
  map_link: 'http://hiking.gov.hk/eng/trail_list/country_trail/Lo_Fu_Tau_Country_Trail/Route_Map.htm',
  distance: 3.4,
  est_time: 0.8,
  pt1_name: 'A Po Long (Olympic Trail) ',
  pt1_info: 'Starting Point: Get out of Citygate Mall. Walk along MTR route and cross through underpass.',
  pt1_transp: 'MTR - Take Tung Chung line to the terminus station at Tung Chung. Go through Citygate Mall and exit mail to Coastal Skyline.',
  pt1_photo: 'Put link here',
  pt2_name: 'Lo Fu Tau',
  pt2_info: "At the end of the trail, you will find, quite interestingly, that the Tiger's head seeming like a tiger glaring at Discovery Bay.",
  pt2_transp: 'Discovery Bay Ferry - Take the DB Ferry from Central Ferry Pier to Discovery Bay.',
  pt2_photo: 'Put link here'
  )

Trail.create(region: 'Lantau Island',
  trail_name: 'Wong Lung Hang',
  descriptions: 'The starting point of Wong Lung Hang Country Trail is at Sheung Tung Au. Sheung Tung refers to Sunset Peak and Yi Tung Shan. Though a relatively short hiking route, the starting point is set high up on the 690m uplands of Yi Tung Shan. The trail traces the north slope of Sunset Peak and makes a sharp descent to a valley. The complete circuit is treacherous, heavily shaded and matted with moss.',
  difficulty: 2.6,
  map_link: 'http://hiking.gov.hk/eng/trail_list/country_trail/Wong_Lung_Hang_Country_Trail/Route_Map.htm',
  distance: 2.3,
  est_time: 0.8,
  pt1_name: 'Sheung Tung Au',
  pt1_info: 'Walk for 30mins to Tung Chung Road and take bus back to Mui Wo Ferry Pier or Tung Chung Town Centre.',
  pt1_transp: 'New Lantao Bus - 3M Tung Chung Town Centre - Mui Wo Ferry Pier; 11 Tai O - Tung Chung Town Centre; 23 Ngong Ping (Po Lin Monastery) - Tung Chung Town Centre',
  pt1_photo: 'Put link here',
  pt2_name: 'Wong Lung Hand Road',
  pt2_info: 'Get off at Nam Shan and walk uphill 3.7km(2 hrs) Lantau Trail Section 2 to reach entrance',
  pt2_transp: 'New Lantao Bus - 1 Mui Wo Ferry Pier - Tai O (Section Fare)',
  pt2_photo: 'Put link here'
  )