# Minesweeper Solver
> This project has as main objective to build an app that solves a board similar to the minesweeper game.<br />
The app takes an API and retrieves a random board, which is a two dimensional Array.
The application should replace all the white spaces with an integer representing the number of bombs near the element.<br />
Once the board is solved, the app will proceed to return an API with two properties, the problem, and the solution.

## :earth_americas: Live Demo

You can try it [here](https://rossielcs-minesweeper-solver.herokuapp.com).

## :hammer:  Built With
- Ruby 2.7.0,
- Rails 5.2.0,
- Rest-client 2.1,
- Rspec-rails 3.4,
- Rubocop 0.81.0,
- Visual Studio Code 1.50.1,
- [Docker](https://www.docker.com/)

## :computer: Getting Started

To get a local copy up and running follow these simple example steps.

### Prerequisites
You need to install:
- A Git GUI.
- [Docker](https://www.docker.com/get-started).
- [Docker Compose](https://docs.docker.com/compose/install/).
- An IDE (Integrated Development Environment).

### Usage
To run the project:

1. Clone the repository with Git.
2. Open the repository with your IDE and open the terminal.
3. Build a new docker image.<br />
   $ `docker-compose build`
4. To run the image.<br />
   $ `docker-compose up`
5. Open [http://localhost:3000](http://localhost:3000) to view it in the browser.<br />

### Run tests
Unit tests for:   
- Solver module. 
- Requests.    

  In your terminal search the repository's address and run:<br />
   $ `docker-compose run --rm web rspec --format documentation`   
  It will provide you well-organized output on your terminal with information about the tests.

### Deployment
To deploy on Heroku you can check [this tutorial](https://www.theodinproject.com/courses/ruby-on-rails/lessons/preparing-for-deployment) from the Odin Project.

After pushing the last changes to the remote repository, follow this steps:
1. Create the heroku app.<br />
   $ `heroku create`
2. Verify that you see heroku in the output.<br />
   $ `git remote`
4. This will push the master branch.<br /> 
   $ `git push heroku master`
5. Open the app<br />
   $ `heroku open`
   
## :gem:  Features
* Built using docker, which means it is not necessary to install any other software to run the app.  

## :woman:  Author

**Rossiel Carranza**

- Github: [@RossielCS](https://github.com/RossielCS)
- Linkedin: [Rossiel Carranza](https://www.linkedin.com/in/rossiel-carranza/)

## 🤝 Contributing

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](issues/).

## Show your support

Give an ⭐️ if you like this project!

## 📝  License

This project is [MIT](lic.url) licensed.
