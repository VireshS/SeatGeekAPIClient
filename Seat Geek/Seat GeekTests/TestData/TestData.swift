//
//  TestData.swift
//  Seat GeekTests
//
//  Created by Viresh Singh on 28/05/19.
//  Copyright © 2019 Viresh. All rights reserved.
//

import Foundation

struct TestData {
    static let emptyJson = """
                        {}
                    """
                    .data(using: String.Encoding.utf8)!
    static let invalidJson =   """
                            [
                              {
                                "GroupBy": "Device",
                                "GroupName": "Eagle Panel 1",
                                "LOBType": "Doesn't Matter",
                                "Date": "Doesn't Matter",
                                "Time": "Doesn't Matter",
                                "Alarms": [],
                                "AlarmCount": "14"
                              },
                              {
                                "GroupBy": "Device",
                                "GroupName": "Eagle Panel 2",
                                "LOBType": "Doesn't Matter",
                                "Date": "Doesn't Matter",
                                "Time": "Doesn't Matter",
                                "Alarms": [],
                                "AlarmCount": "14"
                              }
                            ]
                        """
                        .data(using: String.Encoding.utf8)!
    static let validJson =
                    """
                        {
                          "meta": {
                            "geolocation": null,
                            "per_page": 10,
                            "total": 111,
                            "took": 12,
                            "page": 1
                          },
                          "in_hand": {},
                          "events": [
                            {
                              "links": [],
                              "event_promotion": null,
                              "conditional": false,
                              "is_open": false,
                              "id": 4612875,
                              "stats": {
                                "visible_listing_count": 494,
                                "dq_bucket_counts": [
                                  110,
                                  10,
                                  61,
                                  131,
                                  159,
                                  190,
                                  27,
                                  0
                                ],
                                "average_price": 90,
                                "lowest_price_good_deals": 16,
                                "median_price": 77,
                                "listing_count": 536,
                                "lowest_price": 16,
                                "highest_price": 731
                              },
                              "title": "Texas Rangers at Seattle Mariners",
                              "announce_date": "2018-10-30T00:00:00",
                              "score": 0.661,
                              "access_method": {
                                "employee_only": false,
                                "created_at": "2015-06-21T00:00:00Z",
                                "method": "QRCODE_TM"
                              },
                              "announcements": {},
                              "taxonomies": [
                                {
                                  "name": "sports",
                                  "parent_id": null,
                                  "id": 1000000
                                },
                                {
                                  "name": "baseball",
                                  "parent_id": 1000000,
                                  "id": 1010000
                                },
                                {
                                  "name": "mlb",
                                  "parent_id": 1010000,
                                  "id": 1010100
                                }
                              ],
                              "type": "mlb",
                              "status": "normal",
                              "description": "",
                              "datetime_local": "2019-05-28T19:10:00",
                              "visible_until_utc": "2019-05-29T06:10:00",
                              "time_tbd": false,
                              "date_tbd": false,
                              "performers": [
                                {
                                  "image": "https://seatgeek.com/images/performers-landscape/seattle-mariners-6ce8ef/13/huge.jpg",
                                  "primary": true,
                                  "colors": {
                                    "all": [
                                      "#0C2C56",
                                      "#005C5C"
                                    ],
                                    "iconic": "#005C5C",
                                    "primary": [
                                      "#0C2C56",
                                      "#005C5C"
                                    ]
                                  },
                                  "images": {
                                    "huge": "https://seatgeek.com/images/performers-landscape/seattle-mariners-6ce8ef/13/huge.jpg"
                                  },
                                  "has_upcoming_events": true,
                                  "id": 13,
                                  "stats": {
                                    "event_count": 110
                                  },
                                  "image_license": "https://creativecommons.org/licenses/by/2.0/",
                                  "score": 0.7,
                                  "location": {
                                    "lat": 47.5914,
                                    "lon": -122.333
                                  },
                                  "taxonomies": [
                                    {
                                      "name": "sports",
                                      "parent_id": null,
                                      "id": 1000000,
                                      "document_source": {
                                        "source_type": "ELASTIC",
                                        "generation_type": "FULL"
                                      }
                                    },
                                    {
                                      "name": "baseball",
                                      "parent_id": 1000000,
                                      "id": 1010000,
                                      "document_source": {
                                        "source_type": "ELASTIC",
                                        "generation_type": "FULL"
                                      }
                                    },
                                    {
                                      "name": "mlb",
                                      "parent_id": 1010000,
                                      "id": 1010100,
                                      "document_source": {
                                        "source_type": "ELASTIC",
                                        "generation_type": "FULL"
                                      }
                                    }
                                  ],
                                  "type": "mlb",
                                  "num_upcoming_events": 110,
                                  "short_name": "Mariners",
                                  "home_venue_id": 13,
                                  "slug": "seattle-mariners",
                                  "divisions": [
                                    {
                                      "display_name": "American League",
                                      "short_name": null,
                                      "division_level": 1,
                                      "display_type": "League",
                                      "taxonomy_id": 1010100,
                                      "slug": null
                                    },
                                    {
                                      "display_name": "American League West",
                                      "short_name": "AL West",
                                      "division_level": 2,
                                      "display_type": "Division",
                                      "taxonomy_id": 1010100,
                                      "slug": "american-league-west"
                                    }
                                  ],
                                  "home_team": true,
                                  "name": "Seattle Mariners",
                                  "url": "https://seatgeek.com/seattle-mariners-tickets",
                                  "popularity": 0,
                                  "image_attribution": "https://www.flickr.com/photos/sillygwailo/5622797723/in/photolist-9ySiSk-9ypQsD-oFqMDd-bBpy1Q-9ypsrV-9MTjth-ae5nrj-9yt7Hm-76cmWs-7U7UWL-9yStuB-5aStTs-5rkUv-9yVr9o-9yVtds-9yVvL3-9ySrpi-8RfagD-5AYhAT-HM7Fw-4Q2Gyg-9QFuf8-87yXp3-9QNtXD-4Q2Y6G-6B7nDS-2fsyDo-2fo9EH-4UvQa3-85oVKC-byWa1b-byW6R7-98ZeS1-bMQPJT-98Zczf-98ZavE-98VWZH-98W43B-98W2vR-98Z7rm-98Zfn3-98ZdDm-98W7Sg-98Z8h5-98Z6p3-9yVgWm-9yVhmq-9ySk8k-c7q7pJ-4ToYQ7"
                                },
                                {
                                  "image": "https://seatgeek.com/images/performers-landscape/texas-rangers-0b3f80/16/huge.jpg",
                                  "colors": {
                                    "all": [
                                      "#0038A8",
                                      "#C0111F"
                                    ],
                                    "iconic": "#C0111F",
                                    "primary": [
                                      "#0038A8",
                                      "#C0111F"
                                    ]
                                  },
                                  "images": {
                                    "huge": "https://seatgeek.com/images/performers-landscape/texas-rangers-0b3f80/16/huge.jpg"
                                  },
                                  "has_upcoming_events": true,
                                  "id": 16,
                                  "away_team": true,
                                  "stats": {
                                    "event_count": 115
                                  },
                                  "image_license": "https://creativecommons.org/licenses/by-sa/2.0/",
                                  "score": 0.74,
                                  "location": {
                                    "lat": 32.7506,
                                    "lon": -97.0824
                                  },
                                  "taxonomies": [
                                    {
                                      "name": "sports",
                                      "parent_id": null,
                                      "id": 1000000,
                                      "document_source": {
                                        "source_type": "ELASTIC",
                                        "generation_type": "FULL"
                                      }
                                    },
                                    {
                                      "name": "baseball",
                                      "parent_id": 1000000,
                                      "id": 1010000,
                                      "document_source": {
                                        "source_type": "ELASTIC",
                                        "generation_type": "FULL"
                                      }
                                    },
                                    {
                                      "name": "mlb",
                                      "parent_id": 1010000,
                                      "id": 1010100,
                                      "document_source": {
                                        "source_type": "ELASTIC",
                                        "generation_type": "FULL"
                                      }
                                    }
                                  ],
                                  "type": "mlb",
                                  "num_upcoming_events": 115,
                                  "short_name": "Rangers",
                                  "home_venue_id": 16,
                                  "slug": "texas-rangers",
                                  "divisions": [
                                    {
                                      "display_name": "American League",
                                      "short_name": null,
                                      "division_level": 1,
                                      "display_type": "League",
                                      "taxonomy_id": 1010100,
                                      "slug": null
                                    },
                                    {
                                      "display_name": "American League West",
                                      "short_name": "AL West",
                                      "division_level": 2,
                                      "display_type": "Division",
                                      "taxonomy_id": 1010100,
                                      "slug": "american-league-west"
                                    }
                                  ],
                                  "name": "Texas Rangers",
                                  "url": "https://seatgeek.com/texas-rangers-tickets",
                                  "popularity": 0,
                                  "image_attribution": "https://www.flickr.com/photos/a4gpa/4591377118/in/photolist-HG1Ar-6G8DGT-6rWf5N-4anGGm-4aiDfH-4anHc1-7ZJ1ss-aqx6nD-aqx3EV-aqzEFA-6G8FCc-aqwYWz-aqzFwq-4anGc7-4aiFUF-4anFM7-aqx2ev-aqzGLy-aqx1Ln-aqzJn7-aqzNg1-6G8EXn-aqx2Xr-8QpUwa-aqx5SK-aqzKS7-aqx53z-aqx1vB-79NEXJ-79JPMZ-aqzHxo-aqx3oH-aqx4wp-aqzGrG-9wjMuE-6LfAWV-6LkckC-6Lnoe1-6LfZbF-6LkiqL-5c1QZw-5c1SmU-5bWBXF-5c1TqQ-5c1VPq-6Lihat-HG1AF-79JQBi-6LhPC6-79JQ8r"
                                }
                              ],
                              "url": "https://seatgeek.com/rangers-at-mariners-tickets/5-28-2019-seattle-washington-t-mobile-park/mlb/4612875",
                              "created_at": "2018-10-31T16:15:18",
                              "popularity": 0.771,
                              "venue": {
                                "links": [],
                                "metro_code": 819,
                                "postal_code": "98134",
                                "timezone": "America/Los_Angeles",
                                "has_upcoming_events": true,
                                "id": 13,
                                "city": "Seattle",
                                "extended_address": "Seattle, WA 98134",
                                "display_location": "Seattle, WA",
                                "state": "WA",
                                "score": 0.7635878,
                                "location": {
                                  "lat": 47.5914,
                                  "lon": -122.333
                                },
                                "access_method": {
                                  "employee_only": false,
                                  "created_at": "2015-06-21T00:00:00Z",
                                  "method": "QRCODE_TM"
                                },
                                "num_upcoming_events": 58,
                                "address": "1250 First Avenue",
                                "capacity": 47116,
                                "slug": "t-mobile-park",
                                "name": "T-Mobile Park",
                                "url": "https://seatgeek.com/venues/t-mobile-park/tickets",
                                "country": "US",
                                "popularity": 0,
                                "name_v2": "T-Mobile Park"
                              },
                              "enddatetime_utc": null,
                              "short_title": "Rangers at Mariners",
                              "datetime_utc": "2019-05-29T02:10:00",
                              "datetime_tbd": false
                            },
                            {
                              "links": [],
                              "event_promotion": null,
                              "conditional": false,
                              "is_open": false,
                              "id": 4609157,
                              "stats": {
                                "visible_listing_count": 556,
                                "dq_bucket_counts": [
                                  137,
                                  65,
                                  87,
                                  149,
                                  155,
                                  236,
                                  33,
                                  0
                                ],
                                "average_price": 91,
                                "lowest_price_good_deals": 17,
                                "median_price": 75,
                                "listing_count": 631,
                                "lowest_price": 17,
                                "highest_price": 730
                              },
                              "title": "Texas Rangers at Seattle Mariners",
                              "announce_date": "2018-10-30T00:00:00",
                              "score": 0.672,
                              "access_method": {
                                "employee_only": false,
                                "created_at": "2015-06-21T00:00:00Z",
                                "method": "QRCODE_TM"
                              },
                              "announcements": {},
                              "taxonomies": [
                                {
                                  "name": "sports",
                                  "parent_id": null,
                                  "id": 1000000
                                },
                                {
                                  "name": "baseball",
                                  "parent_id": 1000000,
                                  "id": 1010000
                                },
                                {
                                  "name": "mlb",
                                  "parent_id": 1010000,
                                  "id": 1010100
                                }
                              ],
                              "type": "mlb",
                              "status": "normal",
                              "description": "",
                              "datetime_local": "2019-05-29T12:40:00",
                              "visible_until_utc": "2019-05-29T23:40:00",
                              "time_tbd": false,
                              "date_tbd": false,
                              "performers": [
                                {
                                  "image": "https://seatgeek.com/images/performers-landscape/seattle-mariners-6ce8ef/13/huge.jpg",
                                  "primary": true,
                                  "colors": {
                                    "all": [
                                      "#0C2C56",
                                      "#005C5C"
                                    ],
                                    "iconic": "#005C5C",
                                    "primary": [
                                      "#0C2C56",
                                      "#005C5C"
                                    ]
                                  },
                                  "images": {
                                    "huge": "https://seatgeek.com/images/performers-landscape/seattle-mariners-6ce8ef/13/huge.jpg"
                                  },
                                  "has_upcoming_events": true,
                                  "id": 13,
                                  "stats": {
                                    "event_count": 110
                                  },
                                  "image_license": "https://creativecommons.org/licenses/by/2.0/",
                                  "score": 0.7,
                                  "location": {
                                    "lat": 47.5914,
                                    "lon": -122.333
                                  },
                                  "taxonomies": [
                                    {
                                      "name": "sports",
                                      "parent_id": null,
                                      "id": 1000000,
                                      "document_source": {
                                        "source_type": "ELASTIC",
                                        "generation_type": "FULL"
                                      }
                                    },
                                    {
                                      "name": "baseball",
                                      "parent_id": 1000000,
                                      "id": 1010000,
                                      "document_source": {
                                        "source_type": "ELASTIC",
                                        "generation_type": "FULL"
                                      }
                                    },
                                    {
                                      "name": "mlb",
                                      "parent_id": 1010000,
                                      "id": 1010100,
                                      "document_source": {
                                        "source_type": "ELASTIC",
                                        "generation_type": "FULL"
                                      }
                                    }
                                  ],
                                  "type": "mlb",
                                  "num_upcoming_events": 110,
                                  "short_name": "Mariners",
                                  "home_venue_id": 13,
                                  "slug": "seattle-mariners",
                                  "divisions": [
                                    {
                                      "display_name": "American League",
                                      "short_name": null,
                                      "division_level": 1,
                                      "display_type": "League",
                                      "taxonomy_id": 1010100,
                                      "slug": null
                                    },
                                    {
                                      "display_name": "American League West",
                                      "short_name": "AL West",
                                      "division_level": 2,
                                      "display_type": "Division",
                                      "taxonomy_id": 1010100,
                                      "slug": "american-league-west"
                                    }
                                  ],
                                  "home_team": true,
                                  "name": "Seattle Mariners",
                                  "url": "https://seatgeek.com/seattle-mariners-tickets",
                                  "popularity": 0,
                                  "image_attribution": "https://www.flickr.com/photos/sillygwailo/5622797723/in/photolist-9ySiSk-9ypQsD-oFqMDd-bBpy1Q-9ypsrV-9MTjth-ae5nrj-9yt7Hm-76cmWs-7U7UWL-9yStuB-5aStTs-5rkUv-9yVr9o-9yVtds-9yVvL3-9ySrpi-8RfagD-5AYhAT-HM7Fw-4Q2Gyg-9QFuf8-87yXp3-9QNtXD-4Q2Y6G-6B7nDS-2fsyDo-2fo9EH-4UvQa3-85oVKC-byWa1b-byW6R7-98ZeS1-bMQPJT-98Zczf-98ZavE-98VWZH-98W43B-98W2vR-98Z7rm-98Zfn3-98ZdDm-98W7Sg-98Z8h5-98Z6p3-9yVgWm-9yVhmq-9ySk8k-c7q7pJ-4ToYQ7"
                                },
                                {
                                  "image": "https://seatgeek.com/images/performers-landscape/texas-rangers-0b3f80/16/huge.jpg",
                                  "colors": {
                                    "all": [
                                      "#0038A8",
                                      "#C0111F"
                                    ],
                                    "iconic": "#C0111F",
                                    "primary": [
                                      "#0038A8",
                                      "#C0111F"
                                    ]
                                  },
                                  "images": {
                                    "huge": "https://seatgeek.com/images/performers-landscape/texas-rangers-0b3f80/16/huge.jpg"
                                  },
                                  "has_upcoming_events": true,
                                  "id": 16,
                                  "away_team": true,
                                  "stats": {
                                    "event_count": 115
                                  },
                                  "image_license": "https://creativecommons.org/licenses/by-sa/2.0/",
                                  "score": 0.74,
                                  "location": {
                                    "lat": 32.7506,
                                    "lon": -97.0824
                                  },
                                  "taxonomies": [
                                    {
                                      "name": "sports",
                                      "parent_id": null,
                                      "id": 1000000,
                                      "document_source": {
                                        "source_type": "ELASTIC",
                                        "generation_type": "FULL"
                                      }
                                    },
                                    {
                                      "name": "baseball",
                                      "parent_id": 1000000,
                                      "id": 1010000,
                                      "document_source": {
                                        "source_type": "ELASTIC",
                                        "generation_type": "FULL"
                                      }
                                    },
                                    {
                                      "name": "mlb",
                                      "parent_id": 1010000,
                                      "id": 1010100,
                                      "document_source": {
                                        "source_type": "ELASTIC",
                                        "generation_type": "FULL"
                                      }
                                    }
                                  ],
                                  "type": "mlb",
                                  "num_upcoming_events": 115,
                                  "short_name": "Rangers",
                                  "home_venue_id": 16,
                                  "slug": "texas-rangers",
                                  "divisions": [
                                    {
                                      "display_name": "American League",
                                      "short_name": null,
                                      "division_level": 1,
                                      "display_type": "League",
                                      "taxonomy_id": 1010100,
                                      "slug": null
                                    },
                                    {
                                      "display_name": "American League West",
                                      "short_name": "AL West",
                                      "division_level": 2,
                                      "display_type": "Division",
                                      "taxonomy_id": 1010100,
                                      "slug": "american-league-west"
                                    }
                                  ],
                                  "name": "Texas Rangers",
                                  "url": "https://seatgeek.com/texas-rangers-tickets",
                                  "popularity": 0,
                                  "image_attribution": "https://www.flickr.com/photos/a4gpa/4591377118/in/photolist-HG1Ar-6G8DGT-6rWf5N-4anGGm-4aiDfH-4anHc1-7ZJ1ss-aqx6nD-aqx3EV-aqzEFA-6G8FCc-aqwYWz-aqzFwq-4anGc7-4aiFUF-4anFM7-aqx2ev-aqzGLy-aqx1Ln-aqzJn7-aqzNg1-6G8EXn-aqx2Xr-8QpUwa-aqx5SK-aqzKS7-aqx53z-aqx1vB-79NEXJ-79JPMZ-aqzHxo-aqx3oH-aqx4wp-aqzGrG-9wjMuE-6LfAWV-6LkckC-6Lnoe1-6LfZbF-6LkiqL-5c1QZw-5c1SmU-5bWBXF-5c1TqQ-5c1VPq-6Lihat-HG1AF-79JQBi-6LhPC6-79JQ8r"
                                }
                              ],
                              "url": "https://seatgeek.com/rangers-at-mariners-tickets/5-29-2019-seattle-washington-t-mobile-park/mlb/4609157",
                              "created_at": "2018-10-30T16:13:56",
                              "popularity": 0.773,
                              "venue": {
                                "links": [],
                                "metro_code": 819,
                                "postal_code": "98134",
                                "timezone": "America/Los_Angeles",
                                "has_upcoming_events": true,
                                "id": 13,
                                "city": "Seattle",
                                "extended_address": "Seattle, WA 98134",
                                "display_location": "Seattle, WA",
                                "state": "WA",
                                "score": 0.7635878,
                                "location": {
                                  "lat": 47.5914,
                                  "lon": -122.333
                                },
                                "access_method": {
                                  "employee_only": false,
                                  "created_at": "2015-06-21T00:00:00Z",
                                  "method": "QRCODE_TM"
                                },
                                "num_upcoming_events": 58,
                                "address": "1250 First Avenue",
                                "capacity": 47116,
                                "slug": "t-mobile-park",
                                "name": "T-Mobile Park",
                                "url": "https://seatgeek.com/venues/t-mobile-park/tickets",
                                "country": "US",
                                "popularity": 0,
                                "name_v2": "T-Mobile Park"
                              },
                              "enddatetime_utc": null,
                              "short_title": "Rangers at Mariners",
                              "datetime_utc": "2019-05-29T19:40:00",
                              "datetime_tbd": false
                            },
                            {
                              "links": [],
                              "event_promotion": null,
                              "conditional": false,
                              "is_open": false,
                              "id": 4609363,
                              "stats": {
                                "visible_listing_count": 301,
                                "dq_bucket_counts": [
                                  28,
                                  78,
                                  70,
                                  35,
                                  34,
                                  43,
                                  42,
                                  0
                                ],
                                "average_price": 37,
                                "lowest_price_good_deals": 8,
                                "median_price": 27,
                                "listing_count": 324,
                                "lowest_price": 8,
                                "highest_price": 378
                              },
                              "title": "Kansas City Royals at Texas Rangers",
                              "announce_date": "2018-10-30T00:00:00",
                              "score": 0.709,
                              "access_method": {
                                "employee_only": false,
                                "created_at": "2015-07-06T00:00:00Z",
                                "method": "PDF417"
                              },
                              "announcements": {},
                              "taxonomies": [
                                {
                                  "name": "sports",
                                  "parent_id": null,
                                  "id": 1000000
                                },
                                {
                                  "name": "baseball",
                                  "parent_id": 1000000,
                                  "id": 1010000
                                },
                                {
                                  "name": "mlb",
                                  "parent_id": 1010000,
                                  "id": 1010100
                                }
                              ],
                              "type": "mlb",
                              "status": "normal",
                              "description": "",
                              "datetime_local": "2019-05-30T19:05:00",
                              "visible_until_utc": "2019-05-31T04:05:00",
                              "time_tbd": false,
                              "date_tbd": false,
                              "performers": [
                                {
                                  "image": "https://seatgeek.com/images/performers-landscape/kansas-city-royals-56f3f6/5/huge.jpg",
                                  "colors": {
                                    "all": [
                                      "#004687",
                                      "#BD9B60"
                                    ],
                                    "iconic": "#004687",
                                    "primary": [
                                      "#004687",
                                      "#BD9B60"
                                    ]
                                  },
                                  "images": {
                                    "huge": "https://seatgeek.com/images/performers-landscape/kansas-city-royals-56f3f6/5/huge.jpg"
                                  },
                                  "has_upcoming_events": true,
                                  "id": 5,
                                  "away_team": true,
                                  "stats": {
                                    "event_count": 118
                                  },
                                  "image_license": "https://creativecommons.org/licenses/by/2.0/",
                                  "score": 0.7,
                                  "location": {
                                    "lat": 39.0509,
                                    "lon": -94.4809
                                  },
                                  "taxonomies": [
                                    {
                                      "name": "sports",
                                      "parent_id": null,
                                      "id": 1000000,
                                      "document_source": {
                                        "source_type": "ELASTIC",
                                        "generation_type": "FULL"
                                      }
                                    },
                                    {
                                      "name": "baseball",
                                      "parent_id": 1000000,
                                      "id": 1010000,
                                      "document_source": {
                                        "source_type": "ELASTIC",
                                        "generation_type": "FULL"
                                      }
                                    },
                                    {
                                      "name": "mlb",
                                      "parent_id": 1010000,
                                      "id": 1010100,
                                      "document_source": {
                                        "source_type": "ELASTIC",
                                        "generation_type": "FULL"
                                      }
                                    }
                                  ],
                                  "type": "mlb",
                                  "num_upcoming_events": 118,
                                  "short_name": "Royals",
                                  "home_venue_id": 3714,
                                  "slug": "kansas-city-royals",
                                  "divisions": [
                                    {
                                      "display_name": "American League",
                                      "short_name": null,
                                      "division_level": 1,
                                      "display_type": "League",
                                      "taxonomy_id": 1010100,
                                      "slug": null
                                    },
                                    {
                                      "display_name": "American League Central",
                                      "short_name": "AL Central",
                                      "division_level": 2,
                                      "display_type": "Division",
                                      "taxonomy_id": 1010100,
                                      "slug": "american-league-central"
                                    }
                                  ],
                                  "name": "Kansas City Royals",
                                  "url": "https://seatgeek.com/kansas-city-royals-tickets",
                                  "popularity": 0,
                                  "image_attribution": "https://www.flickr.com/photos/bryce_edwards/7828767764/in/photolist-cVNtUy-9MgjsL-9MhfQf-c3rLRs-c3sBbq-c3snfJ-c3sd19-c3scxf-c3s4tu-c3ryVs-c3syJj-c3s7KC-c3rYgh-c3rRsN-c3rZ8N-c3rXXC-c3sn1m-c3rBXC-c3rN27-c3rziC-c3rJmE-c3rvn7-c3rWs1-c3szjG-c3rJVd-c3sr2s-c3rWKh-c3sbFJ-c3sFSh-c3sgLd-c3s2UY-c3rG4d-c3ryAj-c3smHQ-c3s7sS-c3rX2Q-c3sCKq-c3rURY-c3rwo5-c3sfhN-c3si93-c3shP9-c3sfSN-c3sipm-c3sg9U-c3seXA-c3seEd-c3shhs-c3sfzb-9LHr46"
                                },
                                {
                                  "image": "https://seatgeek.com/images/performers-landscape/texas-rangers-0b3f80/16/huge.jpg",
                                  "primary": true,
                                  "colors": {
                                    "all": [
                                      "#0038A8",
                                      "#C0111F"
                                    ],
                                    "iconic": "#C0111F",
                                    "primary": [
                                      "#0038A8",
                                      "#C0111F"
                                    ]
                                  },
                                  "images": {
                                    "huge": "https://seatgeek.com/images/performers-landscape/texas-rangers-0b3f80/16/huge.jpg"
                                  },
                                  "has_upcoming_events": true,
                                  "id": 16,
                                  "stats": {
                                    "event_count": 121
                                  },
                                  "image_license": "https://creativecommons.org/licenses/by-sa/2.0/",
                                  "score": 0.73,
                                  "location": {
                                    "lat": 32.7506,
                                    "lon": -97.0824
                                  },
                                  "taxonomies": [
                                    {
                                      "name": "sports",
                                      "parent_id": null,
                                      "id": 1000000,
                                      "document_source": {
                                        "source_type": "ELASTIC",
                                        "generation_type": "FULL"
                                      }
                                    },
                                    {
                                      "name": "baseball",
                                      "parent_id": 1000000,
                                      "id": 1010000,
                                      "document_source": {
                                        "source_type": "ELASTIC",
                                        "generation_type": "FULL"
                                      }
                                    },
                                    {
                                      "name": "mlb",
                                      "parent_id": 1010000,
                                      "id": 1010100,
                                      "document_source": {
                                        "source_type": "ELASTIC",
                                        "generation_type": "FULL"
                                      }
                                    }
                                  ],
                                  "type": "mlb",
                                  "num_upcoming_events": 121,
                                  "short_name": "Rangers",
                                  "home_venue_id": 16,
                                  "slug": "texas-rangers",
                                  "divisions": [
                                    {
                                      "display_name": "American League",
                                      "short_name": null,
                                      "division_level": 1,
                                      "display_type": "League",
                                      "taxonomy_id": 1010100,
                                      "slug": null
                                    },
                                    {
                                      "display_name": "American League West",
                                      "short_name": "AL West",
                                      "division_level": 2,
                                      "display_type": "Division",
                                      "taxonomy_id": 1010100,
                                      "slug": "american-league-west"
                                    }
                                  ],
                                  "home_team": true,
                                  "name": "Texas Rangers",
                                  "url": "https://seatgeek.com/texas-rangers-tickets",
                                  "popularity": 0,
                                  "image_attribution": "https://www.flickr.com/photos/a4gpa/4591377118/in/photolist-HG1Ar-6G8DGT-6rWf5N-4anGGm-4aiDfH-4anHc1-7ZJ1ss-aqx6nD-aqx3EV-aqzEFA-6G8FCc-aqwYWz-aqzFwq-4anGc7-4aiFUF-4anFM7-aqx2ev-aqzGLy-aqx1Ln-aqzJn7-aqzNg1-6G8EXn-aqx2Xr-8QpUwa-aqx5SK-aqzKS7-aqx53z-aqx1vB-79NEXJ-79JPMZ-aqzHxo-aqx3oH-aqx4wp-aqzGrG-9wjMuE-6LfAWV-6LkckC-6Lnoe1-6LfZbF-6LkiqL-5c1QZw-5c1SmU-5bWBXF-5c1TqQ-5c1VPq-6Lihat-HG1AF-79JQBi-6LhPC6-79JQ8r"
                                }
                              ],
                              "url": "https://seatgeek.com/royals-at-rangers-tickets/5-30-2019-arlington-texas-globe-life-park/mlb/4609363",
                              "created_at": "2018-10-30T16:14:29",
                              "popularity": 0.763,
                              "venue": {
                                "links": [],
                                "metro_code": 623,
                                "postal_code": "76011",
                                "timezone": "America/Chicago",
                                "has_upcoming_events": true,
                                "id": 16,
                                "city": "Arlington",
                                "extended_address": "Arlington, TX 76011",
                                "display_location": "Arlington, TX",
                                "state": "TX",
                                "score": 0.84144884,
                                "location": {
                                  "lat": 32.7506,
                                  "lon": -97.0824
                                },
                                "access_method": {
                                  "employee_only": false,
                                  "created_at": "2015-07-06T00:00:00Z",
                                  "method": "PDF417"
                                },
                                "num_upcoming_events": 66,
                                "address": "1000 Ballpark Way",
                                "capacity": 49115,
                                "slug": "globe-life-park",
                                "name": "Globe Life Park",
                                "url": "https://seatgeek.com/venues/globe-life-park/tickets",
                                "country": "US",
                                "popularity": 0,
                                "name_v2": "Globe Life Park"
                              },
                              "enddatetime_utc": null,
                              "short_title": "Royals at Rangers",
                              "datetime_utc": "2019-05-31T00:05:00",
                              "datetime_tbd": false
                            },
                            {
                              "links": [],
                              "event_promotion": null,
                              "conditional": false,
                              "is_open": false,
                              "id": 4623165,
                              "stats": {
                                "visible_listing_count": 193,
                                "dq_bucket_counts": [
                                  25,
                                  50,
                                  44,
                                  28,
                                  15,
                                  35,
                                  27,
                                  0
                                ],
                                "average_price": 76,
                                "lowest_price_good_deals": 23,
                                "median_price": 72,
                                "listing_count": 220,
                                "lowest_price": 23,
                                "highest_price": 223
                              },
                              "title": "Kansas City Royals at Texas Rangers",
                              "announce_date": "2018-11-07T00:00:00",
                              "score": 0.742,
                              "access_method": {
                                "employee_only": false,
                                "created_at": "2015-07-06T00:00:00Z",
                                "method": "PDF417"
                              },
                              "announcements": {},
                              "taxonomies": [
                                {
                                  "name": "sports",
                                  "parent_id": null,
                                  "id": 1000000
                                },
                                {
                                  "name": "baseball",
                                  "parent_id": 1000000,
                                  "id": 1010000
                                },
                                {
                                  "name": "mlb",
                                  "parent_id": 1010000,
                                  "id": 1010100
                                }
                              ],
                              "type": "mlb",
                              "status": "normal",
                              "description": "",
                              "datetime_local": "2019-05-31T19:05:00",
                              "visible_until_utc": "2019-06-01T04:05:00",
                              "time_tbd": false,
                              "date_tbd": false,
                              "performers": [
                                {
                                  "image": "https://seatgeek.com/images/performers-landscape/kansas-city-royals-56f3f6/5/huge.jpg",
                                  "colors": {
                                    "all": [
                                      "#004687",
                                      "#BD9B60"
                                    ],
                                    "iconic": "#004687",
                                    "primary": [
                                      "#004687",
                                      "#BD9B60"
                                    ]
                                  },
                                  "images": {
                                    "huge": "https://seatgeek.com/images/performers-landscape/kansas-city-royals-56f3f6/5/huge.jpg"
                                  },
                                  "has_upcoming_events": true,
                                  "id": 5,
                                  "away_team": true,
                                  "stats": {
                                    "event_count": 118
                                  },
                                  "image_license": "https://creativecommons.org/licenses/by/2.0/",
                                  "score": 0.7,
                                  "location": {
                                    "lat": 39.0509,
                                    "lon": -94.4809
                                  },
                                  "taxonomies": [
                                    {
                                      "name": "sports",
                                      "parent_id": null,
                                      "id": 1000000,
                                      "document_source": {
                                        "source_type": "ELASTIC",
                                        "generation_type": "FULL"
                                      }
                                    },
                                    {
                                      "name": "baseball",
                                      "parent_id": 1000000,
                                      "id": 1010000,
                                      "document_source": {
                                        "source_type": "ELASTIC",
                                        "generation_type": "FULL"
                                      }
                                    },
                                    {
                                      "name": "mlb",
                                      "parent_id": 1010000,
                                      "id": 1010100,
                                      "document_source": {
                                        "source_type": "ELASTIC",
                                        "generation_type": "FULL"
                                      }
                                    }
                                  ],
                                  "type": "mlb",
                                  "num_upcoming_events": 118,
                                  "short_name": "Royals",
                                  "home_venue_id": 3714,
                                  "slug": "kansas-city-royals",
                                  "divisions": [
                                    {
                                      "display_name": "American League",
                                      "short_name": null,
                                      "division_level": 1,
                                      "display_type": "League",
                                      "taxonomy_id": 1010100,
                                      "slug": null
                                    },
                                    {
                                      "display_name": "American League Central",
                                      "short_name": "AL Central",
                                      "division_level": 2,
                                      "display_type": "Division",
                                      "taxonomy_id": 1010100,
                                      "slug": "american-league-central"
                                    }
                                  ],
                                  "name": "Kansas City Royals",
                                  "url": "https://seatgeek.com/kansas-city-royals-tickets",
                                  "popularity": 0,
                                  "image_attribution": "https://www.flickr.com/photos/bryce_edwards/7828767764/in/photolist-cVNtUy-9MgjsL-9MhfQf-c3rLRs-c3sBbq-c3snfJ-c3sd19-c3scxf-c3s4tu-c3ryVs-c3syJj-c3s7KC-c3rYgh-c3rRsN-c3rZ8N-c3rXXC-c3sn1m-c3rBXC-c3rN27-c3rziC-c3rJmE-c3rvn7-c3rWs1-c3szjG-c3rJVd-c3sr2s-c3rWKh-c3sbFJ-c3sFSh-c3sgLd-c3s2UY-c3rG4d-c3ryAj-c3smHQ-c3s7sS-c3rX2Q-c3sCKq-c3rURY-c3rwo5-c3sfhN-c3si93-c3shP9-c3sfSN-c3sipm-c3sg9U-c3seXA-c3seEd-c3shhs-c3sfzb-9LHr46"
                                },
                                {
                                  "image": "https://seatgeek.com/images/performers-landscape/texas-rangers-0b3f80/16/huge.jpg",
                                  "primary": true,
                                  "colors": {
                                    "all": [
                                      "#0038A8",
                                      "#C0111F"
                                    ],
                                    "iconic": "#C0111F",
                                    "primary": [
                                      "#0038A8",
                                      "#C0111F"
                                    ]
                                  },
                                  "images": {
                                    "huge": "https://seatgeek.com/images/performers-landscape/texas-rangers-0b3f80/16/huge.jpg"
                                  },
                                  "has_upcoming_events": true,
                                  "id": 16,
                                  "stats": {
                                    "event_count": 121
                                  },
                                  "image_license": "https://creativecommons.org/licenses/by-sa/2.0/",
                                  "score": 0.73,
                                  "location": {
                                    "lat": 32.7506,
                                    "lon": -97.0824
                                  },
                                  "taxonomies": [
                                    {
                                      "name": "sports",
                                      "parent_id": null,
                                      "id": 1000000,
                                      "document_source": {
                                        "source_type": "ELASTIC",
                                        "generation_type": "FULL"
                                      }
                                    },
                                    {
                                      "name": "baseball",
                                      "parent_id": 1000000,
                                      "id": 1010000,
                                      "document_source": {
                                        "source_type": "ELASTIC",
                                        "generation_type": "FULL"
                                      }
                                    },
                                    {
                                      "name": "mlb",
                                      "parent_id": 1010000,
                                      "id": 1010100,
                                      "document_source": {
                                        "source_type": "ELASTIC",
                                        "generation_type": "FULL"
                                      }
                                    }
                                  ],
                                  "type": "mlb",
                                  "num_upcoming_events": 121,
                                  "short_name": "Rangers",
                                  "home_venue_id": 16,
                                  "slug": "texas-rangers",
                                  "divisions": [
                                    {
                                      "display_name": "American League",
                                      "short_name": null,
                                      "division_level": 1,
                                      "display_type": "League",
                                      "taxonomy_id": 1010100,
                                      "slug": null
                                    },
                                    {
                                      "display_name": "American League West",
                                      "short_name": "AL West",
                                      "division_level": 2,
                                      "display_type": "Division",
                                      "taxonomy_id": 1010100,
                                      "slug": "american-league-west"
                                    }
                                  ],
                                  "home_team": true,
                                  "name": "Texas Rangers",
                                  "url": "https://seatgeek.com/texas-rangers-tickets",
                                  "popularity": 0,
                                  "image_attribution": "https://www.flickr.com/photos/a4gpa/4591377118/in/photolist-HG1Ar-6G8DGT-6rWf5N-4anGGm-4aiDfH-4anHc1-7ZJ1ss-aqx6nD-aqx3EV-aqzEFA-6G8FCc-aqwYWz-aqzFwq-4anGc7-4aiFUF-4anFM7-aqx2ev-aqzGLy-aqx1Ln-aqzJn7-aqzNg1-6G8EXn-aqx2Xr-8QpUwa-aqx5SK-aqzKS7-aqx53z-aqx1vB-79NEXJ-79JPMZ-aqzHxo-aqx3oH-aqx4wp-aqzGrG-9wjMuE-6LfAWV-6LkckC-6Lnoe1-6LfZbF-6LkiqL-5c1QZw-5c1SmU-5bWBXF-5c1TqQ-5c1VPq-6Lihat-HG1AF-79JQBi-6LhPC6-79JQ8r"
                                }
                              ],
                              "url": "https://seatgeek.com/royals-at-rangers-tickets/5-31-2019-arlington-texas-globe-life-park/mlb/4623165",
                              "created_at": "2018-11-07T12:55:33",
                              "popularity": 0.783,
                              "venue": {
                                "links": [],
                                "metro_code": 623,
                                "postal_code": "76011",
                                "timezone": "America/Chicago",
                                "has_upcoming_events": true,
                                "id": 16,
                                "city": "Arlington",
                                "extended_address": "Arlington, TX 76011",
                                "display_location": "Arlington, TX",
                                "state": "TX",
                                "score": 0.84144884,
                                "location": {
                                  "lat": 32.7506,
                                  "lon": -97.0824
                                },
                                "access_method": {
                                  "employee_only": false,
                                  "created_at": "2015-07-06T00:00:00Z",
                                  "method": "PDF417"
                                },
                                "num_upcoming_events": 66,
                                "address": "1000 Ballpark Way",
                                "capacity": 49115,
                                "slug": "globe-life-park",
                                "name": "Globe Life Park",
                                "url": "https://seatgeek.com/venues/globe-life-park/tickets",
                                "country": "US",
                                "popularity": 0,
                                "name_v2": "Globe Life Park"
                              },
                              "enddatetime_utc": null,
                              "short_title": "Royals at Rangers",
                              "datetime_utc": "2019-06-01T00:05:00",
                              "datetime_tbd": false
                            },
                            {
                              "links": [],
                              "event_promotion": null,
                              "conditional": false,
                              "is_open": false,
                              "id": 4623164,
                              "stats": {
                                "visible_listing_count": 404,
                                "dq_bucket_counts": [
                                  18,
                                  163,
                                  121,
                                  51,
                                  37,
                                  52,
                                  65,
                                  0
                                ],
                                "average_price": 66,
                                "lowest_price_good_deals": 17,
                                "median_price": 54,
                                "listing_count": 506,
                                "lowest_price": 17,
                                "highest_price": 1222
                              },
                              "title": "Kansas City Royals at Texas Rangers",
                              "announce_date": "2018-11-07T00:00:00",
                              "score": 0.776,
                              "access_method": {
                                "employee_only": false,
                                "created_at": "2015-07-06T00:00:00Z",
                                "method": "PDF417"
                              },
                              "announcements": {},
                              "taxonomies": [
                                {
                                  "name": "sports",
                                  "parent_id": null,
                                  "id": 1000000
                                },
                                {
                                  "name": "baseball",
                                  "parent_id": 1000000,
                                  "id": 1010000
                                },
                                {
                                  "name": "mlb",
                                  "parent_id": 1010000,
                                  "id": 1010100
                                }
                              ],
                              "type": "mlb",
                              "status": "normal",
                              "description": "",
                              "datetime_local": "2019-06-01T15:05:00",
                              "visible_until_utc": "2019-06-02T00:05:00",
                              "time_tbd": false,
                              "date_tbd": false,
                              "performers": [
                                {
                                  "image": "https://seatgeek.com/images/performers-landscape/kansas-city-royals-56f3f6/5/huge.jpg",
                                  "colors": {
                                    "all": [
                                      "#004687",
                                      "#BD9B60"
                                    ],
                                    "iconic": "#004687",
                                    "primary": [
                                      "#004687",
                                      "#BD9B60"
                                    ]
                                  },
                                  "images": {
                                    "huge": "https://seatgeek.com/images/performers-landscape/kansas-city-royals-56f3f6/5/huge.jpg"
                                  },
                                  "has_upcoming_events": true,
                                  "id": 5,
                                  "away_team": true,
                                  "stats": {
                                    "event_count": 118
                                  },
                                  "image_license": "https://creativecommons.org/licenses/by/2.0/",
                                  "score": 0.7,
                                  "location": {
                                    "lat": 39.0509,
                                    "lon": -94.4809
                                  },
                                  "taxonomies": [
                                    {
                                      "name": "sports",
                                      "parent_id": null,
                                      "id": 1000000,
                                      "document_source": {
                                        "source_type": "ELASTIC",
                                        "generation_type": "FULL"
                                      }
                                    },
                                    {
                                      "name": "baseball",
                                      "parent_id": 1000000,
                                      "id": 1010000,
                                      "document_source": {
                                        "source_type": "ELASTIC",
                                        "generation_type": "FULL"
                                      }
                                    },
                                    {
                                      "name": "mlb",
                                      "parent_id": 1010000,
                                      "id": 1010100,
                                      "document_source": {
                                        "source_type": "ELASTIC",
                                        "generation_type": "FULL"
                                      }
                                    }
                                  ],
                                  "type": "mlb",
                                  "num_upcoming_events": 118,
                                  "short_name": "Royals",
                                  "home_venue_id": 3714,
                                  "slug": "kansas-city-royals",
                                  "divisions": [
                                    {
                                      "display_name": "American League",
                                      "short_name": null,
                                      "division_level": 1,
                                      "display_type": "League",
                                      "taxonomy_id": 1010100,
                                      "slug": null
                                    },
                                    {
                                      "display_name": "American League Central",
                                      "short_name": "AL Central",
                                      "division_level": 2,
                                      "display_type": "Division",
                                      "taxonomy_id": 1010100,
                                      "slug": "american-league-central"
                                    }
                                  ],
                                  "name": "Kansas City Royals",
                                  "url": "https://seatgeek.com/kansas-city-royals-tickets",
                                  "popularity": 0,
                                  "image_attribution": "https://www.flickr.com/photos/bryce_edwards/7828767764/in/photolist-cVNtUy-9MgjsL-9MhfQf-c3rLRs-c3sBbq-c3snfJ-c3sd19-c3scxf-c3s4tu-c3ryVs-c3syJj-c3s7KC-c3rYgh-c3rRsN-c3rZ8N-c3rXXC-c3sn1m-c3rBXC-c3rN27-c3rziC-c3rJmE-c3rvn7-c3rWs1-c3szjG-c3rJVd-c3sr2s-c3rWKh-c3sbFJ-c3sFSh-c3sgLd-c3s2UY-c3rG4d-c3ryAj-c3smHQ-c3s7sS-c3rX2Q-c3sCKq-c3rURY-c3rwo5-c3sfhN-c3si93-c3shP9-c3sfSN-c3sipm-c3sg9U-c3seXA-c3seEd-c3shhs-c3sfzb-9LHr46"
                                },
                                {
                                  "image": "https://seatgeek.com/images/performers-landscape/texas-rangers-0b3f80/16/huge.jpg",
                                  "primary": true,
                                  "colors": {
                                    "all": [
                                      "#0038A8",
                                      "#C0111F"
                                    ],
                                    "iconic": "#C0111F",
                                    "primary": [
                                      "#0038A8",
                                      "#C0111F"
                                    ]
                                  },
                                  "images": {
                                    "huge": "https://seatgeek.com/images/performers-landscape/texas-rangers-0b3f80/16/huge.jpg"
                                  },
                                  "has_upcoming_events": true,
                                  "id": 16,
                                  "stats": {
                                    "event_count": 121
                                  },
                                  "image_license": "https://creativecommons.org/licenses/by-sa/2.0/",
                                  "score": 0.73,
                                  "location": {
                                    "lat": 32.7506,
                                    "lon": -97.0824
                                  },
                                  "taxonomies": [
                                    {
                                      "name": "sports",
                                      "parent_id": null,
                                      "id": 1000000,
                                      "document_source": {
                                        "source_type": "ELASTIC",
                                        "generation_type": "FULL"
                                      }
                                    },
                                    {
                                      "name": "baseball",
                                      "parent_id": 1000000,
                                      "id": 1010000,
                                      "document_source": {
                                        "source_type": "ELASTIC",
                                        "generation_type": "FULL"
                                      }
                                    },
                                    {
                                      "name": "mlb",
                                      "parent_id": 1010000,
                                      "id": 1010100,
                                      "document_source": {
                                        "source_type": "ELASTIC",
                                        "generation_type": "FULL"
                                      }
                                    }
                                  ],
                                  "type": "mlb",
                                  "num_upcoming_events": 121,
                                  "short_name": "Rangers",
                                  "home_venue_id": 16,
                                  "slug": "texas-rangers",
                                  "divisions": [
                                    {
                                      "display_name": "American League",
                                      "short_name": null,
                                      "division_level": 1,
                                      "display_type": "League",
                                      "taxonomy_id": 1010100,
                                      "slug": null
                                    },
                                    {
                                      "display_name": "American League West",
                                      "short_name": "AL West",
                                      "division_level": 2,
                                      "display_type": "Division",
                                      "taxonomy_id": 1010100,
                                      "slug": "american-league-west"
                                    }
                                  ],
                                  "home_team": true,
                                  "name": "Texas Rangers",
                                  "url": "https://seatgeek.com/texas-rangers-tickets",
                                  "popularity": 0,
                                  "image_attribution": "https://www.flickr.com/photos/a4gpa/4591377118/in/photolist-HG1Ar-6G8DGT-6rWf5N-4anGGm-4aiDfH-4anHc1-7ZJ1ss-aqx6nD-aqx3EV-aqzEFA-6G8FCc-aqwYWz-aqzFwq-4anGc7-4aiFUF-4anFM7-aqx2ev-aqzGLy-aqx1Ln-aqzJn7-aqzNg1-6G8EXn-aqx2Xr-8QpUwa-aqx5SK-aqzKS7-aqx53z-aqx1vB-79NEXJ-79JPMZ-aqzHxo-aqx3oH-aqx4wp-aqzGrG-9wjMuE-6LfAWV-6LkckC-6Lnoe1-6LfZbF-6LkiqL-5c1QZw-5c1SmU-5bWBXF-5c1TqQ-5c1VPq-6Lihat-HG1AF-79JQBi-6LhPC6-79JQ8r"
                                }
                              ],
                              "url": "https://seatgeek.com/royals-at-rangers-tickets/6-1-2019-arlington-texas-globe-life-park/mlb/4623164",
                              "created_at": "2018-11-07T12:55:33",
                              "popularity": 0.81,
                              "venue": {
                                "links": [],
                                "metro_code": 623,
                                "postal_code": "76011",
                                "timezone": "America/Chicago",
                                "has_upcoming_events": true,
                                "id": 16,
                                "city": "Arlington",
                                "extended_address": "Arlington, TX 76011",
                                "display_location": "Arlington, TX",
                                "state": "TX",
                                "score": 0.84144884,
                                "location": {
                                  "lat": 32.7506,
                                  "lon": -97.0824
                                },
                                "access_method": {
                                  "employee_only": false,
                                  "created_at": "2015-07-06T00:00:00Z",
                                  "method": "PDF417"
                                },
                                "num_upcoming_events": 66,
                                "address": "1000 Ballpark Way",
                                "capacity": 49115,
                                "slug": "globe-life-park",
                                "name": "Globe Life Park",
                                "url": "https://seatgeek.com/venues/globe-life-park/tickets",
                                "country": "US",
                                "popularity": 0,
                                "name_v2": "Globe Life Park"
                              },
                              "enddatetime_utc": null,
                              "short_title": "Royals at Rangers",
                              "datetime_utc": "2019-06-01T20:05:00",
                              "datetime_tbd": false
                            },
                            {
                              "links": [],
                              "event_promotion": null,
                              "conditional": false,
                              "is_open": false,
                              "id": 4609362,
                              "stats": {
                                "visible_listing_count": 469,
                                "dq_bucket_counts": [
                                  53,
                                  179,
                                  105,
                                  59,
                                  42,
                                  66,
                                  99,
                                  0
                                ],
                                "average_price": 40,
                                "lowest_price_good_deals": 9,
                                "median_price": 33,
                                "listing_count": 605,
                                "lowest_price": 9,
                                "highest_price": 273
                              },
                              "title": "Kansas City Royals at Texas Rangers",
                              "announce_date": "2018-10-30T00:00:00",
                              "score": 0.75,
                              "access_method": {
                                "employee_only": false,
                                "created_at": "2015-07-06T00:00:00Z",
                                "method": "PDF417"
                              },
                              "announcements": {},
                              "taxonomies": [
                                {
                                  "name": "sports",
                                  "parent_id": null,
                                  "id": 1000000
                                },
                                {
                                  "name": "baseball",
                                  "parent_id": 1000000,
                                  "id": 1010000
                                },
                                {
                                  "name": "mlb",
                                  "parent_id": 1010000,
                                  "id": 1010100
                                }
                              ],
                              "type": "mlb",
                              "status": "normal",
                              "description": "",
                              "datetime_local": "2019-06-02T14:05:00",
                              "visible_until_utc": "2019-06-02T23:05:00",
                              "time_tbd": false,
                              "date_tbd": false,
                              "performers": [
                                {
                                  "image": "https://seatgeek.com/images/performers-landscape/kansas-city-royals-56f3f6/5/huge.jpg",
                                  "colors": {
                                    "all": [
                                      "#004687",
                                      "#BD9B60"
                                    ],
                                    "iconic": "#004687",
                                    "primary": [
                                      "#004687",
                                      "#BD9B60"
                                    ]
                                  },
                                  "images": {
                                    "huge": "https://seatgeek.com/images/performers-landscape/kansas-city-royals-56f3f6/5/huge.jpg"
                                  },
                                  "has_upcoming_events": true,
                                  "id": 5,
                                  "away_team": true,
                                  "stats": {
                                    "event_count": 118
                                  },
                                  "image_license": "https://creativecommons.org/licenses/by/2.0/",
                                  "score": 0.7,
                                  "location": {
                                    "lat": 39.0509,
                                    "lon": -94.4809
                                  },
                                  "taxonomies": [
                                    {
                                      "name": "sports",
                                      "parent_id": null,
                                      "id": 1000000,
                                      "document_source": {
                                        "source_type": "ELASTIC",
                                        "generation_type": "FULL"
                                      }
                                    },
                                    {
                                      "name": "baseball",
                                      "parent_id": 1000000,
                                      "id": 1010000,
                                      "document_source": {
                                        "source_type": "ELASTIC",
                                        "generation_type": "FULL"
                                      }
                                    },
                                    {
                                      "name": "mlb",
                                      "parent_id": 1010000,
                                      "id": 1010100,
                                      "document_source": {
                                        "source_type": "ELASTIC",
                                        "generation_type": "FULL"
                                      }
                                    }
                                  ],
                                  "type": "mlb",
                                  "num_upcoming_events": 118,
                                  "short_name": "Royals",
                                  "home_venue_id": 3714,
                                  "slug": "kansas-city-royals",
                                  "divisions": [
                                    {
                                      "display_name": "American League",
                                      "short_name": null,
                                      "division_level": 1,
                                      "display_type": "League",
                                      "taxonomy_id": 1010100,
                                      "slug": null
                                    },
                                    {
                                      "display_name": "American League Central",
                                      "short_name": "AL Central",
                                      "division_level": 2,
                                      "display_type": "Division",
                                      "taxonomy_id": 1010100,
                                      "slug": "american-league-central"
                                    }
                                  ],
                                  "name": "Kansas City Royals",
                                  "url": "https://seatgeek.com/kansas-city-royals-tickets",
                                  "popularity": 0,
                                  "image_attribution": "https://www.flickr.com/photos/bryce_edwards/7828767764/in/photolist-cVNtUy-9MgjsL-9MhfQf-c3rLRs-c3sBbq-c3snfJ-c3sd19-c3scxf-c3s4tu-c3ryVs-c3syJj-c3s7KC-c3rYgh-c3rRsN-c3rZ8N-c3rXXC-c3sn1m-c3rBXC-c3rN27-c3rziC-c3rJmE-c3rvn7-c3rWs1-c3szjG-c3rJVd-c3sr2s-c3rWKh-c3sbFJ-c3sFSh-c3sgLd-c3s2UY-c3rG4d-c3ryAj-c3smHQ-c3s7sS-c3rX2Q-c3sCKq-c3rURY-c3rwo5-c3sfhN-c3si93-c3shP9-c3sfSN-c3sipm-c3sg9U-c3seXA-c3seEd-c3shhs-c3sfzb-9LHr46"
                                },
                                {
                                  "image": "https://seatgeek.com/images/performers-landscape/texas-rangers-0b3f80/16/huge.jpg",
                                  "primary": true,
                                  "colors": {
                                    "all": [
                                      "#0038A8",
                                      "#C0111F"
                                    ],
                                    "iconic": "#C0111F",
                                    "primary": [
                                      "#0038A8",
                                      "#C0111F"
                                    ]
                                  },
                                  "images": {
                                    "huge": "https://seatgeek.com/images/performers-landscape/texas-rangers-0b3f80/16/huge.jpg"
                                  },
                                  "has_upcoming_events": true,
                                  "id": 16,
                                  "stats": {
                                    "event_count": 121
                                  },
                                  "image_license": "https://creativecommons.org/licenses/by-sa/2.0/",
                                  "score": 0.73,
                                  "location": {
                                    "lat": 32.7506,
                                    "lon": -97.0824
                                  },
                                  "taxonomies": [
                                    {
                                      "name": "sports",
                                      "parent_id": null,
                                      "id": 1000000,
                                      "document_source": {
                                        "source_type": "ELASTIC",
                                        "generation_type": "FULL"
                                      }
                                    },
                                    {
                                      "name": "baseball",
                                      "parent_id": 1000000,
                                      "id": 1010000,
                                      "document_source": {
                                        "source_type": "ELASTIC",
                                        "generation_type": "FULL"
                                      }
                                    },
                                    {
                                      "name": "mlb",
                                      "parent_id": 1010000,
                                      "id": 1010100,
                                      "document_source": {
                                        "source_type": "ELASTIC",
                                        "generation_type": "FULL"
                                      }
                                    }
                                  ],
                                  "type": "mlb",
                                  "num_upcoming_events": 121,
                                  "short_name": "Rangers",
                                  "home_venue_id": 16,
                                  "slug": "texas-rangers",
                                  "divisions": [
                                    {
                                      "display_name": "American League",
                                      "short_name": null,
                                      "division_level": 1,
                                      "display_type": "League",
                                      "taxonomy_id": 1010100,
                                      "slug": null
                                    },
                                    {
                                      "display_name": "American League West",
                                      "short_name": "AL West",
                                      "division_level": 2,
                                      "display_type": "Division",
                                      "taxonomy_id": 1010100,
                                      "slug": "american-league-west"
                                    }
                                  ],
                                  "home_team": true,
                                  "name": "Texas Rangers",
                                  "url": "https://seatgeek.com/texas-rangers-tickets",
                                  "popularity": 0,
                                  "image_attribution": "https://www.flickr.com/photos/a4gpa/4591377118/in/photolist-HG1Ar-6G8DGT-6rWf5N-4anGGm-4aiDfH-4anHc1-7ZJ1ss-aqx6nD-aqx3EV-aqzEFA-6G8FCc-aqwYWz-aqzFwq-4anGc7-4aiFUF-4anFM7-aqx2ev-aqzGLy-aqx1Ln-aqzJn7-aqzNg1-6G8EXn-aqx2Xr-8QpUwa-aqx5SK-aqzKS7-aqx53z-aqx1vB-79NEXJ-79JPMZ-aqzHxo-aqx3oH-aqx4wp-aqzGrG-9wjMuE-6LfAWV-6LkckC-6Lnoe1-6LfZbF-6LkiqL-5c1QZw-5c1SmU-5bWBXF-5c1TqQ-5c1VPq-6Lihat-HG1AF-79JQBi-6LhPC6-79JQ8r"
                                }
                              ],
                              "url": "https://seatgeek.com/royals-at-rangers-tickets/6-2-2019-arlington-texas-globe-life-park/mlb/4609362",
                              "created_at": "2018-10-30T16:14:29",
                              "popularity": 0.787,
                              "venue": {
                                "links": [],
                                "metro_code": 623,
                                "postal_code": "76011",
                                "timezone": "America/Chicago",
                                "has_upcoming_events": true,
                                "id": 16,
                                "city": "Arlington",
                                "extended_address": "Arlington, TX 76011",
                                "display_location": "Arlington, TX",
                                "state": "TX",
                                "score": 0.84144884,
                                "location": {
                                  "lat": 32.7506,
                                  "lon": -97.0824
                                },
                                "access_method": {
                                  "employee_only": false,
                                  "created_at": "2015-07-06T00:00:00Z",
                                  "method": "PDF417"
                                },
                                "num_upcoming_events": 66,
                                "address": "1000 Ballpark Way",
                                "capacity": 49115,
                                "slug": "globe-life-park",
                                "name": "Globe Life Park",
                                "url": "https://seatgeek.com/venues/globe-life-park/tickets",
                                "country": "US",
                                "popularity": 0,
                                "name_v2": "Globe Life Park"
                              },
                              "enddatetime_utc": null,
                              "short_title": "Royals at Rangers",
                              "datetime_utc": "2019-06-02T19:05:00",
                              "datetime_tbd": false
                            },
                            {
                              "links": [],
                              "event_promotion": null,
                              "conditional": false,
                              "is_open": false,
                              "id": 4609361,
                              "stats": {
                                "visible_listing_count": 414,
                                "dq_bucket_counts": [
                                  44,
                                  92,
                                  87,
                                  20,
                                  28,
                                  58,
                                  65,
                                  0
                                ],
                                "average_price": 37,
                                "lowest_price_good_deals": 12,
                                "median_price": 31,
                                "listing_count": 520,
                                "lowest_price": 12,
                                "highest_price": 206
                              },
                              "title": "Baltimore Orioles at Texas Rangers",
                              "announce_date": "2018-10-30T00:00:00",
                              "score": 0.711,
                              "access_method": {
                                "employee_only": false,
                                "created_at": "2015-07-06T00:00:00Z",
                                "method": "PDF417"
                              },
                              "announcements": {},
                              "taxonomies": [
                                {
                                  "name": "sports",
                                  "parent_id": null,
                                  "id": 1000000
                                },
                                {
                                  "name": "baseball",
                                  "parent_id": 1000000,
                                  "id": 1010000
                                },
                                {
                                  "name": "mlb",
                                  "parent_id": 1010000,
                                  "id": 1010100
                                }
                              ],
                              "type": "mlb",
                              "status": "normal",
                              "description": "",
                              "datetime_local": "2019-06-04T19:05:00",
                              "visible_until_utc": "2019-06-05T04:05:00",
                              "time_tbd": false,
                              "date_tbd": false,
                              "performers": [
                                {
                                  "image": "https://seatgeek.com/images/performers-landscape/texas-rangers-0b3f80/16/huge.jpg",
                                  "primary": true,
                                  "colors": {
                                    "all": [
                                      "#0038A8",
                                      "#C0111F"
                                    ],
                                    "iconic": "#C0111F",
                                    "primary": [
                                      "#0038A8",
                                      "#C0111F"
                                    ]
                                  },
                                  "images": {
                                    "huge": "https://seatgeek.com/images/performers-landscape/texas-rangers-0b3f80/16/huge.jpg"
                                  },
                                  "has_upcoming_events": true,
                                  "id": 16,
                                  "stats": {
                                    "event_count": 121
                                  },
                                  "image_license": "https://creativecommons.org/licenses/by-sa/2.0/",
                                  "score": 0.73,
                                  "location": {
                                    "lat": 32.7506,
                                    "lon": -97.0824
                                  },
                                  "taxonomies": [
                                    {
                                      "name": "sports",
                                      "parent_id": null,
                                      "id": 1000000,
                                      "document_source": {
                                        "source_type": "ELASTIC",
                                        "generation_type": "FULL"
                                      }
                                    },
                                    {
                                      "name": "baseball",
                                      "parent_id": 1000000,
                                      "id": 1010000,
                                      "document_source": {
                                        "source_type": "ELASTIC",
                                        "generation_type": "FULL"
                                      }
                                    },
                                    {
                                      "name": "mlb",
                                      "parent_id": 1010000,
                                      "id": 1010100,
                                      "document_source": {
                                        "source_type": "ELASTIC",
                                        "generation_type": "FULL"
                                      }
                                    }
                                  ],
                                  "type": "mlb",
                                  "num_upcoming_events": 121,
                                  "short_name": "Rangers",
                                  "home_venue_id": 16,
                                  "slug": "texas-rangers",
                                  "divisions": [
                                    {
                                      "display_name": "American League",
                                      "short_name": null,
                                      "division_level": 1,
                                      "display_type": "League",
                                      "taxonomy_id": 1010100,
                                      "slug": null
                                    },
                                    {
                                      "display_name": "American League West",
                                      "short_name": "AL West",
                                      "division_level": 2,
                                      "display_type": "Division",
                                      "taxonomy_id": 1010100,
                                      "slug": "american-league-west"
                                    }
                                  ],
                                  "home_team": true,
                                  "name": "Texas Rangers",
                                  "url": "https://seatgeek.com/texas-rangers-tickets",
                                  "popularity": 0,
                                  "image_attribution": "https://www.flickr.com/photos/a4gpa/4591377118/in/photolist-HG1Ar-6G8DGT-6rWf5N-4anGGm-4aiDfH-4anHc1-7ZJ1ss-aqx6nD-aqx3EV-aqzEFA-6G8FCc-aqwYWz-aqzFwq-4anGc7-4aiFUF-4anFM7-aqx2ev-aqzGLy-aqx1Ln-aqzJn7-aqzNg1-6G8EXn-aqx2Xr-8QpUwa-aqx5SK-aqzKS7-aqx53z-aqx1vB-79NEXJ-79JPMZ-aqzHxo-aqx3oH-aqx4wp-aqzGrG-9wjMuE-6LfAWV-6LkckC-6Lnoe1-6LfZbF-6LkiqL-5c1QZw-5c1SmU-5bWBXF-5c1TqQ-5c1VPq-6Lihat-HG1AF-79JQBi-6LhPC6-79JQ8r"
                                },
                                {
                                  "image": "https://seatgeek.com/images/performers-landscape/baltimore-orioles-2f5844/25/huge.jpg",
                                  "colors": {
                                    "all": [
                                      "#191919",
                                      "#DF4601"
                                    ],
                                    "iconic": "#191919",
                                    "primary": [
                                      "#191919",
                                      "#DF4601"
                                    ]
                                  },
                                  "images": {
                                    "huge": "https://seatgeek.com/images/performers-landscape/baltimore-orioles-2f5844/25/huge.jpg"
                                  },
                                  "has_upcoming_events": true,
                                  "id": 25,
                                  "away_team": true,
                                  "stats": {
                                    "event_count": 119
                                  },
                                  "image_license": "https://creativecommons.org/licenses/by-sa/2.0/",
                                  "score": 0.71,
                                  "location": {
                                    "lat": 39.284,
                                    "lon": -76.6199
                                  },
                                  "taxonomies": [
                                    {
                                      "name": "sports",
                                      "parent_id": null,
                                      "id": 1000000,
                                      "document_source": {
                                        "source_type": "ELASTIC",
                                        "generation_type": "FULL"
                                      }
                                    },
                                    {
                                      "name": "baseball",
                                      "parent_id": 1000000,
                                      "id": 1010000,
                                      "document_source": {
                                        "source_type": "ELASTIC",
                                        "generation_type": "FULL"
                                      }
                                    },
                                    {
                                      "name": "mlb",
                                      "parent_id": 1010000,
                                      "id": 1010100,
                                      "document_source": {
                                        "source_type": "ELASTIC",
                                        "generation_type": "FULL"
                                      }
                                    }
                                  ],
                                  "type": "mlb",
                                  "num_upcoming_events": 119,
                                  "short_name": "Orioles",
                                  "home_venue_id": 25,
                                  "slug": "baltimore-orioles",
                                  "divisions": [
                                    {
                                      "display_name": "American League",
                                      "short_name": null,
                                      "division_level": 1,
                                      "display_type": "League",
                                      "taxonomy_id": 1010100,
                                      "slug": null
                                    },
                                    {
                                      "display_name": "American League East",
                                      "short_name": "AL East",
                                      "division_level": 2,
                                      "display_type": "Division",
                                      "taxonomy_id": 1010100,
                                      "slug": "american-league-east"
                                    }
                                  ],
                                  "name": "Baltimore Orioles",
                                  "url": "https://seatgeek.com/baltimore-orioles-tickets",
                                  "popularity": 0,
                                  "image_attribution": "https://www.flickr.com/photos/keithallison/17073853777/in/photolist-s1KXTg-sidpaj-oWwDK8-pjoSxH-s3eLg2-tdgD9s-fwrSpk-fwrNhi-tfBSoF-fwGcpL-f9AnJD-f9uv9F-eWhVb2-fPvFep-fBhDZQ-eWuyZh-pj5i3Z-fohmdU-oYjSwd-cFu4C7-e93Ezf-tiHoPD-cFtWUy-cFtS5h-pfPEnp-fyeoPs-fNydWC-smR84B-nTJfTB-f9uxoD-fBHk6k-onJP89-cFtKbY-t7xpUz-eKiTc3-eJraf7-fQqFQJ-eWmuva-s51Zsh-eAx4AP-t5qLC8-rotVms-fyVy8u-f9KtwC-t5tnyX-eK8S9B-eNMzHA-exbqrB-rLPF1g-cpcnHh"
                                }
                              ],
                              "url": "https://seatgeek.com/orioles-at-rangers-tickets/6-4-2019-arlington-texas-globe-life-park/mlb/4609361",
                              "created_at": "2018-10-30T16:14:29",
                              "popularity": 0.746,
                              "venue": {
                                "links": [],
                                "metro_code": 623,
                                "postal_code": "76011",
                                "timezone": "America/Chicago",
                                "has_upcoming_events": true,
                                "id": 16,
                                "city": "Arlington",
                                "extended_address": "Arlington, TX 76011",
                                "display_location": "Arlington, TX",
                                "state": "TX",
                                "score": 0.84144884,
                                "location": {
                                  "lat": 32.7506,
                                  "lon": -97.0824
                                },
                                "access_method": {
                                  "employee_only": false,
                                  "created_at": "2015-07-06T00:00:00Z",
                                  "method": "PDF417"
                                },
                                "num_upcoming_events": 66,
                                "address": "1000 Ballpark Way",
                                "capacity": 49115,
                                "slug": "globe-life-park",
                                "name": "Globe Life Park",
                                "url": "https://seatgeek.com/venues/globe-life-park/tickets",
                                "country": "US",
                                "popularity": 0,
                                "name_v2": "Globe Life Park"
                              },
                              "enddatetime_utc": null,
                              "short_title": "Orioles at Rangers",
                              "datetime_utc": "2019-06-05T00:05:00",
                              "datetime_tbd": false
                            },
                            {
                              "links": [],
                              "event_promotion": null,
                              "conditional": false,
                              "is_open": false,
                              "id": 4612962,
                              "stats": {
                                "visible_listing_count": 415,
                                "dq_bucket_counts": [
                                  57,
                                  121,
                                  109,
                                  45,
                                  53,
                                  66,
                                  81,
                                  0
                                ],
                                "average_price": 40,
                                "lowest_price_good_deals": 8,
                                "median_price": 33,
                                "listing_count": 528,
                                "lowest_price": 8,
                                "highest_price": 410
                              },
                              "title": "Baltimore Orioles at Texas Rangers",
                              "announce_date": "2018-10-31T00:00:00",
                              "score": 0.682,
                              "access_method": {
                                "employee_only": false,
                                "created_at": "2015-07-06T00:00:00Z",
                                "method": "PDF417"
                              },
                              "announcements": {},
                              "taxonomies": [
                                {
                                  "name": "sports",
                                  "parent_id": null,
                                  "id": 1000000
                                },
                                {
                                  "name": "baseball",
                                  "parent_id": 1000000,
                                  "id": 1010000
                                },
                                {
                                  "name": "mlb",
                                  "parent_id": 1010000,
                                  "id": 1010100
                                }
                              ],
                              "type": "mlb",
                              "status": "normal",
                              "description": "",
                              "datetime_local": "2019-06-05T19:05:00",
                              "visible_until_utc": "2019-06-06T04:05:00",
                              "time_tbd": false,
                              "date_tbd": false,
                              "performers": [
                                {
                                  "image": "https://seatgeek.com/images/performers-landscape/texas-rangers-0b3f80/16/huge.jpg",
                                  "primary": true,
                                  "colors": {
                                    "all": [
                                      "#0038A8",
                                      "#C0111F"
                                    ],
                                    "iconic": "#C0111F",
                                    "primary": [
                                      "#0038A8",
                                      "#C0111F"
                                    ]
                                  },
                                  "images": {
                                    "huge": "https://seatgeek.com/images/performers-landscape/texas-rangers-0b3f80/16/huge.jpg"
                                  },
                                  "has_upcoming_events": true,
                                  "id": 16,
                                  "stats": {
                                    "event_count": 117
                                  },
                                  "image_license": "https://creativecommons.org/licenses/by-sa/2.0/",
                                  "score": 0.73,
                                  "location": {
                                    "lat": 32.7506,
                                    "lon": -97.0824
                                  },
                                  "taxonomies": [
                                    {
                                      "name": "sports",
                                      "parent_id": null,
                                      "id": 1000000,
                                      "document_source": {
                                        "source_type": "ELASTIC",
                                        "generation_type": "FULL"
                                      }
                                    },
                                    {
                                      "name": "baseball",
                                      "parent_id": 1000000,
                                      "id": 1010000,
                                      "document_source": {
                                        "source_type": "ELASTIC",
                                        "generation_type": "FULL"
                                      }
                                    },
                                    {
                                      "name": "mlb",
                                      "parent_id": 1010000,
                                      "id": 1010100,
                                      "document_source": {
                                        "source_type": "ELASTIC",
                                        "generation_type": "FULL"
                                      }
                                    }
                                  ],
                                  "type": "mlb",
                                  "num_upcoming_events": 117,
                                  "short_name": "Rangers",
                                  "home_venue_id": 16,
                                  "slug": "texas-rangers",
                                  "divisions": [
                                    {
                                      "display_name": "American League",
                                      "short_name": null,
                                      "division_level": 1,
                                      "display_type": "League",
                                      "taxonomy_id": 1010100,
                                      "slug": null
                                    },
                                    {
                                      "display_name": "American League West",
                                      "short_name": "AL West",
                                      "division_level": 2,
                                      "display_type": "Division",
                                      "taxonomy_id": 1010100,
                                      "slug": "american-league-west"
                                    }
                                  ],
                                  "home_team": true,
                                  "name": "Texas Rangers",
                                  "url": "https://seatgeek.com/texas-rangers-tickets",
                                  "popularity": 0,
                                  "image_attribution": "https://www.flickr.com/photos/a4gpa/4591377118/in/photolist-HG1Ar-6G8DGT-6rWf5N-4anGGm-4aiDfH-4anHc1-7ZJ1ss-aqx6nD-aqx3EV-aqzEFA-6G8FCc-aqwYWz-aqzFwq-4anGc7-4aiFUF-4anFM7-aqx2ev-aqzGLy-aqx1Ln-aqzJn7-aqzNg1-6G8EXn-aqx2Xr-8QpUwa-aqx5SK-aqzKS7-aqx53z-aqx1vB-79NEXJ-79JPMZ-aqzHxo-aqx3oH-aqx4wp-aqzGrG-9wjMuE-6LfAWV-6LkckC-6Lnoe1-6LfZbF-6LkiqL-5c1QZw-5c1SmU-5bWBXF-5c1TqQ-5c1VPq-6Lihat-HG1AF-79JQBi-6LhPC6-79JQ8r"
                                },
                                {
                                  "image": "https://seatgeek.com/images/performers-landscape/baltimore-orioles-2f5844/25/huge.jpg",
                                  "colors": {
                                    "all": [
                                      "#191919",
                                      "#DF4601"
                                    ],
                                    "iconic": "#191919",
                                    "primary": [
                                      "#191919",
                                      "#DF4601"
                                    ]
                                  },
                                  "images": {
                                    "huge": "https://seatgeek.com/images/performers-landscape/baltimore-orioles-2f5844/25/huge.jpg"
                                  },
                                  "has_upcoming_events": true,
                                  "id": 25,
                                  "away_team": true,
                                  "stats": {
                                    "event_count": 115
                                  },
                                  "image_license": "https://creativecommons.org/licenses/by-sa/2.0/",
                                  "score": 0.71,
                                  "location": {
                                    "lat": 39.284,
                                    "lon": -76.6199
                                  },
                                  "taxonomies": [
                                    {
                                      "name": "sports",
                                      "parent_id": null,
                                      "id": 1000000,
                                      "document_source": {
                                        "source_type": "ELASTIC",
                                        "generation_type": "FULL"
                                      }
                                    },
                                    {
                                      "name": "baseball",
                                      "parent_id": 1000000,
                                      "id": 1010000,
                                      "document_source": {
                                        "source_type": "ELASTIC",
                                        "generation_type": "FULL"
                                      }
                                    },
                                    {
                                      "name": "mlb",
                                      "parent_id": 1010000,
                                      "id": 1010100,
                                      "document_source": {
                                        "source_type": "ELASTIC",
                                        "generation_type": "FULL"
                                      }
                                    }
                                  ],
                                  "type": "mlb",
                                  "num_upcoming_events": 115,
                                  "short_name": "Orioles",
                                  "home_venue_id": 25,
                                  "slug": "baltimore-orioles",
                                  "divisions": [
                                    {
                                      "display_name": "American League",
                                      "short_name": null,
                                      "division_level": 1,
                                      "display_type": "League",
                                      "taxonomy_id": 1010100,
                                      "slug": null
                                    },
                                    {
                                      "display_name": "American League East",
                                      "short_name": "AL East",
                                      "division_level": 2,
                                      "display_type": "Division",
                                      "taxonomy_id": 1010100,
                                      "slug": "american-league-east"
                                    }
                                  ],
                                  "name": "Baltimore Orioles",
                                  "url": "https://seatgeek.com/baltimore-orioles-tickets",
                                  "popularity": 0,
                                  "image_attribution": "https://www.flickr.com/photos/keithallison/17073853777/in/photolist-s1KXTg-sidpaj-oWwDK8-pjoSxH-s3eLg2-tdgD9s-fwrSpk-fwrNhi-tfBSoF-fwGcpL-f9AnJD-f9uv9F-eWhVb2-fPvFep-fBhDZQ-eWuyZh-pj5i3Z-fohmdU-oYjSwd-cFu4C7-e93Ezf-tiHoPD-cFtWUy-cFtS5h-pfPEnp-fyeoPs-fNydWC-smR84B-nTJfTB-f9uxoD-fBHk6k-onJP89-cFtKbY-t7xpUz-eKiTc3-eJraf7-fQqFQJ-eWmuva-s51Zsh-eAx4AP-t5qLC8-rotVms-fyVy8u-f9KtwC-t5tnyX-eK8S9B-eNMzHA-exbqrB-rLPF1g-cpcnHh"
                                }
                              ],
                              "url": "https://seatgeek.com/orioles-at-rangers-tickets/6-5-2019-arlington-texas-globe-life-park/mlb/4612962",
                              "created_at": "2018-10-31T16:15:49",
                              "popularity": 0.806,
                              "venue": {
                                "links": [],
                                "metro_code": 623,
                                "postal_code": "76011",
                                "timezone": "America/Chicago",
                                "has_upcoming_events": true,
                                "id": 16,
                                "city": "Arlington",
                                "extended_address": "Arlington, TX 76011",
                                "display_location": "Arlington, TX",
                                "state": "TX",
                                "score": 0.84144884,
                                "location": {
                                  "lat": 32.7506,
                                  "lon": -97.0824
                                },
                                "access_method": {
                                  "employee_only": false,
                                  "created_at": "2015-07-06T00:00:00Z",
                                  "method": "PDF417"
                                },
                                "num_upcoming_events": 62,
                                "address": "1000 Ballpark Way",
                                "capacity": 49115,
                                "slug": "globe-life-park",
                                "name": "Globe Life Park",
                                "url": "https://seatgeek.com/venues/globe-life-park/tickets",
                                "country": "US",
                                "popularity": 0,
                                "name_v2": "Globe Life Park"
                              },
                              "enddatetime_utc": null,
                              "short_title": "Orioles at Rangers",
                              "datetime_utc": "2019-06-06T00:05:00",
                              "datetime_tbd": false
                            },
                            {
                              "links": [],
                              "event_promotion": null,
                              "conditional": false,
                              "is_open": false,
                              "id": 4612961,
                              "stats": {
                                "visible_listing_count": 514,
                                "dq_bucket_counts": [
                                  59,
                                  142,
                                  114,
                                  44,
                                  33,
                                  71,
                                  103,
                                  0
                                ],
                                "average_price": 39,
                                "lowest_price_good_deals": 6,
                                "median_price": 34,
                                "listing_count": 565,
                                "lowest_price": 6,
                                "highest_price": 410
                              },
                              "title": "Baltimore Orioles at Texas Rangers",
                              "announce_date": "2018-10-31T00:00:00",
                              "score": 0.73,
                              "access_method": {
                                "employee_only": false,
                                "created_at": "2015-07-06T00:00:00Z",
                                "method": "PDF417"
                              },
                              "announcements": {},
                              "taxonomies": [
                                {
                                  "name": "sports",
                                  "parent_id": null,
                                  "id": 1000000
                                },
                                {
                                  "name": "baseball",
                                  "parent_id": 1000000,
                                  "id": 1010000
                                },
                                {
                                  "name": "mlb",
                                  "parent_id": 1010000,
                                  "id": 1010100
                                }
                              ],
                              "type": "mlb",
                              "status": "normal",
                              "description": "",
                              "datetime_local": "2019-06-06T19:05:00",
                              "visible_until_utc": "2019-06-07T04:05:00",
                              "time_tbd": false,
                              "date_tbd": false,
                              "performers": [
                                {
                                  "image": "https://seatgeek.com/images/performers-landscape/texas-rangers-0b3f80/16/huge.jpg",
                                  "primary": true,
                                  "colors": {
                                    "all": [
                                      "#0038A8",
                                      "#C0111F"
                                    ],
                                    "iconic": "#C0111F",
                                    "primary": [
                                      "#0038A8",
                                      "#C0111F"
                                    ]
                                  },
                                  "images": {
                                    "huge": "https://seatgeek.com/images/performers-landscape/texas-rangers-0b3f80/16/huge.jpg"
                                  },
                                  "has_upcoming_events": true,
                                  "id": 16,
                                  "stats": {
                                    "event_count": 121
                                  },
                                  "image_license": "https://creativecommons.org/licenses/by-sa/2.0/",
                                  "score": 0.73,
                                  "location": {
                                    "lat": 32.7506,
                                    "lon": -97.0824
                                  },
                                  "taxonomies": [
                                    {
                                      "name": "sports",
                                      "parent_id": null,
                                      "id": 1000000,
                                      "document_source": {
                                        "source_type": "ELASTIC",
                                        "generation_type": "FULL"
                                      }
                                    },
                                    {
                                      "name": "baseball",
                                      "parent_id": 1000000,
                                      "id": 1010000,
                                      "document_source": {
                                        "source_type": "ELASTIC",
                                        "generation_type": "FULL"
                                      }
                                    },
                                    {
                                      "name": "mlb",
                                      "parent_id": 1010000,
                                      "id": 1010100,
                                      "document_source": {
                                        "source_type": "ELASTIC",
                                        "generation_type": "FULL"
                                      }
                                    }
                                  ],
                                  "type": "mlb",
                                  "num_upcoming_events": 121,
                                  "short_name": "Rangers",
                                  "home_venue_id": 16,
                                  "slug": "texas-rangers",
                                  "divisions": [
                                    {
                                      "display_name": "American League",
                                      "short_name": null,
                                      "division_level": 1,
                                      "display_type": "League",
                                      "taxonomy_id": 1010100,
                                      "slug": null
                                    },
                                    {
                                      "display_name": "American League West",
                                      "short_name": "AL West",
                                      "division_level": 2,
                                      "display_type": "Division",
                                      "taxonomy_id": 1010100,
                                      "slug": "american-league-west"
                                    }
                                  ],
                                  "home_team": true,
                                  "name": "Texas Rangers",
                                  "url": "https://seatgeek.com/texas-rangers-tickets",
                                  "popularity": 0,
                                  "image_attribution": "https://www.flickr.com/photos/a4gpa/4591377118/in/photolist-HG1Ar-6G8DGT-6rWf5N-4anGGm-4aiDfH-4anHc1-7ZJ1ss-aqx6nD-aqx3EV-aqzEFA-6G8FCc-aqwYWz-aqzFwq-4anGc7-4aiFUF-4anFM7-aqx2ev-aqzGLy-aqx1Ln-aqzJn7-aqzNg1-6G8EXn-aqx2Xr-8QpUwa-aqx5SK-aqzKS7-aqx53z-aqx1vB-79NEXJ-79JPMZ-aqzHxo-aqx3oH-aqx4wp-aqzGrG-9wjMuE-6LfAWV-6LkckC-6Lnoe1-6LfZbF-6LkiqL-5c1QZw-5c1SmU-5bWBXF-5c1TqQ-5c1VPq-6Lihat-HG1AF-79JQBi-6LhPC6-79JQ8r"
                                },
                                {
                                  "image": "https://seatgeek.com/images/performers-landscape/baltimore-orioles-2f5844/25/huge.jpg",
                                  "colors": {
                                    "all": [
                                      "#191919",
                                      "#DF4601"
                                    ],
                                    "iconic": "#191919",
                                    "primary": [
                                      "#191919",
                                      "#DF4601"
                                    ]
                                  },
                                  "images": {
                                    "huge": "https://seatgeek.com/images/performers-landscape/baltimore-orioles-2f5844/25/huge.jpg"
                                  },
                                  "has_upcoming_events": true,
                                  "id": 25,
                                  "away_team": true,
                                  "stats": {
                                    "event_count": 119
                                  },
                                  "image_license": "https://creativecommons.org/licenses/by-sa/2.0/",
                                  "score": 0.71,
                                  "location": {
                                    "lat": 39.284,
                                    "lon": -76.6199
                                  },
                                  "taxonomies": [
                                    {
                                      "name": "sports",
                                      "parent_id": null,
                                      "id": 1000000,
                                      "document_source": {
                                        "source_type": "ELASTIC",
                                        "generation_type": "FULL"
                                      }
                                    },
                                    {
                                      "name": "baseball",
                                      "parent_id": 1000000,
                                      "id": 1010000,
                                      "document_source": {
                                        "source_type": "ELASTIC",
                                        "generation_type": "FULL"
                                      }
                                    },
                                    {
                                      "name": "mlb",
                                      "parent_id": 1010000,
                                      "id": 1010100,
                                      "document_source": {
                                        "source_type": "ELASTIC",
                                        "generation_type": "FULL"
                                      }
                                    }
                                  ],
                                  "type": "mlb",
                                  "num_upcoming_events": 119,
                                  "short_name": "Orioles",
                                  "home_venue_id": 25,
                                  "slug": "baltimore-orioles",
                                  "divisions": [
                                    {
                                      "display_name": "American League",
                                      "short_name": null,
                                      "division_level": 1,
                                      "display_type": "League",
                                      "taxonomy_id": 1010100,
                                      "slug": null
                                    },
                                    {
                                      "display_name": "American League East",
                                      "short_name": "AL East",
                                      "division_level": 2,
                                      "display_type": "Division",
                                      "taxonomy_id": 1010100,
                                      "slug": "american-league-east"
                                    }
                                  ],
                                  "name": "Baltimore Orioles",
                                  "url": "https://seatgeek.com/baltimore-orioles-tickets",
                                  "popularity": 0,
                                  "image_attribution": "https://www.flickr.com/photos/keithallison/17073853777/in/photolist-s1KXTg-sidpaj-oWwDK8-pjoSxH-s3eLg2-tdgD9s-fwrSpk-fwrNhi-tfBSoF-fwGcpL-f9AnJD-f9uv9F-eWhVb2-fPvFep-fBhDZQ-eWuyZh-pj5i3Z-fohmdU-oYjSwd-cFu4C7-e93Ezf-tiHoPD-cFtWUy-cFtS5h-pfPEnp-fyeoPs-fNydWC-smR84B-nTJfTB-f9uxoD-fBHk6k-onJP89-cFtKbY-t7xpUz-eKiTc3-eJraf7-fQqFQJ-eWmuva-s51Zsh-eAx4AP-t5qLC8-rotVms-fyVy8u-f9KtwC-t5tnyX-eK8S9B-eNMzHA-exbqrB-rLPF1g-cpcnHh"
                                }
                              ],
                              "url": "https://seatgeek.com/orioles-at-rangers-tickets/6-6-2019-arlington-texas-globe-life-park/mlb/4612961",
                              "created_at": "2018-10-31T16:15:49",
                              "popularity": 0.757,
                              "venue": {
                                "links": [],
                                "metro_code": 623,
                                "postal_code": "76011",
                                "timezone": "America/Chicago",
                                "has_upcoming_events": true,
                                "id": 16,
                                "city": "Arlington",
                                "extended_address": "Arlington, TX 76011",
                                "display_location": "Arlington, TX",
                                "state": "TX",
                                "score": 0.84144884,
                                "location": {
                                  "lat": 32.7506,
                                  "lon": -97.0824
                                },
                                "access_method": {
                                  "employee_only": false,
                                  "created_at": "2015-07-06T00:00:00Z",
                                  "method": "PDF417"
                                },
                                "num_upcoming_events": 66,
                                "address": "1000 Ballpark Way",
                                "capacity": 49115,
                                "slug": "globe-life-park",
                                "name": "Globe Life Park",
                                "url": "https://seatgeek.com/venues/globe-life-park/tickets",
                                "country": "US",
                                "popularity": 0,
                                "name_v2": "Globe Life Park"
                              },
                              "enddatetime_utc": null,
                              "short_title": "Orioles at Rangers",
                              "datetime_utc": "2019-06-07T00:05:00",
                              "datetime_tbd": false
                            },
                            {
                              "links": [],
                              "event_promotion": null,
                              "conditional": false,
                              "is_open": false,
                              "id": 4609360,
                              "stats": {
                                "visible_listing_count": 442,
                                "dq_bucket_counts": [
                                  54,
                                  158,
                                  107,
                                  51,
                                  60,
                                  57,
                                  86,
                                  0
                                ],
                                "average_price": 63,
                                "lowest_price_good_deals": 13,
                                "median_price": 56,
                                "listing_count": 573,
                                "lowest_price": 13,
                                "highest_price": 511
                              },
                              "title": "Oakland Athletics at Texas Rangers",
                              "announce_date": "2018-10-30T00:00:00",
                              "score": 0.756,
                              "access_method": {
                                "employee_only": false,
                                "created_at": "2015-07-06T00:00:00Z",
                                "method": "PDF417"
                              },
                              "announcements": {},
                              "taxonomies": [
                                {
                                  "name": "sports",
                                  "parent_id": null,
                                  "id": 1000000
                                },
                                {
                                  "name": "baseball",
                                  "parent_id": 1000000,
                                  "id": 1010000
                                },
                                {
                                  "name": "mlb",
                                  "parent_id": 1010000,
                                  "id": 1010100
                                }
                              ],
                              "type": "mlb",
                              "status": "normal",
                              "description": "",
                              "datetime_local": "2019-06-07T19:05:00",
                              "visible_until_utc": "2019-06-08T04:05:00",
                              "time_tbd": false,
                              "date_tbd": false,
                              "performers": [
                                {
                                  "image": "https://seatgeek.com/images/performers-landscape/oakland-athletics-51b2a0/14/huge.jpg",
                                  "colors": {
                                    "all": [
                                      "#003831",
                                      "#EFB21E"
                                    ],
                                    "iconic": "#003831",
                                    "primary": [
                                      "#003831",
                                      "#EFB21E"
                                    ]
                                  },
                                  "images": {
                                    "huge": "https://seatgeek.com/images/performers-landscape/oakland-athletics-51b2a0/14/huge.jpg"
                                  },
                                  "has_upcoming_events": true,
                                  "id": 14,
                                  "away_team": true,
                                  "stats": {
                                    "event_count": 117
                                  },
                                  "image_license": "https://creativecommons.org/licenses/by-sa/2.0/",
                                  "score": 0.68,
                                  "location": {
                                    "lat": 37.7469,
                                    "lon": -122.201
                                  },
                                  "taxonomies": [
                                    {
                                      "name": "sports",
                                      "parent_id": null,
                                      "id": 1000000,
                                      "document_source": {
                                        "source_type": "ELASTIC",
                                        "generation_type": "FULL"
                                      }
                                    },
                                    {
                                      "name": "baseball",
                                      "parent_id": 1000000,
                                      "id": 1010000,
                                      "document_source": {
                                        "source_type": "ELASTIC",
                                        "generation_type": "FULL"
                                      }
                                    },
                                    {
                                      "name": "mlb",
                                      "parent_id": 1010000,
                                      "id": 1010100,
                                      "document_source": {
                                        "source_type": "ELASTIC",
                                        "generation_type": "FULL"
                                      }
                                    }
                                  ],
                                  "type": "mlb",
                                  "num_upcoming_events": 117,
                                  "short_name": "Athletics",
                                  "home_venue_id": 14,
                                  "slug": "oakland-athletics",
                                  "divisions": [
                                    {
                                      "display_name": "American League",
                                      "short_name": null,
                                      "division_level": 1,
                                      "display_type": "League",
                                      "taxonomy_id": 1010100,
                                      "slug": null
                                    },
                                    {
                                      "display_name": "American League West",
                                      "short_name": "AL West",
                                      "division_level": 2,
                                      "display_type": "Division",
                                      "taxonomy_id": 1010100,
                                      "slug": "american-league-west"
                                    }
                                  ],
                                  "name": "Oakland Athletics",
                                  "url": "https://seatgeek.com/oakland-athletics-tickets",
                                  "popularity": 0,
                                  "image_attribution": "https://www.flickr.com/photos/redlegsfan21/15993646150/in/photolist-qniBMQ-qDRDND-ht5kQZ-ht6331-ht62ph-ht5WiA-ht6Ftx-ht5gx1-5aUypU-ddtWXp-5aUxv1-qb37Sp-nuE1aX-nLRmsz-nLRmw2-nK6Xyf-nNVWV4-nM6Hv1-66zEjk-ht61ky-ht5Ydh-ht5k7V-nuDEMi-efvrRn-4Tvdo6-dohGjL-dohwER-dohAq8-dohLb3-dohASD-dohJys-dohBHP-dohzXt-dohFXq-dohwN8-dohAvK-dohxFc-dohLv9-dohzLX-dohzGX-dohHrG-dohJ59-dohz5z-dohJtU-dohFnh-dohF3W-dohwRB-dohGsy-dohwY2-dohBuZ"
                                },
                                {
                                  "image": "https://seatgeek.com/images/performers-landscape/texas-rangers-0b3f80/16/huge.jpg",
                                  "primary": true,
                                  "colors": {
                                    "all": [
                                      "#0038A8",
                                      "#C0111F"
                                    ],
                                    "iconic": "#C0111F",
                                    "primary": [
                                      "#0038A8",
                                      "#C0111F"
                                    ]
                                  },
                                  "images": {
                                    "huge": "https://seatgeek.com/images/performers-landscape/texas-rangers-0b3f80/16/huge.jpg"
                                  },
                                  "has_upcoming_events": true,
                                  "id": 16,
                                  "stats": {
                                    "event_count": 121
                                  },
                                  "image_license": "https://creativecommons.org/licenses/by-sa/2.0/",
                                  "score": 0.73,
                                  "location": {
                                    "lat": 32.7506,
                                    "lon": -97.0824
                                  },
                                  "taxonomies": [
                                    {
                                      "name": "sports",
                                      "parent_id": null,
                                      "id": 1000000,
                                      "document_source": {
                                        "source_type": "ELASTIC",
                                        "generation_type": "FULL"
                                      }
                                    },
                                    {
                                      "name": "baseball",
                                      "parent_id": 1000000,
                                      "id": 1010000,
                                      "document_source": {
                                        "source_type": "ELASTIC",
                                        "generation_type": "FULL"
                                      }
                                    },
                                    {
                                      "name": "mlb",
                                      "parent_id": 1010000,
                                      "id": 1010100,
                                      "document_source": {
                                        "source_type": "ELASTIC",
                                        "generation_type": "FULL"
                                      }
                                    }
                                  ],
                                  "type": "mlb",
                                  "num_upcoming_events": 121,
                                  "short_name": "Rangers",
                                  "home_venue_id": 16,
                                  "slug": "texas-rangers",
                                  "divisions": [
                                    {
                                      "display_name": "American League",
                                      "short_name": null,
                                      "division_level": 1,
                                      "display_type": "League",
                                      "taxonomy_id": 1010100,
                                      "slug": null
                                    },
                                    {
                                      "display_name": "American League West",
                                      "short_name": "AL West",
                                      "division_level": 2,
                                      "display_type": "Division",
                                      "taxonomy_id": 1010100,
                                      "slug": "american-league-west"
                                    }
                                  ],
                                  "home_team": true,
                                  "name": "Texas Rangers",
                                  "url": "https://seatgeek.com/texas-rangers-tickets",
                                  "popularity": 0,
                                  "image_attribution": "https://www.flickr.com/photos/a4gpa/4591377118/in/photolist-HG1Ar-6G8DGT-6rWf5N-4anGGm-4aiDfH-4anHc1-7ZJ1ss-aqx6nD-aqx3EV-aqzEFA-6G8FCc-aqwYWz-aqzFwq-4anGc7-4aiFUF-4anFM7-aqx2ev-aqzGLy-aqx1Ln-aqzJn7-aqzNg1-6G8EXn-aqx2Xr-8QpUwa-aqx5SK-aqzKS7-aqx53z-aqx1vB-79NEXJ-79JPMZ-aqzHxo-aqx3oH-aqx4wp-aqzGrG-9wjMuE-6LfAWV-6LkckC-6Lnoe1-6LfZbF-6LkiqL-5c1QZw-5c1SmU-5bWBXF-5c1TqQ-5c1VPq-6Lihat-HG1AF-79JQBi-6LhPC6-79JQ8r"
                                }
                              ],
                              "url": "https://seatgeek.com/athletics-at-rangers-tickets/6-7-2019-arlington-texas-globe-life-park/mlb/4609360",
                              "created_at": "2018-10-30T16:14:29",
                              "popularity": 0.776,
                              "venue": {
                                "links": [],
                                "metro_code": 623,
                                "postal_code": "76011",
                                "timezone": "America/Chicago",
                                "has_upcoming_events": true,
                                "id": 16,
                                "city": "Arlington",
                                "extended_address": "Arlington, TX 76011",
                                "display_location": "Arlington, TX",
                                "state": "TX",
                                "score": 0.84144884,
                                "location": {
                                  "lat": 32.7506,
                                  "lon": -97.0824
                                },
                                "access_method": {
                                  "employee_only": false,
                                  "created_at": "2015-07-06T00:00:00Z",
                                  "method": "PDF417"
                                },
                                "num_upcoming_events": 66,
                                "address": "1000 Ballpark Way",
                                "capacity": 49115,
                                "slug": "globe-life-park",
                                "name": "Globe Life Park",
                                "url": "https://seatgeek.com/venues/globe-life-park/tickets",
                                "country": "US",
                                "popularity": 0,
                                "name_v2": "Globe Life Park"
                              },
                              "enddatetime_utc": null,
                              "short_title": "Athletics at Rangers",
                              "datetime_utc": "2019-06-08T00:05:00",
                              "datetime_tbd": false
                            }
                          ]
                        }
                    """
                    .data(using: String.Encoding.utf8)!
}
