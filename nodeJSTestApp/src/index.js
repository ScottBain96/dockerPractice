const app = require('express')();

app.get('/', (req, res) => {
    res.json({
        message: "my docker endpoint",
        endpoints: "/user"
    });
});


const port = process.env.PORT || 8080;

const messageTest = process.env.messageTest || "message not defined";

app.listen(port, () => console.log(`app listening on http://localhost:${port}`) );

const user = { Name: 'Scott',
    Surname: "Bain",
    City: "Edinburgh"
 }
    

app.get('/user', (req, res) => {
res.send(user);

});


console.log(messageTest);
