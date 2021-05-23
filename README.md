Peter Bui(s3786794)

Level: PI

Heroku URL: https://hidden-refuge-64928.herokuapp.com/

Heroku Log:

2021-05-23T02:27:44.546701+00:00 app[web.1]: D, [2021-05-23T02:27:44.546619 #4] DEBUG -- : [fc0df989-a8eb-4335-9e18-15c92015028b]   [1m[35mCACHE  (0.1ms)[0m  [1m[34mSELECT "images"."price" FROM "images" WHERE "images"."url_name" = $1[0m  [["url_name", "men_images/zahir-namane-TjUJJACTav4-unsplash.jpg"]]
2021-05-23T02:27:44.548128+00:00 app[web.1]: I, [2021-05-23T02:27:44.548048 #4]  INFO -- : [fc0df989-a8eb-4335-9e18-15c92015028b]   Rendered static_pages/home.html.erb within layouts/application (57.4ms)
2021-05-23T02:27:44.550389+00:00 app[web.1]: I, [2021-05-23T02:27:44.550307 #4]  INFO -- : [fc0df989-a8eb-4335-9e18-15c92015028b]   Rendered layouts/_header.html.erb (0.5ms)
2021-05-23T02:27:44.551183+00:00 app[web.1]: I, [2021-05-23T02:27:44.551094 #4]  INFO -- : [fc0df989-a8eb-4335-9e18-15c92015028b]   Rendered layouts/_footer.html.erb (0.2ms)
2021-05-23T02:27:44.551526+00:00 app[web.1]: I, [2021-05-23T02:27:44.551423 #4]  INFO -- : [fc0df989-a8eb-4335-9e18-15c92015028b] Completed 200 OK in 131ms (Views: 35.2ms | ActiveRecord: 46.3ms)
2021-05-23T02:27:44.552011+00:00 app[web.1]: /app/vendor/bundle/ruby/2.7.0/gems/actionpack-5.2.6/lib/action_dispatch/middleware/cookies.rb:647: warning: Using the last argument as keyword parameters is deprecated; maybe ** should be added to the call
2021-05-23T02:27:44.552015+00:00 app[web.1]: /app/vendor/bundle/ruby/2.7.0/gems/activesupport-5.2.6/lib/active_support/message_encryptor.rb:150: warning: The called method `encrypt_and_sign' is defined here
2021-05-23T02:27:44.552119+00:00 app[web.1]: /app/vendor/bundle/ruby/2.7.0/gems/activesupport-5.2.6/lib/active_support/message_encryptor.rb:175: warning: Using the last argument as keyword parameters is deprecated; maybe ** should be added to the call
2021-05-23T02:27:44.552120+00:00 app[web.1]: /app/vendor/bundle/ruby/2.7.0/gems/activesupport-5.2.6/lib/active_support/messages/metadata.rb:17: warning: The called method `wrap' is defined here
2021-05-23T02:27:44.553545+00:00 heroku[router]: at=info method=GET path="/" host=hidden-refuge-64928.herokuapp.com request_id=fc0df989-a8eb-4335-9e18-15c92015028b fwd="101.186.50.39" dyno=web.1 connect=1ms service=137ms status=200 bytes=20051 protocol=https

Time Log:

User,Email,Client,Project,Task,Description,Billable,Start date,Start time,End date,End time,Duration,Tags,Amount ()
Implement hello into app as placeholder,No,2021-04-01,16:52:12,2021-04-01,16:56:10,00:03:58,Misc Additions,
Database planning,No,2021-04-20,13:40:15,2021-04-20,13:45:28,00:05:13,,
Basic deployment to heroku - Failed,No,2021-04-20,18:06:40,2021-04-20,18:34:32,00:27:52,,
Heroku test basic deployment - Success,No,2021-04-21,21:43:35,2021-04-21,21:47:17,00:03:42,,
Heroku test application and other functions,No,2021-04-21,21:50:08,2021-04-21,22:19:59,00:29:51,,
Heroku try to open application without error - Success,No,2021-04-22,19:54:58,2021-04-22,20:02:03,00:07:05,,
Adding some pass criteria items,No,2021-04-23,12:18:24,2021-04-23,12:52:14,00:33:50,,
Adding more pass criteria items - Dropdown menu does not work,No,2021-05-06,18:09:14,2021-05-06,20:10:13,02:00:59,,
"Basic buttons for search and cart to basic pages, reworking on dropdown menu",No,2021-05-07,11:07:10,2021-05-07,11:15:56,00:08:46,,
Adding top banner in basic items,No,2021-05-07,22:12:00,2021-05-08,00:02:00,01:50:00,,
Reworking banner and adding additional features,No,2021-05-08,12:17:24,2021-05-08,12:36:30,00:19:06,,
Model making for images,No,2021-05-08,12:59:13,2021-05-08,13:16:09,00:16:56,,
Model making for images,No,2021-05-08,15:53:04,2021-05-08,16:34:23,00:41:19,,
Reworking model into banners,No,2021-05-08,17:12:22,2021-05-08,17:27:32,00:15:10,,
"Implementing saved list functionality, alongsides thinking about it",No,2021-05-08,17:32:13,2021-05-08,20:34:44,03:02:31,,
"Reworking minor changes, thinking of redoing collection banner to better suit model and button changes",No,2021-05-08,21:07:00,2021-05-09,01:54:00,04:47:00,,
Reworking banner and adding additional features,No,2021-05-08,22:15:40,2021-05-09,00:15:40,02:00:00,, 
Reworking collection banner,No,2021-05-09,17:49:36,2021-05-09,19:20:36,01:31:00,,
Reworking collection banner,No,2021-05-09,22:32:00,2021-05-10,00:03:37,01:31:37,,
Changing internal connections for saved list,No,2021-05-15,11:29:38,2021-05-15,12:45:58,01:16:20,,
Reworking carousel into slideshow,No,2021-05-15,12:46:08,2021-05-15,14:07:25,01:21:17,,
Reworking carousel into slideshow,No,2021-05-15,14:25:27,2021-05-15,14:49:43,00:24:16,,
Reworking carousel into slideshow,No,2021-05-15,14:55:20,2021-05-15,15:28:37,00:33:17,,
Reworking carousel into slideshow,No,2021-05-15,15:58:52,2021-05-15,17:05:21,01:06:29,,
Collections in the third banner of the home screen,No,2021-05-15,17:08:12,2021-05-15,18:07:50,00:59:38,,
Individual Collection Pages,No,2021-05-15,18:07:51,2021-05-15,19:05:41,00:57:50,,
Individual Collection Pages,No,2021-05-15,19:28:35,2021-05-15,19:46:53,00:18:18,,
Individual Collection Pages,No,2021-05-15,19:50:15,2021-05-15,20:39:32,00:49:17,,
Reworking saved list page internal,No,2021-05-15,22:41:11,2021-05-15,23:39:52,00:58:41,,
Adding active save feature to saved list,No,2021-05-15,23:07:44,2021-05-16,00:13:44,01:06:00,,
Newsletter implementation,No,2021-05-15,23:46:02,2021-05-16,00:18:32,00:32:30,,
Heroku model debugging,No,2021-05-16,22:15:00,2021-05-16,22:54:00,00:39:00,,
Adding minor features from specifications,No,2021-05-17,11:15:00,2021-05-17,11:44:17,00:29:17,,
Reworking model to include new arrivals time instead as a boolean,No,2021-05-17,11:44:33,2021-05-17,12:30:29,00:45:56,,
Dropdown menu debugging,No,2021-05-17,15:10:43,2021-05-17,15:52:43,00:42:00,,
Newsletter implementation,No,2021-05-17,22:50:11,2021-05-18,00:52:23,02:02:12,,
Writing tests,No,2021-05-18,11:02:48,2021-05-18,14:24:48,03:22:00,,
Writing tests,No,2021-05-18,16:34:08,2021-05-18,17:07:08,00:33:00,,
Configuring Sendgrid in Heroku,No,2021-05-18,17:28:18,2021-05-18,17:37:40,00:09:22,,
Sendgrid debugging,No,2021-05-19,18:58:40,2021-05-19,19:19:40,00:21:00,,
Citations,No,2021-05-19,21:00:14,2021-05-19,21:31:14,00:31:00,,
Commenting,No,2021-05-19,22:16:44,2021-05-19,22:38:48,00:22:04,,
Pages debugging,No,2021-05-19,23:51:39,2021-05-20,00:40:08,00:48:29,,
Sendgrid debugging,No,2021-05-23,11:58:33,2021-05-23,12:27:30,00:28:57,,

Git Repo: https://github.com/s3786794/RAD2021_s3786794
