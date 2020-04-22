# RAD MongoDB
A starting point for containerized MongoDB instances.  This is intended to be used for development purposes only.  Consider using a managed MongoDB solution for production scenarios.  Based on RAD Container:  https://github.com/aarongeiser/rad-container

# Getting Started
To get started using this MongoDB container, you must have the latest version of Docker installed on your system.  If you are using an older version of Docker, please uninstall it and use the appropriate installer from the docker website.

https://docs.docker.com/engine/installation/

Once Docker is installed on your machine, follow the steps below to begin using your instance.

1.  Navigate to your project root directory and copy the contents of this repository to that location.
2.  Create a copy of `make_env.dist` and rename it to `make_env`.  Update with your project specific information.
3.  `make build`
4.  `make start` (give Mongo a couple seconds to start up)
4.  `make init`

# Success
1.  Consider downloading and using Robo 3T as a database administration GUI.  It's free!  https://robomongo.org/download
2.  You will be able to successfully connect to your database on port `27017` using the admin login credentials you provided in your `make_env` file.
3.  Data is volume mapped to the `/data` folder in the project.  This will allow you to rebuild your contianer without loosing your data.  The contents of this folder should never be commited back to your project repository.

# Further Reading
Manual for MongoDB configuration:  https://docs.mongodb.com/manual/reference/configuration-options/

# Commands for Local Development
The following commands are intended to make working with Docker faster and easier on your local machine.

- `build` Builds your container from the instructions in your Dockerfile.
- `push` Pushes your container image to the Docker Hub repository specified in your make_env file.
- `bash` Logs into a running container via SSH.
- `shell` Starts your container and automatically logs into it via SSH.
- `run`  Runs the container with stdout.
- `start` Runs the container in daemon mode - it will run in the background and you can attach to it at any time.
- `restart` Starts a stopped container.
- `stop` Stops the running container.
- `rm` Removes your container.
- `release` Builds your container image and then pushes it to the Docker Hub repository specified in your make_env file.
- `init` An initialization command intended for seeding an application.  Blank by default.