# Intro

This documentation covers the three brive projects Admin, Server and Client, and its own basic setup and deployment methodologies.

Select a project from the sidebar of search for a specific feature.

## Install

Clone the git repo:

```bash 
git clone https://gitlab.com/sotig/studyplan.git
```

The master branch is not the latest. Make sure to checkout the branch you need.

```bash 
git checkout desired_branch
```

For these project you will need Node js with npm and python3 with pip3

- [Install node][nodelink]
[nodelink]:  https://nodejs.org/en/download/

If you run ubuntu all you have to do is install python-pip

```bash
sudo apt install pytho3-pip
```

## Setup

Cd into the project directory

```bash
cd studyplan
```

### Client

```bash
cd client
npm i
```

### Server

```bash
cd server
npm i
```

### Admin

```bash
cd admin
pip3 install -r requirements.txt
```

## Run

### Client

```bash
cd client
npm run dev
```

### Server

```bash
cd server
npm run dev
```

### Admin

```bash
cd admin
python3 manage.py runserver
```

## Build

All three projects can be deployed with `docker-compose`
`docker-compose` configuration can be found in the `docker-compose.yml` file located in the root directory of the project.

To build and run the project using docker-compose run:

```bash
docker-compose up
# or detached
docker-compose up -d
```

To build or rebuild the images run:

```bash
docker-compose build
```