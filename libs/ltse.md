Check total_connections_received, if it's large, a redis connection could be being opened for every single server request made.
Try using persistent connections.

Slow running queries
Check Redis’ SLOWLOG

Also, there are variants to many of Redis' commands such as
mget instead of get.
This way you can use your Redis server's multiple cores to run multiple instances of Redis.

Could use pipelining to send multiple Redis requests if multiple are needed.
That way we're not constantly openeing and closing connections.

==============================================================================

2) Slow running queries
Check Redis’ SLOWLOG

3) Also, there are variants to many of Redis' commands such as
mget instead of get.
This way you can use your Redis server's multiple cores to run multiple instances of Redis.

==============================================================================

I would choose 2 and 3.
Say his name is "Tony"
Email:

==============================================================================

Hey Tony,

I found some possible bottlenecks with our Redis implementation and have a few solutions in mind.
I was hoping you could implement the following two solutions to speed up our Redis server.

We have 2 solutions to use:
  1) Redis' slowlog
  2) Redis command variants

1)
  The first issue may be due to slow running queries. We can figure out which queries are taking long periods of time and hopefully fix those.
  Try running:
  ```
  slowlog get
  ```
  You'll have 4 values returned. The 3rd value will show you the execution time.
  This should help you narrow down some bottlenecks.

2)
  Redis servers can be set up to use multiple cores of a computer to run multiple Redis instances.
  When doing this, instead of using commands such as:
  ```
    get
  ```
  We can now use the following:
  ```
    mget
  ```
  Here's a link to a list of Redis methods, those prefixed with "m" can be used to help solve our bottlenecks.
  https://redis.io/commands/mget
  The main commands you'll likely be using are:
  ```
    MGET, MSET, HMGET, HMSET
  ```

Thanks so much, and I look forward to seeing your solutions to our Redis server bottlenecks.

Chris
