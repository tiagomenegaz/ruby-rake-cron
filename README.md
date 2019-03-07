# RRC Ruby Rake Cron

This Docker image is a plain ruby image with an additional configuration to run Rake tasks.

You can build this image using

```
docker build -t rrc-0.0.1  .
```

And run it using

```
docker container run --rm -a stdin -a stdout -it rrc-0.0.1
```

When your container is up and running your rake taks will be called according to `config/schedule.rb`. You can also bash into the container to see what is happening. For example, this task `example:second:write_file` writes in a file every time it is called. You can cat the result file to see the result. Right now, I haven't implemented a good log message configuration. I hope to do it soon.

Please feel free to fork it or submitting an issue.
