/* 15 minutos en Milisegundos */
const MIN_15 = 900000

/* Wake Up Heroku Server */
setInterval(() => {
    fetch('https://yourproyectname.herokuapp.com/')
        .then( response => {
            return response.text()
        })
        .then( () =>{
            let date = new Date(Date.now()).toLocaleString()
            console.log(`Wake Up [Server] ${date}`)
        })
}, MIN_15)
