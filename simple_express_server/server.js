const express = require('express');
const app = express();
const port = 3000;

app.get('/', (req, res) => {
    res.send('Welcome to the workshop server')
})

app.get('/games', (req, res) => {
    if (req.query.name.length > 2) {
        console.log(req.query.name);
        let games_json = {
            "games": [
              {
                "name": "Zanzibar",
                "desc": " Découvrez le Zanzibar, l’un des plus vieux jeux de dés. A l’origine du 421, le Zanzibar est un jeu très simple et rapide à jouer. Le but étant d’obtenir le plus grand score en réalisant des Zanzis, c’est-à-dire 3 valeurs de dés identiques.",
                "img_src": "https://www.regles-de-jeux.com/wp-content/uploads/2014/04/jeux-d%C3%A9s-1024x768.jpg"
              },
              {
                "name": "421",
                "desc": "Le 421 est un jeu de dés très populaire en France. En effet, ses règles simples et sa convivialité en font un des classiques des jeux de bar. Mêlant rapidité et stratégie ce jeu de dés plaira à tous.",
                "img_src": "https://www.regles-de-jeux.com/wp-content/uploads/2014/04/jeux-d%C3%A9s-1024x768.jpg"
              },
              {
                "name": "Trente-six",
                "desc": "Retrouvez le trente-six, et jouer à ce jeu populaire.",
                "img_src": "https://www.regles-de-jeux.com/wp-content/uploads/2013/03/r%C3%A8gle-5000-1024x768.jpg"
              },
              {
                "name": "Yams",
                "desc": "Pour tout savoir sur les règles du jeu du Yams appelé également le Yahtzee, c’est par ici ! Ce jeu de dés très populaire vous fera passer un bon moment. Découvrez les règles simples du Yams.",
                "img_src": "https://www.regles-de-jeux.com/wp-content/uploads/2013/02/r%C3%A8gle-yams-1024x740.jpg"
              },
              {
                "name": "5000",
                "desc": "Découvrez en détails la règle du jeu du 5000. Ce jeu de dés se joue avec 6 dés et un nombre de joueurs allant de 2 à 5. Le but du jeu étant de totaliser le premier 5000 points.",
                "img_src": "https://www.regles-de-jeux.com/wp-content/uploads/2013/03/r%C3%A8gle-5000-1024x768.jpg"
              },
              {
                "name": "TEST",
                "desc": "Test game. En effet, ses règles simples et sa convivialité en font un des classiques des jeux de bar. Mêlant rapidité et stratégie ce jeu de dés plaira à tous.",
                "img_src": "https://www.regles-de-jeux.com/wp-content/uploads/2014/04/jeux-d%C3%A9s-1024x768.jpg"
              },
              {
                "name": "TEST2",
                "desc": "Test2 game. En effet, ses règles simples et sa convivialité en font un des classiques des jeux de bar. Mêlant rapidité et stratégie ce jeu de dés plaira à tous.",
                "img_src": "https://www.regles-de-jeux.com/wp-content/uploads/2014/04/jeux-d%C3%A9s-1024x768.jpg"
              }
            ]
          }        
        res.send(games_json);
    }
    else res.send("Oops i don''t find you're name");
})

app.listen(port, () => {
    console.log(`App listening on port ${port}`);
})