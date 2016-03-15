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
  difficulty: 4,
  d_length: 4,
  d_time: 4,
  d_gradient: 4,
  d_surface: 3,
  map_link: 'trail_maps/chi_ma_wan_map.jpg',
  distance: 18.5,
  est_time: 8,
  pt1_name: 'Shap Long Campsite',
  pt1_info: 'Get off at Pui O and walk about 30 minutes to pass through Ham Tin to reach the entrance beside the Shap Long Campsite.',
  pt1_transp: 'New Lantao Bus - 1 Mui Wo Ferry Pier - Tai O(Section Fare), 3M Tung Chung Town Centre - Mui Wo Ferry Pier',
  pt1_photo: 'trail_pics/chi_ma_wan_pt1.jpg',
  pt2_name: 'Shap Long Campsite',
  pt2_info: 'Get off at Pui O and walk about 30 minutes pass through Ham Tin to reach entrance, which beside Shap Long Campsite.',
  pt2_transp: 'New Lantao Bus - 1 Mui Wo Ferry Pier - Tai O(Section Fare), 3M Tung Chung Town Centre - Mui Wo Ferry Pier',
  pt2_photo: 'trail_pics/chi_ma_wan_pt2.jpg'
  )

Trail.create(region: 'Lantau Island',
  trail_name: "Lo Fu Tau (Tiger's Head)",
  descriptions: 'Located in Lantau North (Extension) Country Park, Lo Fu Tau Country Trail is about 3.4 km in total length, takes about 1.25 hours to complete the walk. Set off from Pak Ngan Heung in Mui Wo or Pak Mong Village in Tung Chung in an hour, to reach A Po Long, the starting point of Lo Fu Tau Country Trail. ',
  difficulty: 2,
  d_length: 2,
  d_time: 2,
  d_gradient: 3,
  d_surface: 2,
  map_link: 'trail_maps/lo_fu_tau_map.jpg',
  distance: 3.4,
  est_time: 1.25,
  pt1_name: 'A Po Long (Olympic Trail) ',
  pt1_info: 'Get out of Citygate Mall and walk along MTR route until you come to and cross an underpass.',
  pt1_transp: 'MTR - Take Tung Chung line to the terminus station at Tung Chung. Go through Citygate Mall and exit mail to Coastal Skyline.',
  pt1_photo: 'trail_pics/lo_fu_tau_pt1.jpg',
  pt2_name: 'Lo Fu Tau',
  pt2_info: "At the end of the trail, you will find, quite interestingly, that the Tiger's head seeming like a tiger glaring at Discovery Bay.",
  pt2_transp: 'Discovery Bay Ferry - Take the DB Ferry from Central Ferry Pier to Discovery Bay.',
  pt2_photo: 'trail_pics/lo_fu_tau_pt2.jpg'
  )

Trail.create(region: 'Lantau Island',
  trail_name: 'Wong Lung Hang',
  descriptions: 'The starting point of Wong Lung Hang Country Trail is at Sheung Tung Au. Sheung Tung refers to Sunset Peak and Yi Tung Shan. Though a relatively short hiking route, the starting point is set high up on the 690m uplands of Yi Tung Shan. The trail traces the north slope of Sunset Peak and makes a sharp descent to a valley. The complete circuit is treacherous, heavily shaded and matted with moss.',
  difficulty: 2,
  d_length: 1,
  d_time: 2,
  d_gradient: 4,
  d_surface: 4,
  map_link: 'trail_maps/wong_lung_hang_map.jpg',
  distance: 2.3,
  est_time: 0.8,
  pt1_name: 'Sheung Tung Au',
  pt1_info: 'Walk for 30mins to Tung Chung Road and take bus back to Mui Wo Ferry Pier or Tung Chung Town Centre.',
  pt1_transp: 'New Lantao Bus - 3M Tung Chung Town Centre - Mui Wo Ferry Pier; 11 Tai O - Tung Chung Town Centre; 23 Ngong Ping (Po Lin Monastery) - Tung Chung Town Centre',
  pt1_photo: 'trail_pics/wong_lung_hang_pt1.jpg',
  pt2_name: 'Wong Lung Hang Road',
  pt2_info: 'Get off at Nam Shan and walk uphill 3.7km (2 hrs) on Lantau Trail Section 2 to reach entrance',
  pt2_transp: 'New Lantao Bus - 1 Mui Wo Ferry Pier - Tai O (Section Fare)',
  pt2_photo: 'trail_pics/wong_lung_hang_pt2.jpg'
  )

Trail.create(region: 'Hong Kong Island',
  trail_name: 'Aberdeen Nature',
  descriptions: "This nature trail offers panoramic views of Aberdeen, overlooking the typhoon shelter, public housing estates and a catholic convent full of Chinese architectural charm. The catchwater stretching from east to west on the southern slopes of Bennet's Hill, diverts stream water and hill runoffs to the reservoir. These slopes that depend on a catchment system are called 'indirect catchment'. On trailside there are a few dark-coloured pyroclastic rocks. They are products of eruptive volcanic activities some 2 million years ago, and contain minerals like feldspar, quartz and biotite. Aberdeen is a habitat of Black-eared Kites, so see if you can spot some of these handsome raptors circling above. At the dam of the Upper Aberdeen Reservoir, the trail ends.",
  difficulty: 1,
  d_length: 1,
  d_time: 1,
  d_gradient: 1,
  d_surface: 1,
  map_link: 'trail_maps/aberdeen_nature_map.jpg',
  distance: 1.2,
  est_time: 1.0,
  pt1_name: 'Lower Aberdeen Reservoir',
  pt1_info: 'Climb gently up Yue Kwong Road. The entrance of Aberdeen Country Park is just a short distance away. The starting point of the nature trail is on the east bank of Lower Aberdeen Reservoir.',
  pt1_transp: 'New Lantao Bus - 3M Tung Chung Town Centre - Mui Wo Ferry Pier; 11 Tai O - Tung Chung Town Centre; 23 Ngong Ping (Po Lin Monastery) - Tung Chung Town Centre',
  pt1_photo: 'trail_pics/aberdeen_nature_pt1.jpg',
  pt2_name: 'Upper Aberdeen Reservoir',
  pt2_info: 'At the dam of the Upper Aberdeen Reservoir, the trail ends.',
  pt2_transp: 'New Lantao Bus - 1 Mui Wo Ferry Pier - Tai O (Section Fare)',
  pt2_photo: 'trail_pics/aberdeen_nature_pt2.jpg'
  )

Trail.create(region: 'Hong Kong Island',
  trail_name: 'Pottinger Peak Country',
  descriptions: "Cape Collinson with Pottinger Peak at the back formerly known as Sai Wan, Chai Wan got its name from the rich local production of firewood. Hakka people first settled in Chai Wan in the early 18th Century. In the 1980's, with the completion of the MTR Island Line and Eastern Corridor, Chai Wan's access to other parts of the territory and urban development was greatly improved.",
  difficulty: 1,
  d_length: 1,
  d_time: 1,
  d_gradient: 2,
  d_surface: 1,
  map_link: 'trail_maps/pottinger_peak_country_map.jpg',
  distance: 1.9,
  est_time: 1.5,
  pt1_name: 'Shek O Ma Tong Au',
  pt1_info: 'Take bus or green minibus and get off near Tai Tam Gap Correctional Institution at Shek O road, walk up a stair at the right of a road junction, then walk uphill for about 25 mins to the entrance. The 1.9 km Pottinger Peak Country Trail starts at Ma Tong Au of Shek O. It runs along the Pottinger Peak catchment. Turn left onto an uphill path just before coming to the end of the catchwater. It takes you all the way to Seaview Pavilion for a scenic stopover.',
  pt1_transp: 'NWFB 9 Shau Kei Wan - Shek O, Green minibus 16M, Chai Wan MTR Station - Chung Hom Kok',
  pt1_photo: 'trail_pics/pottinger_peak_country_pt1.jpg',
  pt2_name: 'Cape Collinson Road',
  pt2_info: 'Siu Sai Wan was known as Chai Wan Tsai in the old days, when the district was an isolated beach. Today, it becomes a well developed residential community. Take the downward steps from the catchment and the trail ends at Cape Collinson Road.',
  pt2_transp: 'NWFB 9 Shau Kei Wan - Shek O, Green minibus 16M, Chai Wan MTR Station - Chung Hom Kok',
  pt2_photo: 'trail_pics/pottinger_peak_country_pt2.jpg'
  )

Trail.create(region: 'Hong Kong Island',
  trail_name: 'Tai Tam Country',
  descriptions: "Tai Tam Country Trail lies in the western part of Tai Tam Country Park. The trail is divided into two sections: Violet Hill and Sir Cecil's Ride. Hikers are advised to take several breaks along the way. In return, the path gives splendid vistas of Deep Water Bay and Lamma Island in the distance. Beyond the northern slopes, the trail trends down, feasting your eyes with dreamy landscapes of the Tai Tam Reservoirs.",
  difficulty: 3,
  d_length: 2,
  d_time: 2,
  d_gradient: 3,
  d_surface: 3,
  map_link: 'trail_maps/tai_tam_country_map.jpg',
  distance: 5.2,
  est_time: 2.5,
  pt1_name: 'Wong Nai Chung Reservoir Park',
  pt1_info: 'Take any bus or green minibus through Wong Nai Chung Gap Road. Get off at the Sinopec Petrol Station near Hong Kong Parkview right after the tennis court. Walk up the stairs beside the Petrol Station to Tai Tam Reservoir Road. Walk uphill along the road for about 5 minutes to the entrance of Wong Nai Chung Reservoir Park on the right. The Country Trail starts at the main dam of Wong Nai Chung Reservoir. It climbs up the 436m Violet Hill along a small path on the left of the catchwater. This rugged ascent is rather challenging.',
  pt1_transp: 'CityBus: 6 Central (Exchange Square) - Stanley Prison, 76 Causeway Bay(Moreton Terrace) - Shek Pai Wan, 41A North Point Ferry Pier - Wah Fu, NWFB: 63 North Point Ferry Pier - Stanley Prison, 66 Central (Exchange Square) - Stanley Plaza (Ma Hang Estate)',
  pt1_photo: 'trail_pics/tai_tam_country_pt1.jpg',
  pt2_name: 'Wong Nai Chung Reservoir Park',
  pt2_info: 'Walk along the Tai Tam Reservoir Road to the bus or green minibus stop at Wong Nai Chung Gap Road.',
  pt2_transp: 'CityBus: 6 Central (Exchange Square) - Stanley Prison, 76 Causeway Bay(Moreton Terrace) - Shek Pai Wan, 41A North Point Ferry Pier - Wah Fu, NWFB: 63 North Point Ferry Pier - Stanley Prison, 66 Central (Exchange Square) - Stanley Plaza (Ma Hang Estate)',
  pt2_photo: 'trail_pics/tai_tam_country_pt2.jpg'
  )