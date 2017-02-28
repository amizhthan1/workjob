First import DB in your system then connect DB

Database Connection is .env file , my current Connection :

DB_CONNECTION=mysql
DB_HOST=127.0.0.1
DB_PORT=3306
DB_DATABASE=workjob
DB_USERNAME=root
DB_PASSWORD=''


create post: http://localhost/workjob/public/posts/create

if you want to add more then tags use comma separator like tag1,tag2.


Delete post: http://localhost/workjob/public/post/delete

All list of posts, then click delete button data will be deleted on related datas. 

Show Posts:   http://localhost/workjob/public/posts/10

Edit: http://localhost/workjob/public/posts/10/edit

select all the posts and   count posts:    http://localhost/workjob/public/tags/5

	Here display all posts by tags and count posts by tag.
	
	For example: 
	
	{"status":200,"post_count":4,	
	
	"response":[{"id":5,"name":"dfgdf","created_at":"2017-02-26 07:36:09","updated_at":"2017-02-26 07:36:09","posts":[{"id":13,"title":"dfgdf","body":"fdgdfg","created_at":"2017-02-26 07:43:55","updated_at":"2017-02-26 07:43:55","pivot":{"tag_id":5,"post_id":13}},{"id":14,"title":"dfgdf","body":"fdgdfg","created_at":"2017-02-26 07:43:56","updated_at":"2017-02-26 07:43:56","pivot":{"tag_id":5,"post_id":14}},{"id":15,"title":"dfgdf","body":"fdgdfg","created_at":"2017-02-26 07:43:57","updated_at":"2017-02-26 07:43:57","pivot":{"tag_id":5,"post_id":15}},{"id":16,"title":"dfgdf","body":"fdgdfg","created_at":"2017-02-26 07:44:01","updated_at":"2017-02-26 07:44:01","pivot":{"tag_id":5,"post_id":16}}]}]}

"post_count":4


1.  After any post created the system send email. but localsystem can't able to send mail so when create new post the system should log information. (path: storage/logs/laravel.txt).

2. Any post has been removed, post title stored in log file  (path: storage/logs/laravel.txt).
